LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_025/mis_025_b20.domino
-- User graph: MIS_025_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/GroupSizeTest.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3946169835.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3553784727.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2705084996.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3682647496.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2422427423.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3895954798.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4047574385.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2957751061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1038473760.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1317995542.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2460749638.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/63058540764425256.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[4073227805.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2471085831.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1967728495.bnk]], "CSoundResource");
        cboxRes:LoadResource([[416080671.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3551202739.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1960441012.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2078697915.bnk]], "CSoundResource");
        cboxRes:LoadResource([[216323739.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3787394943.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015345236642318.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[4172368731.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2842817871.bnk]], "CSoundResource");
        cboxRes:LoadResource([[275390664.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1269429788.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1903774645.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2255243911.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2715048805.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1305073682.bnk]], "CSoundResource");
        cboxRes:LoadResource([[90416552.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4194250280.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2054090243.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1679717459.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015344725208974.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[4099931371.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B20.MIS_025_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive",
                delayed = false,
            },
            [1] = {
                name = "DeadOrDown",
                delayed = false,
            },
            [2] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
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
    metadataTable[GetPathID("Domino/System/Player/PersistentParticlesModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartParticles",
            },
            [1] = {
                name = "StopParticles",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnStartParticles",
                delayed = false,
            },
            [1] = {
                name = "OnStopParticles",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "fadeDuration",
                type = "float",
            },
            [1] = {
                name = "particleSystem",
                type = "particle",
            },
            [2] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_025_B20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20";
    self.Player = nil;
    self.hostages_rescued = true;
    self.combat_started = false;
    self.highwaymen_left = 2;
    self.npc_diag = nil;
    self.box_PersistentParticlesModifier_128 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|4371626");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_128_OnStopParticles,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|7493910");
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
        [0] = self.f_box_MultipleOR_108_Out,
    });
    self.box_HealthListener_v6_43 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|25926719");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_43_Killed,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|50037990");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_ProximityRadiusListener_v3_39 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|66902160");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_39_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_39_SomeoneNear,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|77227382");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_MultipleOR_167 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|92137223");
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
        [0] = self.f_box_MultipleOR_167_Out,
    });
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|105729422");
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
    self.box_SoundModifier_v2_9 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|108836408");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_204 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|110582125");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_204_Killed,
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|115241836");
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
        [0] = self.f_box_MultipleOR_99_Out,
    });
    self.box_Switch_102 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|125684230");
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
                [0] = self.f_box_Switch_102_Output_0,
                [1] = self.f_box_Switch_102_Output_1,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|141601283");
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
    self.box_PlayDialog_v6_178 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|194618234");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_178_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_178_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_178_StartedPriorityFailed,
    });
    self.box_PlayDialog_v6_151 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|200745199");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_151_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_151_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_151_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_151_Stopped,
    });
    self.box_Brick_Hostage_Setup_v2_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|216641585");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_53_HostageReleased,
    });
    self.box_PlayDialog_v6_117 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|217390445");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_84 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|223762666");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_84_QueueCancelled,
    });
    self.box_GroupSizeListener_v6_107 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|251119880");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_107_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_107_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_107_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_107_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_107_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_107_MemberSpawned,
    });
    self.box_PlayDialog_v6_138 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|255122020");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_150 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|266728867");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_150_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_150_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_150_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_150_Stopped,
    });
    self.box_PlayDialog_v6_152 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|277479168");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_152_QueueCancelled,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|290893199");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_Gate_v3_60 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|295619500");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_60_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_60_Out,
    });
    self.box_MultipleOR_165 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|380543402");
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
        [0] = self.f_box_MultipleOR_165_Out,
    });
    self.box_EntityStatusListener_191 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|385981819");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_191_Loaded,
    });
    self.box_LookAtTrigger_v2_73 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|395573824");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_73_EnterFOV,
    });
    self.box_OnceOnly_v3_159 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|423086926");
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
                [0] = self.f_box_OnceOnly_v3_159_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_168 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|440969762");
    l0:SetConnections({
    });
    self.box_Delay_v5_70 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|444566888");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_70_TimeElapsed,
    });
    self.box_MultipleOR_154 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|445923147");
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
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|456109991");
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
    self.box_SpawnAI_34 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|457183790");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_34_Out,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|461244678");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_40_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_PlayDialog_v6_51 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|478817454");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_51_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_51_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_51_StartedPriorityFailed,
    });
    self.box_MultipleOR_160 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|493273755");
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
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|545701224");
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|546510769");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_26_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_26_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_26_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_26_Stopped,
    });
    self.box_SpawnAI_35 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|557170958");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_35_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_35_Spawned,
    });
    self.box_PersistentParticlesModifier_129 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|573598690");
    l0:SetConnections({
        -- OnStartParticles,
        [0] = self.f_box_PersistentParticlesModifier_129_OnStartParticles,
    });
    self.box_PlayDialog_v6_27 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|595417179");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_27_QueueCancelled,
    });
    self.box_StateListener_v2_50 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|601365445");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_50_StateStart,
    });
    self.box_ProximityRadiusListener_v3_79 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|625892196");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_79_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_79_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_79_SomeoneNear,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|628624826");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_Delay_v5_189 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|632466668");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_189_TimeElapsed,
    });
    self.box_GroupSizeTest_18 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|643201997");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_18_OnSize,
    });
    self.box_Delay_v5_192 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|647997105");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_192_TimeElapsed,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|656010190");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_CharacterLoadedIdListener_v2_115 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|658065931");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_115_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_115_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_115_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_115_LoadedIdReceived,
    });
    self.box_Delay_v5_101 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|684809684");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_101_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_101_TimeElapsed,
    });
    self.box_Gate_v3_196 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|687739842");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_196_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_196_Out,
    });
    self.box_PlayDialog_v6_140 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|690552120");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_140_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_140_FinishedInterrupted,
    });
    self.box_OnceOnly_v3_171 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|705355723");
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
                [0] = self.f_box_OnceOnly_v3_171_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_63 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|743432414");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_63_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_63_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_63_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_63_Stopped,
    });
    self.box_OnceOnly_v3_186 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|786187357");
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
                [0] = self.f_box_OnceOnly_v3_186_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_161 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|790942649");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_161_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_161_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_161_SomeoneNear,
    });
    self.box_SpawnAI_148 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|810047770");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_148_Out,
    });
    self.box_ProximityRadiusListener_v3_83 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|831921241");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_83_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_83_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_83_SomeoneNear,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|878123460");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_ProximityRadiusListener_v3_153 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|880636412");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_153_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_153_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_153_SomeoneNear,
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|912701791");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_33_Out,
    });
    self.box_OnceOnly_v3_46 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|930026447");
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
                [0] = self.f_box_OnceOnly_v3_46_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|940791254");
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
        [0] = self.f_box_MultipleOR_180_Out,
    });
    self.box_OnceOnly_v3_155 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|945328177");
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
                [0] = self.f_box_OnceOnly_v3_155_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_185 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|952067774");
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
                [0] = self.f_box_OnceOnly_v3_185_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_17 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|958705131");
    l0:SetConnections({
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|978947893");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_49_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|981520716");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_32_Out,
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|983504727");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_29_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_29_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_29_QueueCancelled,
    });
    self.box_HealthListener_v6_202 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|987739301");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_202_Killed,
    });
    self.box_HealthListener_v6_206 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|999191259");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_206_Killed,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1005694213");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_PlayDialog_v6_42 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1055704711");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_38 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1139490102");
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
                [0] = self.f_box_OnceOnly_v3_38_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_207 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1175188643");
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
    self.box_Delay_v5_142 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1210234996");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_142_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_142_TimeElapsed,
    });
    self.box_SoundModifier_v2_131 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1225082076");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_131_Started,
    });
    self.box_PlayDialog_v6_81 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1238565361");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_81_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_81_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_81_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_81_Stopped,
    });
    self.box_PlayDialog_v6_136 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1289682939");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_136_Started,
    });
    self.box_OnceOnly_v3_76 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1320060049");
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
                [0] = self.f_box_OnceOnly_v3_76_Out_0,
            },
            count = 2,
        },
    });
    self.box_CharacterLoadedIdListener_v2_119 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1333106332");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_119_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_119_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_119_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_119_LoadedIdReceived,
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1337359354");
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
        [0] = self.f_box_MultipleOR_67_Out,
    });
    self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1342970279");
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
        [0] = self.f_box_MultipleOR_61_Out,
    });
    self.box_PlayDialog_v6_125 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1350586462");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_125_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_125_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_125_StartedPriorityFailed,
    });
    self.box_PlayDialog_v6_164 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1365437325");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_164_QueueCancelled,
    });
    self.box_StaticBreakableListener_20 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1383736914");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_20_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_20_OnBreak,
    });
    self.box_GroupSizeTest_95 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1384736531");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_95_OnSize,
    });
    self.box_PlayDialog_v6_80 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1387216509");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_80_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_80_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_80_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_80_Stopped,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1387521314");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_PlayDialog_v6_127 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1394650245");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v6_58 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1442303834");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_58_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_58_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_58_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_58_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_58_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_58_MemberSpawned,
    });
    self.box_SpawnAI_144 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1452318243");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_144_Out,
    });
    self.box_Delay_v5_213 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1462886691");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_213_TimeElapsed,
    });
    self.box_MultipleAND_v2_113 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1468882862");
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
        [0] = self.f_box_MultipleAND_v2_113_Out,
    });
    self.box_OnceOnly_v3_98 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1477729038");
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
                [0] = self.f_box_OnceOnly_v3_98_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_162 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1515849284");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_162_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_162_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_162_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_162_Stopped,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1521530055");
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
    self.box_MultipleOR_174 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1547671083");
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
        [0] = self.f_box_MultipleOR_174_Out,
    });
    self.box_SoundModifier_v2_130 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1554004343");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_130_Started,
    });
    self.box_StateListener_v2_15 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1557836182");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_15_Disabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_15_StateStart,
    });
    self.box_PlayDialog_v6_137 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1566972951");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_137_Started,
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1575680979");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 2,
        },
    });
    self.box_HealthListener_v6_92 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1601635501");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_92_Disabled,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_92_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_92_Killed,
    });
    self.box_MultipleOR_209 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1602551779");
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
        [0] = self.f_box_MultipleOR_209_Out,
    });
    self.box_PlayDialog_v6_163 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1611167601");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_163_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_163_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_163_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_163_Stopped,
    });
    self.box_PlayDialog_v6_157 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1625688677");
    l0:SetConnections({
    });
    self.box_MultipleOR_141 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1629021407");
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
        [0] = self.f_box_MultipleOR_141_Out,
    });
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1634669225");
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
    self.box_MultipleOR_203 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1643192431");
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
        [0] = self.f_box_MultipleOR_203_Out,
    });
    self.box_OnceOnly_v3_187 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1651449296");
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
                [0] = self.f_box_OnceOnly_v3_187_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_69 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1653484393");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1660184244");
    l0:SetConnections({
    });
    self.box_PersistentParticlesModifier_133 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1669165869");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_133_OnStopParticles,
    });
    self.box_MultipleOR_116 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1679705417");
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
        [0] = self.f_box_MultipleOR_116_Out,
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1687072374");
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
    self.box_PersistentParticlesModifier_47 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1728539675");
    l0:SetConnections({
        -- OnStartParticles,
        [0] = self.f_box_PersistentParticlesModifier_47_OnStartParticles,
    });
    self.box_Delay_v5_132 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1732531346");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_132_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_132_TimeElapsed,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1734504048");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_Gate_v3_87 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1734788397");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_87_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_87_Out,
    });
    self.box_ProximityRadiusListener_v3_149 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1750415534");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_149_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_149_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_149_SomeoneNear,
    });
    self.box_EntityStatusListener_190 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1760495605");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_190_Loaded,
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1762475803");
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
                [0] = self.f_box_OnceOnly_v3_19_Out_0,
            },
            count = 2,
        },
    });
    self.box_InventoryItemModifier_210 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1782399479");
    l0:SetConnections({
    });
    self.box_Delay_v5_173 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1787780099");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_173_TimeElapsed,
    });
    self.box_MultipleOR_147 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1797554810");
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
        [0] = self.f_box_MultipleOR_147_Out,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1802213697");
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
        [0] = self.f_box_MultipleOR_88_Out,
    });
    self.box_OnceOnly_v3_106 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1807215801");
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
                [0] = self.f_box_OnceOnly_v3_106_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_111 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1822884563");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_111_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_111_TimeElapsed,
    });
    self.box_GroupSizeTest_105 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1850129594");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GroupSizeTest_105_Enabled,
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_105_OnSize,
    });
    self.box_SpawnAI_145 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1853322746");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_145_Out,
    });
    self.box_OnceOnly_v3_24 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1855727323");
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
    self.box_MultipleOR_175 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1875030794");
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
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1894391357");
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
        [0] = self.f_box_MultipleOR_103_Out,
    });
    self.box_OnceOnly_v3_208 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1901933557");
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
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1917509758");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_68_QueueCancelled,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1946787346");
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1969753365");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1989729298");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_OnceOnly_v3_57 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1993885021");
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
                [0] = self.f_box_OnceOnly_v3_57_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_156 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2003465050");
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
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2005941996");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_77_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_MultipleOR_205 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2020059334");
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
        [0] = self.f_box_MultipleOR_205_Out,
    });
    self.box_StateListener_v2_31 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2033047963");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_31_Disabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_31_StateStart,
    });
    self.box_MultipleOR_182 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2036266165");
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
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2056606444");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_65_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_65_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_65_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_65_Stopped,
    });
    self.box_MultipleOR_170 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2067842925");
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
        [0] = self.f_box_MultipleOR_170_Out,
    });
    self.box_ProximityRadiusListener_v3_166 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2087131329");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_166_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_166_SomeoneNear,
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2091965278");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_30_Out,
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2100380361");
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
    self.box_ProximityRadiusListener_v3_86 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2115220206");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_86_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_86_SomeoneNear,
    });
    self.box_Delay_v5_193 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2131959084");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_193_TimeElapsed,
    });
    self.box_Music_Quest_v2_169 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2135925987");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2140610202");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_23_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_23_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_23_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_23_Stopped,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1589226001", "1589226001", "MIS_025_B20", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_173();
    l0 = self.box_Delay_v5_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1899571637", "1899571637", "MIS_025_B20", "box_Simple_Node_85.Out", "box_Delay_v5_173.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Music_Quest_v2_169();
    l0 = self.box_Music_Quest_v2_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|487360637", "487360637", "MIS_025_B20", "box_Simple_Node_85.Out", "box_Music_Quest_v2_169.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeTest_95();
    l0 = self.box_GroupSizeTest_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1558162645", "1558162645", "MIS_025_B20", "box_Simple_Node_85.Out", "box_GroupSizeTest_95.Less", clone:GetLuaBox(), l0:GetLuaBox());
    -- Less
    l0:Exec(3, params);
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1045665368", "1045665368", "MIS_025_B20", "box_Simple_Node_85.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|291731724", "291731724", "MIS_025_B20", "box_Simple_Node_85.Out", "box_MultipleOR_205.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_PawnInvincibleState_v2_199();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2020673573", "2020673573", "MIS_025_B20", "box_Simple_Node_85.Out", "box_PawnInvincibleState_v2_199.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_60();
    l0 = self.box_Gate_v3_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|160169746", "160169746", "MIS_025_B20", "box_Simple_Node_85.Out", "box_Gate_v3_60.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1594344680", "1594344680", "MIS_025_B20", "box_Simple_Node_85.Out", "box_MultipleOR_207.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1036764640", "1036764640", "MIS_025_B20", "box_Simple_Node_85.Out", "box_MultipleOR_203.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1295413387", "1295413387", "MIS_025_B20", "box_Simple_Node_85.Out", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_Gate_v3_87();
    l0 = self.box_Gate_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1381468113", "1381468113", "MIS_025_B20", "box_Simple_Node_85.Out", "box_Gate_v3_87.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|190009697", "190009697", "MIS_025_B20", "box_Simple_Node_85.Out", "box_MultipleOR_147.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1339732", "1339732", "MIS_025_B20", "box_Simple_Node_85.Out", "box_MultipleOR_209.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_GroupSizeTest_105();
    l0 = self.box_GroupSizeTest_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|448170621", "448170621", "MIS_025_B20", "box_Simple_Node_85.Out", "box_GroupSizeTest_105.Less", clone:GetLuaBox(), l0:GetLuaBox());
    -- Less
    l0:Exec(3, params);
end;

function export:f_box_PersistentParticlesModifier_128_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_47();
    l0 = self.box_PersistentParticlesModifier_128;
    l1 = self.box_PersistentParticlesModifier_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|974882149", "974882149", "MIS_025_B20", "box_PersistentParticlesModifier_128.OnStopParticles", "box_PersistentParticlesModifier_47.StartParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartParticles
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_108_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_108;
    l1 = self.box_OnceOnly_v3_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1329980548", "1329980548", "MIS_025_B20", "box_MultipleOR_108.Out", "box_OnceOnly_v3_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_43_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_158();
    l0 = self.box_HealthListener_v6_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|232202183", "232202183", "MIS_025_B20", "box_HealthListener_v6_43.Killed", "box_OutputOrder_v2_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_126();
    l0 = self.box_MultipleOR_56;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|493140178", "493140178", "MIS_025_B20", "box_MultipleOR_56.Out", "box_IsPawnAlive_v3_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_39_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_39;
    l1 = self.box_OnceOnly_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|302621", "302621", "MIS_025_B20", "box_ProximityRadiusListener_v3_39.Disabled", "box_OnceOnly_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_39_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_39;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1297279497", "1297279497", "MIS_025_B20", "box_ProximityRadiusListener_v3_39.SomeoneNear", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_124_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_124_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|542926960", "542926960", "MIS_025_B20", "box_SetEntity_v2_124.Out", "box_MultipleOR_175.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1983825025", "1983825025", "MIS_025_B20", "box_MultipleOR_36.Out", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_167_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_166();
    l0 = self.box_MultipleOR_167;
    l1 = self.box_ProximityRadiusListener_v3_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1735045838", "1735045838", "MIS_025_B20", "box_MultipleOR_167.Out", "box_ProximityRadiusListener_v3_166.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_55_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1499800620", "1499800620", "MIS_025_B20", "box_SetEntity_v2_55.Out", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_196();
    l0 = self.box_MultipleOR_197;
    l1 = self.box_Gate_v3_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1143713532", "1143713532", "MIS_025_B20", "box_MultipleOR_197.Out", "box_Gate_v3_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_204_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_204;
    l1 = self.box_MultipleOR_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|966750426", "966750426", "MIS_025_B20", "box_HealthListener_v6_204.Killed", "box_MultipleOR_205.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_99_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_99;
    l1 = self.box_OnceOnly_v3_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1971864276", "1971864276", "MIS_025_B20", "box_MultipleOR_99.Out", "box_OnceOnly_v3_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_102_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_100();
    l0 = self.box_Switch_102;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|594427223", "594427223", "MIS_025_B20", "box_Switch_102.Output", "box_ParticleSystem_v3_100.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_102_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_104();
    l0 = self.box_Switch_102;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|827714574", "827714574", "MIS_025_B20", "box_Switch_102.Output", "box_ParticleSystem_v3_104.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_151();
    l0 = self.box_OnceOnly_v3_44;
    l1 = self.box_PlayDialog_v6_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|504238494", "504238494", "MIS_025_B20", "box_OnceOnly_v3_44.Out", "box_PlayDialog_v6_151.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1431109720", "1431109720", "MIS_025_B20", "box_OutputOrder_v2_12.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|301832409", "301832409", "MIS_025_B20", "box_OutputOrder_v2_12.Out", "box_Delay_v5_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_31();
    l0 = self.box_StateListener_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1729806368", "1729806368", "MIS_025_B20", "box_OutputOrder_v2_12.Out", "box_StateListener_v2_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1613381372", "1613381372", "MIS_025_B20", "box_OutputOrder_v2_12.Out", "box_Delay_v5_77.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|246776614", "246776614", "MIS_025_B20", "box_OutputOrder_v2_12.Out", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_12_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|644752097", "644752097", "MIS_025_B20", "box_OutputOrder_v2_12.Out", "box_MultipleOR_209.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_91_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_91_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1347189168", "1347189168", "MIS_025_B20", "box_SetInteger_v2_91.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_178_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1543880582", "1543880582", "MIS_025_B20", "box_PlayDialog_v6_178.Finished", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_178_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|766429834", "766429834", "MIS_025_B20", "box_PlayDialog_v6_178.FinishedInterrupted", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_178_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1485422413", "1485422413", "MIS_025_B20", "box_PlayDialog_v6_178.StartedPriorityFailed", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_151_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_151;
    l1 = self.box_MultipleOR_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1933677189", "1933677189", "MIS_025_B20", "box_PlayDialog_v6_151.Finished", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_151_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_151;
    l1 = self.box_MultipleOR_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1132097847", "1132097847", "MIS_025_B20", "box_PlayDialog_v6_151.FinishedInterrupted", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_151_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_151();
    l0 = self.box_PlayDialog_v6_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|947807663", "947807663", "MIS_025_B20", "box_PlayDialog_v6_151.QueueCancelled", "box_PlayDialog_v6_151.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_151_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_150();
    l0 = self.box_PlayDialog_v6_151;
    l1 = self.box_PlayDialog_v6_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|33165203", "33165203", "MIS_025_B20", "box_PlayDialog_v6_151.Stopped", "box_PlayDialog_v6_150.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_53_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = self.box_Brick_Hostage_Setup_v2_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2016913578", "2016913578", "MIS_025_B20", "box_Brick_Hostage_Setup_v2_53.HostageReleased", "box_OutputOrder_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_184_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_177();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1515151658", "1515151658", "MIS_025_B20", "box_IsPawnAlive_v3_184.Alive", "box_SetEntity_v2_177.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_184_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1166124359", "1166124359", "MIS_025_B20", "box_IsPawnAlive_v3_184.DeadOrDown", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IsPawnAlive_v3_184_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1499484078", "1499484078", "MIS_025_B20", "box_IsPawnAlive_v3_184.NotLoaded", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_84_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_84();
    l0 = self.box_PlayDialog_v6_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|408216937", "408216937", "MIS_025_B20", "box_PlayDialog_v6_84.QueueCancelled", "box_PlayDialog_v6_84.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_IsValueNil_v3_112_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1981945116", "1981945116", "MIS_025_B20", "box_IsValueNil_v3_112.No", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_112_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_119();
    l0 = self.box_CharacterLoadedIdListener_v2_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|323686271", "323686271", "MIS_025_B20", "box_IsValueNil_v3_112.Yes", "box_CharacterLoadedIdListener_v2_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_107_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_109();
    l0 = self.box_GroupSizeListener_v6_107;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1941708945", "1941708945", "MIS_025_B20", "box_GroupSizeListener_v6_107.MemberRemoved", "box_Compare_Integers_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_150_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_150;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1551932586", "1551932586", "MIS_025_B20", "box_PlayDialog_v6_150.Finished", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_150_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_150;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|258284845", "258284845", "MIS_025_B20", "box_PlayDialog_v6_150.FinishedInterrupted", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_150_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_150();
    l0 = self.box_PlayDialog_v6_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1237944146", "1237944146", "MIS_025_B20", "box_PlayDialog_v6_150.QueueCancelled", "box_PlayDialog_v6_150.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_150_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_152();
    l0 = self.box_PlayDialog_v6_150;
    l1 = self.box_PlayDialog_v6_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|734958595", "734958595", "MIS_025_B20", "box_PlayDialog_v6_150.Stopped", "box_PlayDialog_v6_152.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_BroadcastMessage_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_173();
    l0 = self.box_Delay_v5_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1446070411", "1446070411", "MIS_025_B20", "box_BroadcastMessage_74.Out", "box_Delay_v5_173.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_152_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_152();
    l0 = self.box_PlayDialog_v6_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|484364557", "484364557", "MIS_025_B20", "box_PlayDialog_v6_152.QueueCancelled", "box_PlayDialog_v6_152.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_11_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_18();
    l0 = self.box_GroupSizeTest_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1046191967", "1046191967", "MIS_025_B20", "box_Compare_Integers_11.A_ge_B", "box_GroupSizeTest_18.Less", clone:GetLuaBox(), l0:GetLuaBox());
    -- Less
    l0:Exec(3, params);
end;

function export:f_box_Compare_Integers_11_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1911353592", "1911353592", "MIS_025_B20", "box_Compare_Integers_11.A_lt_B", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_146_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_190();
    l0 = self.box_EntityStatusListener_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|30842479", "30842479", "MIS_025_B20", "box_SetContextualStrategy_146.Out", "box_EntityStatusListener_190.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1836773493", "1836773493", "MIS_025_B20", "box_MultipleOR_25.Out", "box_PlayDialog_v6_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_126_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_176();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2070278058", "2070278058", "MIS_025_B20", "box_IsPawnAlive_v3_126.Alive", "box_SetEntity_v2_176.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_126_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|733193912", "733193912", "MIS_025_B20", "box_IsPawnAlive_v3_126.DeadOrDown", "box_MultipleOR_174.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_126_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|29066386", "29066386", "MIS_025_B20", "box_IsPawnAlive_v3_126.NotLoaded", "box_MultipleOR_174.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_60_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_Gate_v3_60;
    l1 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1167011059", "1167011059", "MIS_025_B20", "box_Gate_v3_60.Closed", "box_PlayDialog_v6_63.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_Gate_v3_60;
    l1 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1024015608", "1024015608", "MIS_025_B20", "box_Gate_v3_60.Out", "box_PlayDialog_v6_63.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_165_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_162();
    l0 = self.box_MultipleOR_165;
    l1 = self.box_PlayDialog_v6_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|786018095", "786018095", "MIS_025_B20", "box_MultipleOR_165.Out", "box_PlayDialog_v6_162.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_191_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_192();
    l0 = self.box_EntityStatusListener_191;
    l1 = self.box_Delay_v5_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1039125636", "1039125636", "MIS_025_B20", "box_EntityStatusListener_191.Loaded", "box_Delay_v5_192.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LookAtTrigger_v2_73_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_140();
    l0 = self.box_LookAtTrigger_v2_73;
    l1 = self.box_PlayDialog_v6_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|958841729", "958841729", "MIS_025_B20", "box_LookAtTrigger_v2_73.EnterFOV", "box_PlayDialog_v6_140.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_159_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_163();
    l0 = self.box_OnceOnly_v3_159;
    l1 = self.box_PlayDialog_v6_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|634052283", "634052283", "MIS_025_B20", "box_OnceOnly_v3_159.Out", "box_PlayDialog_v6_163.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_123();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1539865337", "1539865337", "MIS_025_B20", "box_OutputOrder_v2_114.Out", "box_IsValueNil_v3_123.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_112();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|44954415", "44954415", "MIS_025_B20", "box_OutputOrder_v2_114.Out", "box_IsValueNil_v3_112.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_6_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|270487596", "270487596", "MIS_025_B20", "box_UseContextualActionModifier_v3_6.UseCalled", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_70_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_138();
    l0 = self.box_Delay_v5_70;
    l1 = self.box_PlayDialog_v6_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|736570777", "736570777", "MIS_025_B20", "box_Delay_v5_70.TimeElapsed", "box_PlayDialog_v6_138.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_154_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_150();
    l0 = self.box_MultipleOR_154;
    l1 = self.box_PlayDialog_v6_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|934283014", "934283014", "MIS_025_B20", "box_MultipleOR_154.Out", "box_PlayDialog_v6_150.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_113();
    l0 = self.box_MultipleOR_118;
    l1 = self.box_MultipleAND_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2119511376", "2119511376", "MIS_025_B20", "box_MultipleOR_118.Out", "box_MultipleAND_v2_113.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Boolean_89_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|38869584", "38869584", "MIS_025_B20", "box_Compare_Boolean_89.A_is_False", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_89_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_64();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|230440527", "230440527", "MIS_025_B20", "box_Compare_Boolean_89.A_is_True", "box_SetActivityFact_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_SpawnAI_34;
    l1 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|210444765", "210444765", "MIS_025_B20", "box_SpawnAI_34.Out", "box_SpawnAI_33.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_40_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1488464076", "1488464076", "MIS_025_B20", "box_Delay_v5_40.Started", "box_Simple_Node_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_40;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|249265562", "249265562", "MIS_025_B20", "box_Delay_v5_40.TimeElapsed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_51_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|684399279", "684399279", "MIS_025_B20", "box_PlayDialog_v6_51.Finished", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_51_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1934944570", "1934944570", "MIS_025_B20", "box_PlayDialog_v6_51.FinishedInterrupted", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_51_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1885980491", "1885980491", "MIS_025_B20", "box_PlayDialog_v6_51.StartedPriorityFailed", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_164();
    l0 = self.box_MultipleOR_160;
    l1 = self.box_PlayDialog_v6_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1730596671", "1730596671", "MIS_025_B20", "box_MultipleOR_160.Out", "box_PlayDialog_v6_164.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_MultipleOR_28;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|962028284", "962028284", "MIS_025_B20", "box_MultipleOR_28.Out", "box_PlayDialog_v6_27.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_26_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_26;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|964857261", "964857261", "MIS_025_B20", "box_PlayDialog_v6_26.Finished", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_26_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_26;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1900475294", "1900475294", "MIS_025_B20", "box_PlayDialog_v6_26.FinishedInterrupted", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_26_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|425773984", "425773984", "MIS_025_B20", "box_PlayDialog_v6_26.QueueCancelled", "box_PlayDialog_v6_26.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_26_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_PlayDialog_v6_26;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|847940923", "847940923", "MIS_025_B20", "box_PlayDialog_v6_26.Stopped", "box_PlayDialog_v6_27.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_34();
    l0 = self.box_SpawnAI_35;
    l1 = self.box_SpawnAI_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|882589771", "882589771", "MIS_025_B20", "box_SpawnAI_35.Out", "box_SpawnAI_34.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_35_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_97();
    l0 = self.box_SpawnAI_35;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1170043863", "1170043863", "MIS_025_B20", "box_SpawnAI_35.Spawned", "box_UseContextualActionModifier_v3_97.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PersistentParticlesModifier_129_OnStartParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_133();
    l0 = self.box_PersistentParticlesModifier_129;
    l1 = self.box_PersistentParticlesModifier_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|944336413", "944336413", "MIS_025_B20", "box_PersistentParticlesModifier_129.OnStartParticles", "box_PersistentParticlesModifier_133.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_27_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1784804032", "1784804032", "MIS_025_B20", "box_PlayDialog_v6_27.QueueCancelled", "box_PlayDialog_v6_27.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_StateListener_v2_50_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_48();
    l0 = self.box_StateListener_v2_50;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|274462607", "274462607", "MIS_025_B20", "box_StateListener_v2_50.StateStart", "box_SetContextualStrategy_48.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_96_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_121();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|867125603", "867125603", "MIS_025_B20", "box_IsPawnAlive_v3_96.Alive", "box_SetEntity_v2_121.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_96_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|136716308", "136716308", "MIS_025_B20", "box_IsPawnAlive_v3_96.DeadOrDown", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IsPawnAlive_v3_96_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|797250718", "797250718", "MIS_025_B20", "box_IsPawnAlive_v3_96.NotLoaded", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_ProximityRadiusListener_v3_79_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_87();
    l0 = self.box_ProximityRadiusListener_v3_79;
    l1 = self.box_Gate_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1266500168", "1266500168", "MIS_025_B20", "box_ProximityRadiusListener_v3_79.Disabled", "box_Gate_v3_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_79_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_ProximityRadiusListener_v3_79;
    l1 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1832858332", "1832858332", "MIS_025_B20", "box_ProximityRadiusListener_v3_79.Enabled", "box_ProximityRadiusListener_v3_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_79_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_79();
    l0 = self.box_ProximityRadiusListener_v3_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1595857845", "1595857845", "MIS_025_B20", "box_ProximityRadiusListener_v3_79.SomeoneNear", "box_ProximityRadiusListener_v3_79.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_58();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_GroupSizeListener_v6_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1755162846", "1755162846", "MIS_025_B20", "box_Delay_v5_8.TimeElapsed", "box_GroupSizeListener_v6_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_189_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_189;
    l1 = self.box_OnceOnly_v3_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|94043092", "94043092", "MIS_025_B20", "box_Delay_v5_189.TimeElapsed", "box_OnceOnly_v3_208.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeTest_18_OnSize()
    local l0, l1;
    l0 = self.box_GroupSizeTest_18;
    l1 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1808135333", "1808135333", "MIS_025_B20", "box_GroupSizeTest_18.OnSize", "box_MultipleOR_147.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_192_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_53();
    l0 = self.box_Delay_v5_192;
    l1 = self.box_Brick_Hostage_Setup_v2_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1144599491", "1144599491", "MIS_025_B20", "box_Delay_v5_192.TimeElapsed", "box_Brick_Hostage_Setup_v2_53.ForceRelease", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceRelease
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_81();
    l0 = self.box_MultipleOR_82;
    l1 = self.box_PlayDialog_v6_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|355830600", "355830600", "MIS_025_B20", "box_MultipleOR_82.Out", "box_PlayDialog_v6_81.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_115_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_115_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_v2_115;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1018716243", "1018716243", "MIS_025_B20", "box_CharacterLoadedIdListener_v2_115.LoadedIdReceived", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPawnAlive_v3_75_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_124();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1101647304", "1101647304", "MIS_025_B20", "box_IsPawnAlive_v3_75.Alive", "box_SetEntity_v2_124.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_75_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1899483883", "1899483883", "MIS_025_B20", "box_IsPawnAlive_v3_75.DeadOrDown", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IsPawnAlive_v3_75_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|400192077", "400192077", "MIS_025_B20", "box_IsPawnAlive_v3_75.NotLoaded", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Delay_v5_101_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_101;
    l1 = self.box_OnceOnly_v3_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1922136290", "1922136290", "MIS_025_B20", "box_Delay_v5_101.Started", "box_OnceOnly_v3_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_101_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_102();
    l0 = self.box_Delay_v5_101;
    l1 = self.box_Switch_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|90733904", "90733904", "MIS_025_B20", "box_Delay_v5_101.TimeElapsed", "box_Switch_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_196_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_201();
    l0 = self.box_Gate_v3_196;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1577043850", "1577043850", "MIS_025_B20", "box_Gate_v3_196.Closed", "box_SetContextualStrategy_201.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_198();
    l0 = self.box_Gate_v3_196;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1736583638", "1736583638", "MIS_025_B20", "box_Gate_v3_196.Out", "box_SetContextualStrategy_198.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_140_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_140;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1281821188", "1281821188", "MIS_025_B20", "box_PlayDialog_v6_140.Finished", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_140_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_140;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|568622997", "568622997", "MIS_025_B20", "box_PlayDialog_v6_140.FinishedInterrupted", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_171_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_90();
    l0 = self.box_OnceOnly_v3_171;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1105978344", "1105978344", "MIS_025_B20", "box_OnceOnly_v3_171.Out", "box_SetBoolean_v2_90.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_63_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_63;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1756515391", "1756515391", "MIS_025_B20", "box_PlayDialog_v6_63.Finished", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_63_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_63;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1726603532", "1726603532", "MIS_025_B20", "box_PlayDialog_v6_63.FinishedInterrupted", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_63_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1071031294", "1071031294", "MIS_025_B20", "box_PlayDialog_v6_63.QueueCancelled", "box_PlayDialog_v6_63.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_63_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_63;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1629234211", "1629234211", "MIS_025_B20", "box_PlayDialog_v6_63.Stopped", "box_PlayDialog_v6_65.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_IsPawnAlive_v3_94_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_92();
    l0 = self.box_HealthListener_v6_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1165002494", "1165002494", "MIS_025_B20", "box_IsPawnAlive_v3_94.Alive", "box_HealthListener_v6_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_186_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_178();
    l0 = self.box_OnceOnly_v3_186;
    l1 = self.box_PlayDialog_v6_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|594227827", "594227827", "MIS_025_B20", "box_OnceOnly_v3_186.Out", "box_PlayDialog_v6_178.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetActivityFact_110_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_111();
    l0 = self.box_Delay_v5_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1590129528", "1590129528", "MIS_025_B20", "box_GetActivityFact_110.FactSet", "box_Delay_v5_111.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_ProximityRadiusListener_v3_161_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_163();
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_PlayDialog_v6_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|277459579", "277459579", "MIS_025_B20", "box_ProximityRadiusListener_v3_161.Disabled", "box_PlayDialog_v6_163.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_161_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_206();
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_HealthListener_v6_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1533315241", "1533315241", "MIS_025_B20", "box_ProximityRadiusListener_v3_161.Enabled", "box_HealthListener_v6_206.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_161_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_OnceOnly_v3_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|315550675", "315550675", "MIS_025_B20", "box_ProximityRadiusListener_v3_161.SomeoneNear", "box_OnceOnly_v3_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_37_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_55();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|121728484", "121728484", "MIS_025_B20", "box_IsPawnAlive_v3_37.Alive", "box_SetEntity_v2_55.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_37_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|353028666", "353028666", "MIS_025_B20", "box_IsPawnAlive_v3_37.DeadOrDown", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_37_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1641095553", "1641095553", "MIS_025_B20", "box_IsPawnAlive_v3_37.NotLoaded", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_90_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_90_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_91();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|934955951", "934955951", "MIS_025_B20", "box_SetBoolean_v2_90.Out", "box_SetInteger_v2_91.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_148_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = self.box_SpawnAI_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|224005371", "224005371", "MIS_025_B20", "box_SpawnAI_148.Out", "box_OutputOrder_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_121_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_121_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|72300234", "72300234", "MIS_025_B20", "box_SetEntity_v2_121.Out", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_153();
    l0 = self.box_ProximityRadiusListener_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1247147467", "1247147467", "MIS_025_B20", "box_OutputOrder_v2_22.Out", "box_ProximityRadiusListener_v3_153.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_83();
    l0 = self.box_ProximityRadiusListener_v3_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1312939245", "1312939245", "MIS_025_B20", "box_OutputOrder_v2_22.Out", "box_ProximityRadiusListener_v3_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_79();
    l0 = self.box_ProximityRadiusListener_v3_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|883462341", "883462341", "MIS_025_B20", "box_OutputOrder_v2_22.Out", "box_ProximityRadiusListener_v3_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_149();
    l0 = self.box_ProximityRadiusListener_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2120810385", "2120810385", "MIS_025_B20", "box_OutputOrder_v2_22.Out", "box_ProximityRadiusListener_v3_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_161();
    l0 = self.box_ProximityRadiusListener_v3_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1904614355", "1904614355", "MIS_025_B20", "box_OutputOrder_v2_22.Out", "box_ProximityRadiusListener_v3_161.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_83_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_84();
    l0 = self.box_ProximityRadiusListener_v3_83;
    l1 = self.box_PlayDialog_v6_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|384185366", "384185366", "MIS_025_B20", "box_ProximityRadiusListener_v3_83.Disabled", "box_PlayDialog_v6_84.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_83_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_204();
    l0 = self.box_ProximityRadiusListener_v3_83;
    l1 = self.box_HealthListener_v6_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|930706684", "930706684", "MIS_025_B20", "box_ProximityRadiusListener_v3_83.Enabled", "box_HealthListener_v6_204.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_83_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_83;
    l1 = self.box_OnceOnly_v3_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|398199119", "398199119", "MIS_025_B20", "box_ProximityRadiusListener_v3_83.SomeoneNear", "box_OnceOnly_v3_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_183_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_183_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1391070460", "1391070460", "MIS_025_B20", "box_SetEntity_v2_183.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|701079665", "701079665", "MIS_025_B20", "box_MultipleOR_62.Out", "box_ProximityRadiusListener_v3_39.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_153_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_ProximityRadiusListener_v3_153;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1928592683", "1928592683", "MIS_025_B20", "box_ProximityRadiusListener_v3_153.Disabled", "box_PlayDialog_v6_23.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_153_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_202();
    l0 = self.box_ProximityRadiusListener_v3_153;
    l1 = self.box_HealthListener_v6_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|906705301", "906705301", "MIS_025_B20", "box_ProximityRadiusListener_v3_153.Enabled", "box_HealthListener_v6_202.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_153_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_153;
    l1 = self.box_OnceOnly_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2108032089", "2108032089", "MIS_025_B20", "box_ProximityRadiusListener_v3_153.SomeoneNear", "box_OnceOnly_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_SpawnAI_33;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|585324499", "585324499", "MIS_025_B20", "box_SpawnAI_33.Out", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_176_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_176_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1291166543", "1291166543", "MIS_025_B20", "box_SetEntity_v2_176.Out", "box_MultipleOR_175.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_6();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|419269358", "419269358", "MIS_025_B20", "box_UseContextualActionModifier_v3_14.Disabled", "box_UseContextualActionModifier_v3_6.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_46_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_191();
    l0 = self.box_OnceOnly_v3_46;
    l1 = self.box_EntityStatusListener_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|20764288", "20764288", "MIS_025_B20", "box_OnceOnly_v3_46.Out", "box_EntityStatusListener_191.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_180_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_120();
    l0 = self.box_MultipleOR_180;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1316099974", "1316099974", "MIS_025_B20", "box_MultipleOR_180.Out", "box_IsEntityLoaded_v3_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_155_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_84();
    l0 = self.box_OnceOnly_v3_155;
    l1 = self.box_PlayDialog_v6_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|596527556", "596527556", "MIS_025_B20", "box_OnceOnly_v3_155.Out", "box_PlayDialog_v6_84.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_185_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_125();
    l0 = self.box_OnceOnly_v3_185;
    l1 = self.box_PlayDialog_v6_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|130172610", "130172610", "MIS_025_B20", "box_OnceOnly_v3_185.Out", "box_PlayDialog_v6_125.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_49_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = self.box_Delay_v5_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|52523436", "52523436", "MIS_025_B20", "box_Delay_v5_49.Started", "box_OutputOrder_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_50();
    l0 = self.box_Delay_v5_49;
    l1 = self.box_StateListener_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|677201734", "677201734", "MIS_025_B20", "box_Delay_v5_49.TimeElapsed", "box_StateListener_v2_50.Idle_RelaxCautious", l0:GetLuaBox(), l1:GetLuaBox());
    -- Idle_RelaxCautious
    l1:Exec(4, params);
end;

function export:f_box_SpawnAI_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_145();
    l0 = self.box_SpawnAI_32;
    l1 = self.box_SpawnAI_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|779264984", "779264984", "MIS_025_B20", "box_SpawnAI_32.Out", "box_SpawnAI_145.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_29_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1299396003", "1299396003", "MIS_025_B20", "box_PlayDialog_v6_29.Finished", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_29_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|514854322", "514854322", "MIS_025_B20", "box_PlayDialog_v6_29.FinishedInterrupted", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_29_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2132917220", "2132917220", "MIS_025_B20", "box_PlayDialog_v6_29.QueueCancelled", "box_PlayDialog_v6_29.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_HealthListener_v6_202_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_202;
    l1 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1526563665", "1526563665", "MIS_025_B20", "box_HealthListener_v6_202.Killed", "box_MultipleOR_203.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_206_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_206;
    l1 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|628129855", "628129855", "MIS_025_B20", "box_HealthListener_v6_206.Killed", "box_MultipleOR_207.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_13();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2057808403", "2057808403", "MIS_025_B20", "box_ActivityInitialized_4.Out", "box_GetLocalPlayer_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1195785906", "1195785906", "MIS_025_B20", "box_SetActivityFact_64.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnInvincibleState_v2_199_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_200();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|416283347", "416283347", "MIS_025_B20", "box_PawnInvincibleState_v2_199.OnSet", "box_PawnInvincibleState_v2_200.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_199_OnUnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_200();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1276949136", "1276949136", "MIS_025_B20", "box_PawnInvincibleState_v2_199.OnUnSet", "box_PawnInvincibleState_v2_200.UnsetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnsetInvincible
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_127();
    l0 = self.box_PlayDialog_v6_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|483698136", "483698136", "MIS_025_B20", "box_OutputOrder_v2_72.Out", "box_PlayDialog_v6_127.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_70();
    l0 = self.box_Delay_v5_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|139350396", "139350396", "MIS_025_B20", "box_OutputOrder_v2_72.Out", "box_Delay_v5_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_38_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_60();
    l0 = self.box_OnceOnly_v3_38;
    l1 = self.box_Gate_v3_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1494629442", "1494629442", "MIS_025_B20", "box_OnceOnly_v3_38.Out", "box_Gate_v3_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_109_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|3374625", "3374625", "MIS_025_B20", "box_Compare_Integers_109.A_lt_B", "box_MultipleOR_108.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|348153810", "348153810", "MIS_025_B20", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|256488307", "256488307", "MIS_025_B20", "box_OutputOrder_v2_1.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_207_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_161();
    l0 = self.box_MultipleOR_207;
    l1 = self.box_ProximityRadiusListener_v3_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2038886041", "2038886041", "MIS_025_B20", "box_MultipleOR_207.Out", "box_ProximityRadiusListener_v3_161.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_158_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|238238721", "238238721", "MIS_025_B20", "box_OutputOrder_v2_158.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_158_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_15();
    l0 = self.box_StateListener_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|370723487", "370723487", "MIS_025_B20", "box_OutputOrder_v2_158.Out", "box_StateListener_v2_15.Idle_RelaxCautious", clone:GetLuaBox(), l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:f_box_Delay_v5_142_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_69();
    l0 = self.box_Delay_v5_142;
    l1 = self.box_PlayDialog_v6_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|391328506", "391328506", "MIS_025_B20", "box_Delay_v5_142.Started", "box_PlayDialog_v6_69.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_142_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_136();
    l0 = self.box_Delay_v5_142;
    l1 = self.box_PlayDialog_v6_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|985949611", "985949611", "MIS_025_B20", "box_Delay_v5_142.TimeElapsed", "box_PlayDialog_v6_136.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_131_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_9();
    l0 = self.box_SoundModifier_v2_131;
    l1 = self.box_SoundModifier_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1063714553", "1063714553", "MIS_025_B20", "box_SoundModifier_v2_131.Started", "box_SoundModifier_v2_9.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_81_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_81;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|117102631", "117102631", "MIS_025_B20", "box_PlayDialog_v6_81.Finished", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_81_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_81;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1735436723", "1735436723", "MIS_025_B20", "box_PlayDialog_v6_81.FinishedInterrupted", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_81_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_81();
    l0 = self.box_PlayDialog_v6_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|566653585", "566653585", "MIS_025_B20", "box_PlayDialog_v6_81.QueueCancelled", "box_PlayDialog_v6_81.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_81_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_PlayDialog_v6_81;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1107904246", "1107904246", "MIS_025_B20", "box_PlayDialog_v6_81.Stopped", "box_PlayDialog_v6_29.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_166();
    l0 = self.box_ProximityRadiusListener_v3_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|282479663", "282479663", "MIS_025_B20", "box_OutputOrder_v2_195.Out", "box_ProximityRadiusListener_v3_166.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_195_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_194();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1118636818", "1118636818", "MIS_025_B20", "box_OutputOrder_v2_195.Out", "box_UseContextualActionModifier_v3_194.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_196();
    l0 = self.box_Gate_v3_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|147147804", "147147804", "MIS_025_B20", "box_OutputOrder_v2_195.Out", "box_Gate_v3_196.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_201_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_199();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1154333993", "1154333993", "MIS_025_B20", "box_SetContextualStrategy_201.Out", "box_PawnInvincibleState_v2_199.UnsetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnsetInvincible
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_53();
    l0 = self.box_Brick_Hostage_Setup_v2_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|642947257", "642947257", "MIS_025_B20", "box_OutputOrder_v2_54.Out", "box_Brick_Hostage_Setup_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_20();
    l0 = self.box_StaticBreakableListener_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1021090653", "1021090653", "MIS_025_B20", "box_OutputOrder_v2_54.Out", "box_StaticBreakableListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2113457557", "2113457557", "MIS_025_B20", "box_OutputOrder_v2_54.Out", "box_Delay_v5_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_54_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_31();
    l0 = self.box_StateListener_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2059681062", "2059681062", "MIS_025_B20", "box_OutputOrder_v2_54.Out", "box_StateListener_v2_31.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_74();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1976782062", "1976782062", "MIS_025_B20", "box_OutputOrder_v2_54.Out", "box_BroadcastMessage_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_111();
    l0 = self.box_Delay_v5_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|139624246", "139624246", "MIS_025_B20", "box_OutputOrder_v2_54.Out", "box_Delay_v5_111.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_194_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_194();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1724753956", "1724753956", "MIS_025_B20", "box_UseContextualActionModifier_v3_194.Enabled", "box_UseContextualActionModifier_v3_194.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_194_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_211();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1404148954", "1404148954", "MIS_025_B20", "box_UseContextualActionModifier_v3_194.UseCalled", "box_UseContextualActionModifier_v3_211.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_13_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1103736624", "1103736624", "MIS_025_B20", "box_GetLocalPlayer_v2_13.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_136_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_PlayDialog_v6_136;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1775297606", "1775297606", "MIS_025_B20", "box_PlayDialog_v6_136.Started", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_97();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|50260550", "50260550", "MIS_025_B20", "box_OutputOrder_v2_10.Out", "box_UseContextualActionModifier_v3_97.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_66();
    l0 = self.box_Music_Quest_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1476626884", "1476626884", "MIS_025_B20", "box_OutputOrder_v2_10.Out", "box_Music_Quest_v2_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_128();
    l0 = self.box_PersistentParticlesModifier_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|606559545", "606559545", "MIS_025_B20", "box_OutputOrder_v2_10.Out", "box_PersistentParticlesModifier_128.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_76_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_139();
    l0 = self.box_OnceOnly_v3_76;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|318983902", "318983902", "MIS_025_B20", "box_OnceOnly_v3_76.Out", "box_SetBoolean_v2_139.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_119_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_119_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_v2_119;
    l1 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1590816585", "1590816585", "MIS_025_B20", "box_CharacterLoadedIdListener_v2_119.LoadedIdReceived", "box_MultipleOR_116.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_135_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_130();
    l0 = self.box_SoundModifier_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|713633152", "713633152", "MIS_025_B20", "box_MissionBlockLayer_135.Disabled", "box_SoundModifier_v2_130.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IsPawnAlive_v3_179_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_183();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|729075519", "729075519", "MIS_025_B20", "box_IsPawnAlive_v3_179.Alive", "box_SetEntity_v2_183.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_179_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|322093499", "322093499", "MIS_025_B20", "box_IsPawnAlive_v3_179.DeadOrDown", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_179_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1306913486", "1306913486", "MIS_025_B20", "box_IsPawnAlive_v3_179.NotLoaded", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_MultipleOR_67;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|959900959", "959900959", "MIS_025_B20", "box_MultipleOR_67.Out", "box_PlayDialog_v6_65.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_61_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_61;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1736644967", "1736644967", "MIS_025_B20", "box_MultipleOR_61.Out", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_125_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_125;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1947178311", "1947178311", "MIS_025_B20", "box_PlayDialog_v6_125.Finished", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_125_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_125;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2061870760", "2061870760", "MIS_025_B20", "box_PlayDialog_v6_125.FinishedInterrupted", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_125_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_125;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|217348257", "217348257", "MIS_025_B20", "box_PlayDialog_v6_125.StartedPriorityFailed", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_164_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_164();
    l0 = self.box_PlayDialog_v6_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2003700158", "2003700158", "MIS_025_B20", "box_PlayDialog_v6_164.QueueCancelled", "box_PlayDialog_v6_164.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_188_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_213();
    l0 = self.box_Delay_v5_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|992195305", "992195305", "MIS_025_B20", "box_SetContextualStrategy_188.Out", "box_Delay_v5_213.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_177_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_177_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|862582151", "862582151", "MIS_025_B20", "box_SetEntity_v2_177.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_73();
    l0 = self.box_StaticBreakableListener_20;
    l1 = self.box_LookAtTrigger_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2077896134", "2077896134", "MIS_025_B20", "box_StaticBreakableListener_20.Enabled", "box_LookAtTrigger_v2_73.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_20_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_StaticBreakableListener_20;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1473248623", "1473248623", "MIS_025_B20", "box_StaticBreakableListener_20.OnBreak", "box_Delay_v5_49.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeTest_95_OnSize()
    local l0, l1;
    l0 = self.box_GroupSizeTest_95;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2106869236", "2106869236", "MIS_025_B20", "box_GroupSizeTest_95.OnSize", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_80_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_80;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1845694155", "1845694155", "MIS_025_B20", "box_PlayDialog_v6_80.Finished", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_80_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_80;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|86583395", "86583395", "MIS_025_B20", "box_PlayDialog_v6_80.FinishedInterrupted", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_80_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_80();
    l0 = self.box_PlayDialog_v6_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2098047238", "2098047238", "MIS_025_B20", "box_PlayDialog_v6_80.QueueCancelled", "box_PlayDialog_v6_80.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_80_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_81();
    l0 = self.box_PlayDialog_v6_80;
    l1 = self.box_PlayDialog_v6_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1508036357", "1508036357", "MIS_025_B20", "box_PlayDialog_v6_80.Stopped", "box_PlayDialog_v6_81.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1623728222", "1623728222", "MIS_025_B20", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|592697616", "592697616", "MIS_025_B20", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_58_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_11();
    l0 = self.box_GroupSizeListener_v6_58;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1475392125", "1475392125", "MIS_025_B20", "box_GroupSizeListener_v6_58.MemberRemoved", "box_Compare_Integers_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_144_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_35();
    l0 = self.box_SpawnAI_144;
    l1 = self.box_SpawnAI_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|529886150", "529886150", "MIS_025_B20", "box_SpawnAI_144.Out", "box_SpawnAI_35.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_213_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_212();
    l0 = self.box_Delay_v5_213;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|987675642", "987675642", "MIS_025_B20", "box_Delay_v5_213.TimeElapsed", "box_SetContextualStrategy_212.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_113_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_MultipleAND_v2_113;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|660540843", "660540843", "MIS_025_B20", "box_MultipleAND_v2_113.Out", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_98_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_OnceOnly_v3_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|276602590", "276602590", "MIS_025_B20", "box_OnceOnly_v3_98.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_162_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_162;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|996372070", "996372070", "MIS_025_B20", "box_PlayDialog_v6_162.Finished", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_162_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_162;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|421180606", "421180606", "MIS_025_B20", "box_PlayDialog_v6_162.FinishedInterrupted", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_162_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_162();
    l0 = self.box_PlayDialog_v6_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1530355941", "1530355941", "MIS_025_B20", "box_PlayDialog_v6_162.QueueCancelled", "box_PlayDialog_v6_162.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_162_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_164();
    l0 = self.box_PlayDialog_v6_162;
    l1 = self.box_PlayDialog_v6_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1922709647", "1922709647", "MIS_025_B20", "box_PlayDialog_v6_162.Stopped", "box_PlayDialog_v6_164.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|168346769", "168346769", "MIS_025_B20", "box_MultipleOR_3.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_174_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_75();
    l0 = self.box_MultipleOR_174;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|644852581", "644852581", "MIS_025_B20", "box_MultipleOR_174.Out", "box_IsPawnAlive_v3_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_130_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_17();
    l0 = self.box_SoundModifier_v2_130;
    l1 = self.box_SoundModifier_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|429754899", "429754899", "MIS_025_B20", "box_SoundModifier_v2_130.Started", "box_SoundModifier_v2_17.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_15_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_157();
    l0 = self.box_StateListener_v2_15;
    l1 = self.box_PlayDialog_v6_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1642660115", "1642660115", "MIS_025_B20", "box_StateListener_v2_15.Disabled", "box_PlayDialog_v6_157.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_15_StateStart()
    local params, l0;
    params = self:OnEnter_box_StateListener_v2_15();
    l0 = self.box_StateListener_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|661352590", "661352590", "MIS_025_B20", "box_StateListener_v2_15.StateStart", "box_StateListener_v2_15.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_137_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_142();
    l0 = self.box_PlayDialog_v6_137;
    l1 = self.box_Delay_v5_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|32007939", "32007939", "MIS_025_B20", "box_PlayDialog_v6_137.Started", "box_Delay_v5_142.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_OnceOnly_v3_45;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1811813329", "1811813329", "MIS_025_B20", "box_OnceOnly_v3_45.Out", "box_PlayDialog_v6_42.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_92_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_21();
    l0 = self.box_HealthListener_v6_92;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1790603352", "1790603352", "MIS_025_B20", "box_HealthListener_v6_92.Disabled", "box_SetActivityFact_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_92_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_16();
    l0 = self.box_HealthListener_v6_92;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1587824216", "1587824216", "MIS_025_B20", "box_HealthListener_v6_92.Enabled", "box_SetActivityFact_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_92_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_92();
    l0 = self.box_HealthListener_v6_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|222563276", "222563276", "MIS_025_B20", "box_HealthListener_v6_92.Killed", "box_HealthListener_v6_92.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_209_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_189();
    l0 = self.box_MultipleOR_209;
    l1 = self.box_Delay_v5_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|571942921", "571942921", "MIS_025_B20", "box_MultipleOR_209.Out", "box_Delay_v5_189.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_163_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_163;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|384723440", "384723440", "MIS_025_B20", "box_PlayDialog_v6_163.Finished", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_163_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_163;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2095165911", "2095165911", "MIS_025_B20", "box_PlayDialog_v6_163.FinishedInterrupted", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_163_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_163();
    l0 = self.box_PlayDialog_v6_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|292441368", "292441368", "MIS_025_B20", "box_PlayDialog_v6_163.QueueCancelled", "box_PlayDialog_v6_163.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_163_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_162();
    l0 = self.box_PlayDialog_v6_163;
    l1 = self.box_PlayDialog_v6_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1064778709", "1064778709", "MIS_025_B20", "box_PlayDialog_v6_163.Stopped", "box_PlayDialog_v6_162.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_179();
    l0 = self.box_MultipleOR_141;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|105440660", "105440660", "MIS_025_B20", "box_MultipleOR_141.Out", "box_IsPawnAlive_v3_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_184();
    l0 = self.box_MultipleOR_181;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1157261953", "1157261953", "MIS_025_B20", "box_MultipleOR_181.Out", "box_IsPawnAlive_v3_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_203_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_153();
    l0 = self.box_MultipleOR_203;
    l1 = self.box_ProximityRadiusListener_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1585921192", "1585921192", "MIS_025_B20", "box_MultipleOR_203.Out", "box_ProximityRadiusListener_v3_153.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_187_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_OnceOnly_v3_187;
    l1 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|703143704", "703143704", "MIS_025_B20", "box_OnceOnly_v3_187.Out", "box_PlayDialog_v6_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PersistentParticlesModifier_133_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_134();
    l0 = self.box_PersistentParticlesModifier_133;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|121051001", "121051001", "MIS_025_B20", "box_PersistentParticlesModifier_133.OnStopParticles", "box_MissionBlockLayer_134.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_116_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_113();
    l0 = self.box_MultipleOR_116;
    l1 = self.box_MultipleAND_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|338154788", "338154788", "MIS_025_B20", "box_MultipleOR_116.Out", "box_MultipleAND_v2_113.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ParticleSystem_v3_100_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|999095876", "999095876", "MIS_025_B20", "box_ParticleSystem_v3_100.Started", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_122_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_122;
    l1 = self.box_OnceOnly_v3_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2131634772", "2131634772", "MIS_025_B20", "box_MultipleOR_122.Out", "box_OnceOnly_v3_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_120_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|544457380", "544457380", "MIS_025_B20", "box_IsEntityLoaded_v3_120.True", "box_OnceOnly_v3_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PersistentParticlesModifier_47_OnStartParticles()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_PersistentParticlesModifier_47;
    l1 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|941066845", "941066845", "MIS_025_B20", "box_PersistentParticlesModifier_47.OnStartParticles", "box_Delay_v5_132.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_132_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_131();
    l0 = self.box_Delay_v5_132;
    l1 = self.box_SoundModifier_v2_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1954719272", "1954719272", "MIS_025_B20", "box_Delay_v5_132.Started", "box_SoundModifier_v2_131.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_132_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_129();
    l0 = self.box_Delay_v5_132;
    l1 = self.box_PersistentParticlesModifier_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1742480200", "1742480200", "MIS_025_B20", "box_Delay_v5_132.TimeElapsed", "box_PersistentParticlesModifier_129.StartParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartParticles
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_96();
    l0 = self.box_MultipleOR_59;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|854773592", "854773592", "MIS_025_B20", "box_MultipleOR_59.Out", "box_IsPawnAlive_v3_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_87_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_80();
    l0 = self.box_Gate_v3_87;
    l1 = self.box_PlayDialog_v6_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1348920944", "1348920944", "MIS_025_B20", "box_Gate_v3_87.Closed", "box_PlayDialog_v6_80.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_80();
    l0 = self.box_Gate_v3_87;
    l1 = self.box_PlayDialog_v6_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|407083408", "407083408", "MIS_025_B20", "box_Gate_v3_87.Out", "box_PlayDialog_v6_80.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_149_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_151();
    l0 = self.box_ProximityRadiusListener_v3_149;
    l1 = self.box_PlayDialog_v6_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1738829579", "1738829579", "MIS_025_B20", "box_ProximityRadiusListener_v3_149.Disabled", "box_PlayDialog_v6_151.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_149_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_43();
    l0 = self.box_ProximityRadiusListener_v3_149;
    l1 = self.box_HealthListener_v6_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|501592532", "501592532", "MIS_025_B20", "box_ProximityRadiusListener_v3_149.Enabled", "box_HealthListener_v6_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_149_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_149;
    l1 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|510382621", "510382621", "MIS_025_B20", "box_ProximityRadiusListener_v3_149.SomeoneNear", "box_OnceOnly_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_190_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_193();
    l0 = self.box_EntityStatusListener_190;
    l1 = self.box_Delay_v5_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1483321921", "1483321921", "MIS_025_B20", "box_EntityStatusListener_190.Loaded", "box_Delay_v5_193.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_146();
    l0 = self.box_OnceOnly_v3_19;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|908033470", "908033470", "MIS_025_B20", "box_OnceOnly_v3_19.Out", "box_SetContextualStrategy_146.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_173_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_Delay_v5_173;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|811447001", "811447001", "MIS_025_B20", "box_Delay_v5_173.TimeElapsed", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_147_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_147;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|996922302", "996922302", "MIS_025_B20", "box_MultipleOR_147.Out", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_MultipleOR_88;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|509262827", "509262827", "MIS_025_B20", "box_MultipleOR_88.Out", "box_ActivityEnd_7.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_106_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_106;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1588306406", "1588306406", "MIS_025_B20", "box_OnceOnly_v3_106.Out", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_123_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|322776743", "322776743", "MIS_025_B20", "box_IsValueNil_v3_123.No", "box_MultipleOR_118.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_123_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_115();
    l0 = self.box_CharacterLoadedIdListener_v2_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|799936185", "799936185", "MIS_025_B20", "box_IsValueNil_v3_123.Yes", "box_CharacterLoadedIdListener_v2_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_111_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_111;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|503802912", "503802912", "MIS_025_B20", "box_Delay_v5_111.Stopped", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_111_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_110();
    l0 = self.box_Delay_v5_111;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1751035518", "1751035518", "MIS_025_B20", "box_Delay_v5_111.TimeElapsed", "box_GetActivityFact_110.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeTest_105_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_107();
    l0 = self.box_GroupSizeTest_105;
    l1 = self.box_GroupSizeListener_v6_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|635935915", "635935915", "MIS_025_B20", "box_GroupSizeTest_105.Enabled", "box_GroupSizeListener_v6_107.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeTest_105_OnSize()
    local l0, l1;
    l0 = self.box_GroupSizeTest_105;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|426649947", "426649947", "MIS_025_B20", "box_GroupSizeTest_105.OnSize", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_145_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_148();
    l0 = self.box_SpawnAI_145;
    l1 = self.box_SpawnAI_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|895982264", "895982264", "MIS_025_B20", "box_SpawnAI_145.Out", "box_SpawnAI_148.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_24_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_OnceOnly_v3_24;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|673014151", "673014151", "MIS_025_B20", "box_OnceOnly_v3_24.Out", "box_PlayDialog_v6_23.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_175_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_175;
    l1 = self.box_OnceOnly_v3_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1558663678", "1558663678", "MIS_025_B20", "box_MultipleOR_175.Out", "box_OnceOnly_v3_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_211_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_211();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|43610145", "43610145", "MIS_025_B20", "box_UseContextualActionModifier_v3_211.Enabled", "box_UseContextualActionModifier_v3_211.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_101();
    l0 = self.box_MultipleOR_103;
    l1 = self.box_Delay_v5_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1452902715", "1452902715", "MIS_025_B20", "box_MultipleOR_103.Out", "box_Delay_v5_101.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_208_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_188();
    l0 = self.box_OnceOnly_v3_208;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1695960274", "1695960274", "MIS_025_B20", "box_OnceOnly_v3_208.Out", "box_SetContextualStrategy_188.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_68_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|599417371", "599417371", "MIS_025_B20", "box_PlayDialog_v6_68.QueueCancelled", "box_PlayDialog_v6_68.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_152();
    l0 = self.box_MultipleOR_78;
    l1 = self.box_PlayDialog_v6_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1816882858", "1816882858", "MIS_025_B20", "box_MultipleOR_78.Out", "box_PlayDialog_v6_152.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_134_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_135();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1233453447", "1233453447", "MIS_025_B20", "box_MissionBlockLayer_134.Activated", "box_MissionBlockLayer_135.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_41_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_41;
    l1 = self.box_OnceOnly_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1122272628", "1122272628", "MIS_025_B20", "box_MultipleOR_41.Out", "box_OnceOnly_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_86();
    l0 = self.box_Delay_v5_52;
    l1 = self.box_ProximityRadiusListener_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1322115886", "1322115886", "MIS_025_B20", "box_Delay_v5_52.TimeElapsed", "box_ProximityRadiusListener_v3_86.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|263488118", "263488118", "MIS_025_B20", "box_OutputOrder_v2_93.Out", "box_OnceOnly_v3_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_94();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1780469611", "1780469611", "MIS_025_B20", "box_OutputOrder_v2_93.Out", "box_IsPawnAlive_v3_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_57_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_117();
    l0 = self.box_OnceOnly_v3_57;
    l1 = self.box_PlayDialog_v6_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|799849506", "799849506", "MIS_025_B20", "box_OnceOnly_v3_57.Out", "box_PlayDialog_v6_117.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_156_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_149();
    l0 = self.box_MultipleOR_156;
    l1 = self.box_ProximityRadiusListener_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|127318009", "127318009", "MIS_025_B20", "box_MultipleOR_156.Out", "box_ProximityRadiusListener_v3_149.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_77_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_77;
    l1 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|839755128", "839755128", "MIS_025_B20", "box_Delay_v5_77.Started", "box_MultipleOR_147.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_89();
    l0 = self.box_Delay_v5_77;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1976603347", "1976603347", "MIS_025_B20", "box_Delay_v5_77.TimeElapsed", "box_Compare_Boolean_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_205_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_83();
    l0 = self.box_MultipleOR_205;
    l1 = self.box_ProximityRadiusListener_v3_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1326179171", "1326179171", "MIS_025_B20", "box_MultipleOR_205.Out", "box_ProximityRadiusListener_v3_83.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_97_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2115946298", "2115946298", "MIS_025_B20", "box_UseContextualActionModifier_v3_97.Enabled", "box_SpawnAI_30.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_97_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_210();
    l0 = self.box_InventoryItemModifier_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1814161363", "1814161363", "MIS_025_B20", "box_UseContextualActionModifier_v3_97.UseCalled", "box_InventoryItemModifier_210.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(3, params);
end;

function export:f_box_StateListener_v2_31_Disabled()
    local l0, l1;
    l0 = self.box_StateListener_v2_31;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|937911454", "937911454", "MIS_025_B20", "box_StateListener_v2_31.Disabled", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StateListener_v2_31_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_31;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1880571171", "1880571171", "MIS_025_B20", "box_StateListener_v2_31.StateStart", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_182_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_182;
    l1 = self.box_OnceOnly_v3_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1723050466", "1723050466", "MIS_025_B20", "box_MultipleOR_182.Out", "box_OnceOnly_v3_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_65_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1142580679", "1142580679", "MIS_025_B20", "box_PlayDialog_v6_65.Finished", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_65_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|629342741", "629342741", "MIS_025_B20", "box_PlayDialog_v6_65.FinishedInterrupted", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_65_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|268695402", "268695402", "MIS_025_B20", "box_PlayDialog_v6_65.QueueCancelled", "box_PlayDialog_v6_65.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_65_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1697641234", "1697641234", "MIS_025_B20", "box_PlayDialog_v6_65.Stopped", "box_PlayDialog_v6_68.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_170_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_170;
    l1 = self.box_OnceOnly_v3_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1995825767", "1995825767", "MIS_025_B20", "box_MultipleOR_170.Out", "box_OnceOnly_v3_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_166_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_168();
    l0 = self.box_ProximityRadiusListener_v3_166;
    l1 = self.box_PlayDialog_v6_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|871678459", "871678459", "MIS_025_B20", "box_ProximityRadiusListener_v3_166.Disabled", "box_PlayDialog_v6_168.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_166_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_168();
    l0 = self.box_ProximityRadiusListener_v3_166;
    l1 = self.box_PlayDialog_v6_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|715545193", "715545193", "MIS_025_B20", "box_ProximityRadiusListener_v3_166.SomeoneNear", "box_PlayDialog_v6_168.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_144();
    l0 = self.box_SpawnAI_30;
    l1 = self.box_SpawnAI_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|948587423", "948587423", "MIS_025_B20", "box_SpawnAI_30.Out", "box_SpawnAI_144.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_MultipleOR_71;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2097201624", "2097201624", "MIS_025_B20", "box_MultipleOR_71.Out", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_86_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_37();
    l0 = self.box_ProximityRadiusListener_v3_86;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|797200684", "797200684", "MIS_025_B20", "box_ProximityRadiusListener_v3_86.Disabled", "box_IsPawnAlive_v3_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_86_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_86();
    l0 = self.box_ProximityRadiusListener_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1335364379", "1335364379", "MIS_025_B20", "box_ProximityRadiusListener_v3_86.SomeoneNear", "box_ProximityRadiusListener_v3_86.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_139_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_139_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_137();
    l0 = self.box_PlayDialog_v6_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|686619618", "686619618", "MIS_025_B20", "box_SetBoolean_v2_139.Out", "box_PlayDialog_v6_137.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_193_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = self.box_Delay_v5_193;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1274945481", "1274945481", "MIS_025_B20", "box_Delay_v5_193.TimeElapsed", "box_UseContextualActionModifier_v3_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_23_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1480577164", "1480577164", "MIS_025_B20", "box_PlayDialog_v6_23.Finished", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_23_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1586416818", "1586416818", "MIS_025_B20", "box_PlayDialog_v6_23.FinishedInterrupted", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_23_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|872978537", "872978537", "MIS_025_B20", "box_PlayDialog_v6_23.QueueCancelled", "box_PlayDialog_v6_23.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_23_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1254122072", "1254122072", "MIS_025_B20", "box_PlayDialog_v6_23.Stopped", "box_PlayDialog_v6_26.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|@alarm_started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_128()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/63058540764425256.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|6979716");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_025_B20 Mission Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_43()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2109620937983795434",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|63314607");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "MIS_025_B20_Hostage_3_Resqued",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2109276113820723499",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|74570807");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_124_Out,
    });
    params = {
        -- Entity,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|98220641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_55_Out,
    });
    params = {
        -- Entity,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_9()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "2078697915",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_204()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2109218234000486098",
    };
    return params;
end;

function export:OnEnter_box_Switch_102()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|155796415");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
                [3] = self.f_box_OutputOrder_v2_12_Out_3,
                [4] = self.f_box_OutputOrder_v2_12_Out_4,
                [5] = self.f_box_OutputOrder_v2_12_Out_5,
            },
            count = 6,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|157299439");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|173635462");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_91_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_178()
    local params;
    params = {
        -- Group,
        [0] = self.npc_diag,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4073227805",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_151()
    local params;
    params = {
        -- Group,
        [0] = "2109620937983795434",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2957751061",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_53()
    local params;
    params = {
        -- Hostage,
        [0] = "2109276113810237737",
        -- STP_Tied,
        [1] = "2109320637857203734",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_117()
    local params;
    params = {
        -- Group,
        [0] = "2109276113810237737",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2422427423",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|219310358");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_184_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_184_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_184_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_84()
    local params;
    params = {
        -- Group,
        [0] = "2109218234000486098",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1679717459",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|241800794");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_112_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_112_Yes,
    });
    params = {
        -- ent,
        [4] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_107()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#281285C6",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_138()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1269429788",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_150()
    local params;
    params = {
        -- Group,
        [0] = "2109620937983795434",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1305073682",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|269100744");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_74_Out,
    });
    params = {
        -- Message,
        [0] = "MIS_025_B20_Started",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_152()
    local params;
    params = {
        -- Group,
        [0] = "2109620937983795434",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1967728495",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|279201328");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_11_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_11_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_58;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = self.highwaymen_left,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|285104531");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_146_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109748565038341117",
        -- Group,
        [1] = "2109620937987989740",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|295058368");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_126_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_126_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_126_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109595146950554432",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_60()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_191()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109403660596293142",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|429989408");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
                [1] = self.f_box_OutputOrder_v2_114_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|434658967");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_6_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109661628264876915",
        -- Entity,
        [2] = "2109218234000486098",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_168()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1960441012",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_70()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|447244123");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109566155726278260",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|456652177");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_89_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_89_A_is_True,
    });
    params = {
        -- A,
        [0] = self.combat_started,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_34()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109276113795557661",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_51()
    local params;
    params = {
        -- Group,
        [0] = self.npc_diag,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "90416552",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = "2109650319509036334",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3787394943",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_35()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109276113776683268",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_129()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/9015345236642318.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_27()
    local params;
    params = {
        -- Group,
        [0] = "2109650319509036334",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2471085831",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_50()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#281285C6",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|614479544");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_96_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_96_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_96_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2109246989366472113",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 10.5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_189()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_18()
    local params;
    params = {
        -- Group,
        [0] = "#EE56D8E9",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 1,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_192()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_115()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|662464397");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_75_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_75_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_75_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_101()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_196()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_140()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2705084996",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_63()
    local params;
    params = {
        -- Group,
        [0] = "2109276113820723499",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "216323739",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|763700639");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_94_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|786804808");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_110_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_ALARM",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_161()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2109247371614359124",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|808240188");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_37_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_37_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_37_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|808894820");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_148()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109620937969115353",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|813187097");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_121_Out,
    });
    params = {
        -- Entity,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|827991430");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
                [3] = self.f_box_OutputOrder_v2_22_Out_3,
                [4] = self.f_box_OutputOrder_v2_22_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2109218234000486098",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 10.5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|875832696");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_183_Out,
    });
    params = {
        -- Entity,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_153()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2109650319509036334",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109246989362277803",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|916454708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_176_Out,
    });
    params = {
        -- Entity,
        [0] = "2109595146950554432",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|929262620");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_14_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109246971991567755",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_17()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "3551202739",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109247371610164812",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = "2109246989366472113",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "416080671",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_202()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2109650319509036334",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_206()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2109247371614359124",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1024574361");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109776484477443246",
        -- Group,
        [1] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1052309924");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_64_Out,
    });
    params = {
        -- Fact,
        [0] = "MIS_025_B20_AlarmMode",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_42()
    local params;
    params = {
        -- Group,
        [0] = "2109276113810237737",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3895954798",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1069428170");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_199_OnSet,
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_199_OnUnSet,
    });
    params = {
        -- Pawn,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1092032882");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1158000447");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_109_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_107;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = self.highwaymen_left,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1171159103");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1196038403");
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
                [0] = self.f_box_OutputOrder_v2_158_Out_0,
                [1] = self.f_box_OutputOrder_v2_158_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_142()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_131()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "3946169835",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_81()
    local params;
    params = {
        -- Group,
        [0] = "2109246989366472113",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2255243911",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1240279345");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
                [1] = self.f_box_OutputOrder_v2_195_Out_1,
                [2] = self.f_box_OutputOrder_v2_195_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1241254215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_201_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109776484477443246",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1249375048");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
                [2] = self.f_box_OutputOrder_v2_54_Out_2,
                [3] = self.f_box_OutputOrder_v2_54_Out_3,
                [4] = self.f_box_OutputOrder_v2_54_Out_4,
                [6] = self.f_box_OutputOrder_v2_54_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1268368900");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_194_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_194_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109430766952812260",
        -- Entity,
        [2] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1273910631");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1279760654");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "MIS_025_B20_Hostage_3_Killed",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_136()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2460749638",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1291778742");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_119()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870637778",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1333938599");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_135_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317620781682",
        -- missionLayerId,
        [1] = "36167516875522675",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1336980963");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_179_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_179_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_179_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_125()
    local params;
    params = {
        -- Group,
        [0] = self.npc_diag,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2842817871",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_164()
    local params;
    params = {
        -- Group,
        [0] = "2109247371614359124",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "275390664",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1367770059");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_188_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109748565038341117",
        -- Group,
        [1] = "#485E4BF9",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1376273949");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_177_Out,
    });
    params = {
        -- Entity,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1378206222");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109276113793460506",
        -- Group,
        [1] = "#281285C6",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109524581128608894",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_95()
    local params;
    params = {
        -- Group,
        [0] = "#281285C6",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = self.highwaymen_left,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_80()
    local params;
    params = {
        -- Group,
        [0] = "2109246989366472113",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2054090243",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_127()
    local params;
    params = {
        -- Group,
        [0] = "2109843415182093854",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2460749638",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_58()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#281285C6",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_144()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109650319504842024",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1458582887");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109554638385587986",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_213()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_113()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_162()
    local params;
    params = {
        -- Group,
        [0] = "2109247371614359124",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2715048805",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_130()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "1317995542",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_15()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#281285C6",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_137()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1038473760",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_92()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_163()
    local params;
    params = {
        -- Group,
        [0] = "2109247371614359124",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4172368731",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_157()
    local params;
    params = {
        -- Group,
        [0] = "2109620937987989740",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4099931371",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_69()
    local params;
    params = {
        -- Group,
        [0] = "2109843415182093854",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1038473760",
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
        [6] = "4047574385",
        -- StopEvent,
        [7] = "1903774645",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_133()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/9015344725208974.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1680633426");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_100_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109474366042420236",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1718858072");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_120_True,
    });
    params = {
        -- entityId,
        [0] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_47()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/9015344725208974.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_132()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_87()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2109620937983795434",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_190()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109218234000486098",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_210()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015352507343832",
        -- players,
        [2] = "2109276113810237737",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_173()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1822326097");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_123_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_123_Yes,
    });
    params = {
        -- ent,
        [4] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_111()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_105()
    local params;
    params = {
        -- Group,
        [0] = "#281285C6",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = self.highwaymen_left,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_145()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109620937975406818",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1884497670");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_211_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109430785990758122",
        -- Entity,
        [2] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1901291532");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    params = {
        -- Group,
        [0] = "2109276113820723499",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4194250280",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1958931178");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_134_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317620781682",
        -- missionLayerId,
        [1] = "54181915385324033",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|1991815728");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
            },
            count = 3,
        },
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
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2021714075");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_97_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_97_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109320637857203734",
        -- Entity,
        [2] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_31()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#281285C6",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    params = {
        -- Group,
        [0] = "2109276113820723499",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3682647496",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_166()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- id2,
        [3] = "2109524581128608894",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109218233994194636",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#485E4BF9",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B20.domino|@MIS_025_B20|2126251490");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_139_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_193()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_169()
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
        [6] = "4047574385",
        -- StopEvent,
        [7] = "1903774645",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = "2109650319509036334",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3553784727",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_124_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.npc_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.npc_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.highwaymen_left = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_115_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_115;
    PersistentGlobals.MIS_025_Manager.rush = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.combat_started = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.npc_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_183_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.npc_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_176_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.npc_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_119_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_119;
    PersistentGlobals.MIS_025_Manager.barnes = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_177_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.npc_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_139_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_025_Manager.alarm_hgm_diag = l0:GetDataOutValue(0);
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
