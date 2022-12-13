LUACSR -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_025/mis_025_b40.domino
-- User graph: MIS_025_B40
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/EntityPreconditionListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/GroupSizeTest.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListGetRandom.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
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
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B40.MIS_025_B40_RespawnManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B40.MIS_025_TwinsIntro.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2596893313.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2323568255.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015345236642318.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[256296868.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4047574385.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3405292301.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1186542764.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3504735082.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/63058549911183370.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[3794843631.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/63058540764425256.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[3900798261.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015344725208974.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[1162620898.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2326602970.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2078697915.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1317995542.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1903774645.bnk]], "CSoundResource");
        cboxRes:LoadResource([[530853209.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1162263423.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3293524107.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B40.MIS_025_B40.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/EntityPreconditionListener_v2.lua")] = {
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
                name = "PreconditionMet",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
            [2] = {
                name = "EntityPreconditionId",
                type = "database",
            },
            [3] = {
                name = "TestOnEnable",
                type = "bool",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Coop/AllPlayers/GodMode_v3.lua")] = {
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
                name = "disableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "Mode",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")] = {
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Pawns",
                type = "list",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/CreateVector3.lua")] = {
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
                name = "x",
                type = "float",
            },
            [1] = {
                name = "y",
                type = "float",
            },
            [2] = {
                name = "z",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "vector3",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/FloatArithmetics_v2.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Distance",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/ListGetRandom.lua")] = {
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
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "triggerId",
                type = "entity",
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
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B40.MIS_025_B40_RespawnManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ChangeBattlefield_RespawnArmory",
            },
            [1] = {
                name = "Disable_Respawn",
            },
            [2] = {
                name = "Disable_VehSpawnArmory",
            },
            [3] = {
                name = "Disable_VehSpawnRTower",
            },
            [4] = {
                name = "Enable_RespawnArmory",
            },
            [5] = {
                name = "Enable_RespawnRTower",
            },
            [6] = {
                name = "SpawnMotor_RTower",
            },
            [7] = {
                name = "SpawnVeh_Armory",
            },
            [8] = {
                name = "SpawnVeh_RTower",
            },
            [9] = {
                name = "StartAlarmFireworks",
            },
            [10] = {
                name = "Update_MaxNPC_limit",
            },
        },
        controlInCount = 11,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "max_npc_limit",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B40.MIS_025_TwinsIntro.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "End",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_025_B40";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40";
    self.Player = nil;
    self.npc_limit = 6;
    self.compan_nonpers = nil;
    self.box_SpawnAI_192 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|22138095");
    l0:SetConnections({
    });
    self.box_MissionAckTriggerListener_233 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|40172590");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MissionAckTriggerListener_233_Disabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_233_Enter,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|58682093");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_PlayDialog_v6_60 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|61692708");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_60_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_60_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_60_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_60_Stopped,
    });
    self.box_SoundModifier_v2_69 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|74904666");
    l0:SetConnections({
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|86633393");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_266 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|87599440");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_266_Disabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_266_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_266_SomeoneNear,
    });
    self.box_PlayDialog_v6_59 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|88527247");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_59_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_59_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_59_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_59_Stopped,
    });
    self.box_GroupSizeTest_252 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|107052056");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_252_OnSize,
    });
    self.box_OnceOnly_v3_207 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|111092682");
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
                [0] = self.f_box_OnceOnly_v3_207_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|112309192");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_57_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_57_FinishedInterrupted,
    });
    self.box_Music_Quest_v2_189 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|113189928");
    l0:SetConnections({
    });
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|123787496");
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
    self.box_Delay_v5_158 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|128190180");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_158_TimeElapsed,
    });
    self.box_Delay_v5_142 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|186658362");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_142_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_142_TimeElapsed,
    });
    self.box_MIS_025_TwinsIntro_19 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B40.MIS_025_TwinsIntro.debug.lua");
    l0 = self.box_MIS_025_TwinsIntro_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_025_TwinsIntro_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|201199879");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_MIS_025_TwinsIntro_19_End,
        -- Out,
        [1] = self.f_box_MIS_025_TwinsIntro_19_Out,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|221412507");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_38_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_38_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_38_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_38_Stopped,
    });
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|253548793");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_OnceOnly_v3_235 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|255113989");
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
                [0] = self.f_box_OnceOnly_v3_235_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_154 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|265294058");
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
    self.box_MultipleAND_v2_182 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|271471582");
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
        [0] = self.f_box_MultipleAND_v2_182_Out,
    });
    self.box_Delay_v5_197 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|272470028");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_197_TimeElapsed,
    });
    self.box_Gate_v3_75 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|279126471");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_75_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_75_Out,
    });
    self.box_GroupSizeTest_150 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|305692999");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_150_OnSize,
    });
    self.box_MultipleOR_241 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|314243035");
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
        [0] = self.f_box_MultipleOR_241_Out,
    });
    self.box_Delay_v5_114 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|321756445");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_114_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_114_TimeElapsed,
    });
    self.box_EntityPreconditionListener_v2_64 = cbox:CreateBox("Domino/System/AI/EntityPreconditionListener_v2.lua");
    l0 = self.box_EntityPreconditionListener_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityPreconditionListener_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|325236933");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityPreconditionListener_v2_64_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_EntityPreconditionListener_v2_64_PreconditionMet,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|352027390");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_73_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_73_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_Delay_v5_242 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|352377782");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_242_TimeElapsed,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|356868797");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_PersistentParticlesModifier_135 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|399212552");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_135_OnStopParticles,
    });
    self.box_RequestPhoneCall_v2_128 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|401840224");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_128_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_128_Failed,
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|412363479");
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
    self.box_SpawnAI_117 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|413063353");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_117_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_117_Out,
    });
    self.box_MultipleOR_164 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|430639266");
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
        [0] = self.f_box_MultipleOR_164_Out,
    });
    self.box_GroupSizeTest_249 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|443507682");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_249_OnSize,
    });
    self.box_Delay_v5_171 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|450617176");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_171_TimeElapsed,
    });
    self.box_Delay_v5_137 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|458486414");
    l0:SetConnections({
        -- Paused,
        [1] = self.f_box_Delay_v5_137_Paused,
        -- Stopped,
        [4] = self.f_box_Delay_v5_137_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_137_TimeElapsed,
    });
    self.box_TeleportPawns_144 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|461215009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_144_Out,
    });
    self.box_PlayDialog_v6_219 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|473035662");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_219_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_219_FinishedInterrupted,
        -- Queued,
        [3] = self.f_box_PlayDialog_v6_219_Queued,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_219_StartedPriorityFailed,
    });
    self.box_CharacterLoadedIdListener_v2_175 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|476437048");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_175_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_175_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_175_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_175_LoadedIdReceived,
    });
    self.box_Bind_v4_28 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|485659935");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_28_Bound,
    });
    self.box_ProximityRadiusListener_v3_271 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|487980124");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_271_Disabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_271_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_271_SomeoneNear,
    });
    self.box_StaticBreakableListener_101 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|500571407");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_101_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_101_OnBreak,
    });
    self.box_SoundModifier_v2_45 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|513337690");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_45_Started,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|528723176");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_SoundModifier_v2_79 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|536245739");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_79_Started,
    });
    self.box_ProximityRadiusListener_v3_243 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|537363422");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_243_AllFar,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_243_Disabled,
    });
    self.box_OnceOnly_v3_76 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|552907089");
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
    self.box_Switch_100 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|560490104");
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
                [0] = self.f_box_Switch_100_Output_0,
                [1] = self.f_box_Switch_100_Output_1,
                [2] = self.f_box_Switch_100_Output_2,
                [3] = self.f_box_Switch_100_Output_3,
            },
            count = 4,
        },
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|592334933");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_97_LoopingEnded,
        -- Stopped,
        [4] = self.f_box_Delay_v5_97_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|608554654");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_8_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_RemoveEntity_v2_223 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|623058358");
    l0:SetConnections({
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|625290001");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|654521655");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_PersistentParticlesModifier_66 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|707543698");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_66_OnStopParticles,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|715499375");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|727709046");
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
        [0] = self.f_box_MultipleOR_99_Out,
    });
    self.box_MultipleOR_186 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|728387071");
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
        [0] = self.f_box_MultipleOR_186_Out,
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|730660332");
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
        [0] = self.f_box_MultipleOR_93_Out,
    });
    self.box_CharacterLoadedIdListener_v2_179 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|735019647");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_179_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_179_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_179_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_179_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_58 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|754473862");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_58_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_58_FinishedInterrupted,
    });
    self.box_OnceOnly_v3_198 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|794489001");
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
                [0] = self.f_box_OnceOnly_v3_198_Out_0,
            },
            count = 1,
        },
    });
    self.box_HealthListener_v6_24 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|804786682");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_24_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_24_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_24_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_24_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_24_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_24_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_24_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_24_Revived,
    });
    self.box_MultipleOR_216 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|822641383");
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
        [0] = self.f_box_MultipleOR_216_Out,
    });
    self.box_HealthListener_v6_269 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|828520294");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_269_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_269_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_269_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_269_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_269_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_269_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_269_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_269_Revived,
    });
    self.box_PlayDialog_v6_217 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|845847506");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_217_Finished,
    });
    self.box_RemoveEntity_v2_226 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|860943481");
    l0:SetConnections({
    });
    self.box_SpawnAI_196 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|862707488");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_196_Spawned,
    });
    self.box_SpawnAI_54 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|871587518");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_54_Out,
    });
    self.box_SpawnAI_77 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|878304465");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_77_Out,
    });
    self.box_SpawnAI_147 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|881249278");
    l0:SetConnections({
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|884091442");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_49_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_Gate_v3_105 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|887803152");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_105_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_105_Out,
    });
    self.box_MultipleOR_231 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|902253294");
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
        [0] = self.f_box_MultipleOR_231_Out,
    });
    self.box_GroupSizeTest_245 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|944790074");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GroupSizeTest_245_Enabled,
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_245_OnSize,
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|968102873");
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
    self.box_MultipleOR_124 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1009565345");
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
        [0] = self.f_box_MultipleOR_124_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1015988866");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_MultipleOR_268 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1018526809");
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
        [0] = self.f_box_MultipleOR_268_Out,
    });
    self.box_OnceOnly_v3_232 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1030347875");
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
                [0] = self.f_box_OnceOnly_v3_232_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_201 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1054733253");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_201_TimeElapsed,
    });
    self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1071597776");
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
    self.box_Delay_v5_156 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1083797188");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_156_TimeElapsed,
    });
    self.box_GroupSizeTest_256 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1085811114");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_256_OnSize,
    });
    self.box_HealthListener_v6_48 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1087757158");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_48_Critical,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_48_Disabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_48_Killed,
    });
    self.box_Gate_v3_87 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1090542797");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_87_Out,
    });
    self.box_MultipleOR_209 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1091424385");
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
    self.box_SoundModifier_v2_78 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1102104308");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_78_Started,
    });
    self.box_MultipleAND_v2_218 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1118999074");
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
        [0] = self.f_box_MultipleAND_v2_218_Out,
    });
    self.box_Delay_v5_132 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1123363141");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_132_TimeElapsed,
    });
    self.box_MultipleOR_234 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1126784842");
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
        [0] = self.f_box_MultipleOR_234_Out,
    });
    self.box_MultipleOR_140 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1133054337");
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
        [0] = self.f_box_MultipleOR_140_Out,
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1162411065");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_MultipleOR_110 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1167472213");
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
        [0] = self.f_box_MultipleOR_110_Out,
    });
    self.box_ProximityTrigger_v3_185 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1173840021");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_185_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_185_OnOccupied,
    });
    self.box_GodMode_v3_35 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1181949144");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GodMode_v3_35_Disabled,
        -- Enabled,
        [1] = self.f_box_GodMode_v3_35_Enabled,
    });
    self.box_MultipleOR_248 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1182142324");
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
        [0] = self.f_box_MultipleOR_248_Out,
    });
    self.box_HealthListener_v6_163 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1191518251");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_163_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_163_Revived,
    });
    self.box_OnceOnly_v3_55 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1196874646");
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
                [0] = self.f_box_OnceOnly_v3_55_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1227171772");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_44_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_PlayDialog_v6_213 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1237841331");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_213_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_213_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_213_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_213_Stopped,
    });
    self.box_PersistentParticlesModifier_238 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1240608905");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_238_OnStopParticles,
    });
    self.box_PositionModifier_v2_120 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1244204481");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_120_Done,
    });
    self.box_Delay_v5_68 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1268232441");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_68_TimeElapsed,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1269691193");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_42_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1287916336");
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
        [0] = self.f_box_MultipleOR_72_Out,
    });
    self.box_RequestPhoneCall_v2_41 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1292249755");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_41_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_41_Failed,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1304433394");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1337305016");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_GroupSizeTest_91 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1347750415");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_91_OnSize,
    });
    self.box_GroupSizeListener_v6_246 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1349516370");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_246_Disabled,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_246_MemberRemoved,
    });
    self.box_RemoveEntity_v2_254 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1396596599");
    l0:SetConnections({
    });
    self.box_MultipleOR_127 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1406117643");
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
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1411116137");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_EntityPreconditionListener_v2_122 = cbox:CreateBox("Domino/System/AI/EntityPreconditionListener_v2.lua");
    l0 = self.box_EntityPreconditionListener_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityPreconditionListener_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1441318320");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_EntityPreconditionListener_v2_122_PreconditionMet,
    });
    self.box_ProximityTrigger_v3_206 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1442279522");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_206_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_206_OnOccupied,
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1450655578");
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
        [0] = self.f_box_MultipleOR_74_Out,
    });
    self.box_MIS_025_B40_RespawnManager_10 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B40.MIS_025_B40_RespawnManager.debug.lua");
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_025_B40_RespawnManager_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1452561902");
    l0:SetConnections({
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1463742870");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1469157619");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1478219158");
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
        [0] = self.f_box_MultipleOR_81_Out,
    });
    self.box_SpawnAI_250 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1515712513");
    l0:SetConnections({
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1530494482");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_7_Out,
    });
    self.box_MultipleOR_273 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1552824842");
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
        [0] = self.f_box_MultipleOR_273_Out,
    });
    self.box_HealthListener_v6_32 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1566786430");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_32_Critical,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_32_Disabled,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1583098236");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_Delay_v5_116 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1607517819");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_116_TimeElapsed,
    });
    self.box_Delay_v5_279 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1610647151");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_279_TimeElapsed,
    });
    self.box_SpawnAI_82 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1628727377");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_82_Out,
    });
    self.box_MultipleOR_131 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1650522049");
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
    self.box_GroupSizeTest_191 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1655979569");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_191_OnSize,
    });
    self.box_GroupSizeTest_247 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1681981302");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_247_OnSize,
    });
    self.box_Music_Quest_v2_188 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1682994626");
    l0:SetConnections({
    });
    self.box_Gate_v3_157 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1736703421");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_157_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_157_Out,
    });
    self.box_Delay_v5_167 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1746138618");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_167_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_167_TimeElapsed,
    });
    self.box_Delay_v5_190 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1748898097");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_190_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_136 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1750156664");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_136_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_136_SomeoneNear,
    });
    self.box_PlayDialog_v6_96 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1753359422");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_96_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_96_Stopped,
    });
    self.box_MissionAckTriggerListener_251 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1760519644");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_251_Enter,
    });
    self.box_OnceOnly_v3_155 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1763111030");
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
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1783494199");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1790137598");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_Delay_v5_123 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1816914440");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_123_TimeElapsed,
    });
    self.box_PersistentParticlesModifier_204 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1825446739");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_204_OnStopParticles,
    });
    self.box_MultipleOR_212 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1829907195");
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
        [0] = self.f_box_MultipleOR_212_Out,
    });
    self.box_PlayDialog_v6_103 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1835579840");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_103_QueueCancelled,
    });
    self.box_RemoveEntity_v2_149 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1848529135");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_149_Out,
    });
    self.box_RemoveEntity_v2_221 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1880704992");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_221_Out,
    });
    self.box_GroupSizeTest_258 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1883789154");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_258_OnSize,
    });
    self.box_PlayDialog_v6_214 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1888915333");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_214_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_214_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_214_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_214_Stopped,
    });
    self.box_PlayDialog_v6_62 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1892279273");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_62_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_62_FinishedInterrupted,
    });
    self.box_MultipleOR_174 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1943773334");
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
    self.box_MultipleOR_113 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1944281651");
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
        [0] = self.f_box_MultipleOR_113_Out,
    });
    self.box_PlayDialog_v6_95 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1951292101");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_95_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_95_Stopped,
    });
    self.box_Gate_v3_94 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1980709840");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_94_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_94_Out,
    });
    self.box_Music_Quest_v2_261 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2000372564");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_104 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2011714626");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_104_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_104_Stopped,
    });
    self.box_MultipleOR_211 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2011766218");
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
        [0] = self.f_box_MultipleOR_211_Out,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2052142386");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_51_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_51_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2089705132");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2094958267");
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
    self.box_PlayDialog_v6_215 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2096064004");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_215_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_215_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_215_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_215_Stopped,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2115726475");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_20_Spawned,
    });
    self.box_GodMode_v3_36 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2128380531");
    l0:SetConnections({
    });
    self.box_MissionAckTriggerListener_18 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2140746194");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_18_Enter,
    });
    self.box_ProximityTrigger_v3_237 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2141877373");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_237_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_237_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_237_Enter,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1996178070", "1996178070", "MIS_025_B40", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_160_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_87();
    l0 = self.box_Gate_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2053316906", "2053316906", "MIS_025_B40", "box_Simple_Node_160.Out", "box_Gate_v3_87.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1911851145", "1911851145", "MIS_025_B40", "box_Simple_Node_160.Out", "box_Delay_v5_132.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_HealthListener_v6_163();
    l0 = self.box_HealthListener_v6_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2112744641", "2112744641", "MIS_025_B40", "box_Simple_Node_160.Out", "box_HealthListener_v6_163.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1115574720", "1115574720", "MIS_025_B40", "box_Simple_Node_160.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_279();
    l0 = self.box_Delay_v5_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2061314652", "2061314652", "MIS_025_B40", "box_Simple_Node_160.Out", "box_Delay_v5_279.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_271();
    l0 = self.box_ProximityRadiusListener_v3_271;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|121762504", "121762504", "MIS_025_B40", "box_Simple_Node_160.Out", "box_ProximityRadiusListener_v3_271.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_94();
    l0 = self.box_Gate_v3_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|517723210", "517723210", "MIS_025_B40", "box_Simple_Node_160.Out", "box_Gate_v3_94.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_190();
    l0 = self.box_Delay_v5_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1437224197", "1437224197", "MIS_025_B40", "box_Simple_Node_160.Out", "box_Delay_v5_190.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_201();
    l0 = self.box_Delay_v5_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1147504622", "1147504622", "MIS_025_B40", "box_Simple_Node_160.Out", "box_Delay_v5_201.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1805051774", "1805051774", "MIS_025_B40", "box_Simple_Node_160.Out", "box_Delay_v5_130.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|694130801", "694130801", "MIS_025_B40", "box_Simple_Node_160.Out", "box_MIS_025_B40_RespawnManager_10.Disable_Respawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Respawn
    l0:Exec(1, params);
    params = self:OnEnter_box_HealthListener_v6_24();
    l0 = self.box_HealthListener_v6_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1731627982", "1731627982", "MIS_025_B40", "box_Simple_Node_160.Out", "box_HealthListener_v6_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_157();
    l0 = self.box_Gate_v3_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|650376805", "650376805", "MIS_025_B40", "box_Simple_Node_112.Out", "box_Gate_v3_157.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1059724287", "1059724287", "MIS_025_B40", "box_Simple_Node_112.Out", "box_MultipleOR_186.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_180_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_178();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1298642068", "1298642068", "MIS_025_B40", "box_OutputOrder_v2_180.Out", "box_IsValueNil_v3_178.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_177();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1614895520", "1614895520", "MIS_025_B40", "box_OutputOrder_v2_180.Out", "box_IsValueNil_v3_177.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_118_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_118_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_126();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2081453582", "2081453582", "MIS_025_B40", "box_FloatArithmetics_v2_118.Out", "box_FloatArithmetics_v2_126.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_233_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_MissionAckTriggerListener_233;
    l1 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1320806337", "1320806337", "MIS_025_B40", "box_MissionAckTriggerListener_233.Disabled", "box_Delay_v5_73.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MissionAckTriggerListener_233_Enter()
    local params, l0;
    params = self:OnEnter_box_MissionAckTriggerListener_233();
    l0 = self.box_MissionAckTriggerListener_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|414373891", "414373891", "MIS_025_B40", "box_MissionAckTriggerListener_233.Enter", "box_MissionAckTriggerListener_233.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1243683356", "1243683356", "MIS_025_B40", "box_OutputOrder_v2_111.Out", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_205();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1111574233", "1111574233", "MIS_025_B40", "box_OutputOrder_v2_111.Out", "box_SetContextualStrategy_205.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_MultipleOR_63;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|114278235", "114278235", "MIS_025_B40", "box_MultipleOR_63.Out", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_60_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_60;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2018893986", "2018893986", "MIS_025_B40", "box_PlayDialog_v6_60.Finished", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_60_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_60;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|867978823", "867978823", "MIS_025_B40", "box_PlayDialog_v6_60.FinishedInterrupted", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_60_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_60();
    l0 = self.box_PlayDialog_v6_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1891780606", "1891780606", "MIS_025_B40", "box_PlayDialog_v6_60.QueueCancelled", "box_PlayDialog_v6_60.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_60_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_PlayDialog_v6_60;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|755244470", "755244470", "MIS_025_B40", "box_PlayDialog_v6_60.Stopped", "box_Delay_v5_44.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_91();
    l0 = self.box_Delay_v5_90;
    l1 = self.box_GroupSizeTest_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1359647662", "1359647662", "MIS_025_B40", "box_Delay_v5_90.TimeElapsed", "box_GroupSizeTest_91.Greater", l0:GetLuaBox(), l1:GetLuaBox());
    -- Greater
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_266_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = self.box_ProximityRadiusListener_v3_266;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2132913756", "2132913756", "MIS_025_B40", "box_ProximityRadiusListener_v3_266.Disabled", "box_UseContextualActionModifier_v3_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_266_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_267();
    l0 = self.box_ProximityRadiusListener_v3_266;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|611229243", "611229243", "MIS_025_B40", "box_ProximityRadiusListener_v3_266.SomeoneFar", "box_SetContextualStrategy_267.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_266_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_114();
    l0 = self.box_ProximityRadiusListener_v3_266;
    l1 = self.box_Delay_v5_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|550635037", "550635037", "MIS_025_B40", "box_ProximityRadiusListener_v3_266.SomeoneNear", "box_Delay_v5_114.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_59_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1695532042", "1695532042", "MIS_025_B40", "box_PlayDialog_v6_59.Finished", "box_MultipleOR_131.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_59_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|859623125", "859623125", "MIS_025_B40", "box_PlayDialog_v6_59.FinishedInterrupted", "box_MultipleOR_131.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_59_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_59();
    l0 = self.box_PlayDialog_v6_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|494928043", "494928043", "MIS_025_B40", "box_PlayDialog_v6_59.QueueCancelled", "box_PlayDialog_v6_59.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_59_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|176676072", "176676072", "MIS_025_B40", "box_PlayDialog_v6_59.Stopped", "box_Delay_v5_49.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_220_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_219();
    l0 = self.box_PlayDialog_v6_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1837047546", "1837047546", "MIS_025_B40", "box_OutputOrder_v2_220.Out", "box_PlayDialog_v6_219.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_220_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_217();
    l0 = self.box_PlayDialog_v6_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|927664003", "927664003", "MIS_025_B40", "box_OutputOrder_v2_220.Out", "box_PlayDialog_v6_217.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_230_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_218();
    l0 = self.box_MultipleAND_v2_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|508961148", "508961148", "MIS_025_B40", "box_OutputOrder_v2_230.Out", "box_MultipleAND_v2_218.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_230_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1830562510", "1830562510", "MIS_025_B40", "box_OutputOrder_v2_230.Out", "box_MultipleOR_231.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_230_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_203();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|76347782", "76347782", "MIS_025_B40", "box_OutputOrder_v2_230.Out", "box_BroadcastMessage_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_230_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|832893240", "832893240", "MIS_025_B40", "box_OutputOrder_v2_230.Out", "box_MIS_025_B40_RespawnManager_10.Enable_RespawnRTower", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_RespawnRTower
    l0:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_230_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1687689956", "1687689956", "MIS_025_B40", "box_OutputOrder_v2_230.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GroupSizeTest_252_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_253();
    l0 = self.box_GroupSizeTest_252;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1511448216", "1511448216", "MIS_025_B40", "box_GroupSizeTest_252.OnSize", "box_HealthModifier_v2_253.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_207_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_240();
    l0 = self.box_OnceOnly_v3_207;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|694329980", "694329980", "MIS_025_B40", "box_OnceOnly_v3_207.Out", "box_OutputOrder_v2_240.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_57_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_57;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1621817611", "1621817611", "MIS_025_B40", "box_PlayDialog_v6_57.Finished", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_57_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_57;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1324657171", "1324657171", "MIS_025_B40", "box_PlayDialog_v6_57.FinishedInterrupted", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_182();
    l0 = self.box_MultipleOR_181;
    l1 = self.box_MultipleAND_v2_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1362984192", "1362984192", "MIS_025_B40", "box_MultipleOR_181.Out", "box_MultipleAND_v2_182.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_158_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_196();
    l0 = self.box_Delay_v5_158;
    l1 = self.box_SpawnAI_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|462047753", "462047753", "MIS_025_B40", "box_Delay_v5_158.TimeElapsed", "box_SpawnAI_196.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GetDistance_146_Out()
    local params, l0;
    self:OnExit_box_GetDistance_146_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_145();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1038160441", "1038160441", "MIS_025_B40", "box_GetDistance_146.Out", "box_Compare_Floats_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_159_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_159();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1465014866", "1465014866", "MIS_025_B40", "box_UseContextualActionModifier_v3_159.Enabled", "box_UseContextualActionModifier_v3_159.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_126_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_126_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_119();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|59582541", "59582541", "MIS_025_B40", "box_FloatArithmetics_v2_126.Out", "box_CreateVector3_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_142_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_94();
    l0 = self.box_Delay_v5_142;
    l1 = self.box_Gate_v3_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1915328851", "1915328851", "MIS_025_B40", "box_Delay_v5_142.Stopped", "box_Gate_v3_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_142_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_143();
    l0 = self.box_Delay_v5_142;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|247726577", "247726577", "MIS_025_B40", "box_Delay_v5_142.TimeElapsed", "box_SetContextualStrategy_143.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_177_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|807339536", "807339536", "MIS_025_B40", "box_IsValueNil_v3_177.No", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsValueNil_v3_177_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_175();
    l0 = self.box_CharacterLoadedIdListener_v2_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|973842830", "973842830", "MIS_025_B40", "box_IsValueNil_v3_177.Yes", "box_CharacterLoadedIdListener_v2_175.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MIS_025_TwinsIntro_19_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_187();
    l0 = self.box_MIS_025_TwinsIntro_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1407867162", "1407867162", "MIS_025_B40", "box_MIS_025_TwinsIntro_19.End", "box_OutputOrder_v2_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_025_TwinsIntro_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_83();
    l0 = self.box_MIS_025_TwinsIntro_19;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1342582379", "1342582379", "MIS_025_B40", "box_MIS_025_TwinsIntro_19.Out", "box_MissionBlockLayer_83.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListGetRandom_88_Out()
    local params, l0;
    self:OnExit_box_ListGetRandom_88_Out();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_108();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1173030741", "1173030741", "MIS_025_B40", "box_ListGetRandom_88.Out", "box_IsPawnAlive_v3_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_38_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1744280404", "1744280404", "MIS_025_B40", "box_PlayDialog_v6_38.Finished", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_38_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|133940092", "133940092", "MIS_025_B40", "box_PlayDialog_v6_38.FinishedInterrupted", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_38_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_213();
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_PlayDialog_v6_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|867052765", "867052765", "MIS_025_B40", "box_PlayDialog_v6_38.QueueCancelled", "box_PlayDialog_v6_213.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_38_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|962864417", "962864417", "MIS_025_B40", "box_PlayDialog_v6_38.Stopped", "box_PlayDialog_v6_38.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_148;
    l1 = self.box_MultipleOR_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1103606132", "1103606132", "MIS_025_B40", "box_Delay_v5_148.TimeElapsed", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_235_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_239();
    l0 = self.box_OnceOnly_v3_235;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1458207650", "1458207650", "MIS_025_B40", "box_OnceOnly_v3_235.Out", "box_OutputOrder_v2_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_154_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_136();
    l0 = self.box_MultipleOR_154;
    l1 = self.box_ProximityRadiusListener_v3_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|337500870", "337500870", "MIS_025_B40", "box_MultipleOR_154.Out", "box_ProximityRadiusListener_v3_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_107();
    l0 = self.box_MultipleAND_v2_182;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1609911740", "1609911740", "MIS_025_B40", "box_MultipleAND_v2_182.Out", "box_SetInteger_v2_107.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_197_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = self.box_Delay_v5_197;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1218450808", "1218450808", "MIS_025_B40", "box_Delay_v5_197.TimeElapsed", "box_OutputOrder_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_75_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_215();
    l0 = self.box_Gate_v3_75;
    l1 = self.box_PlayDialog_v6_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1401767705", "1401767705", "MIS_025_B40", "box_Gate_v3_75.Closed", "box_PlayDialog_v6_215.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_215();
    l0 = self.box_Gate_v3_75;
    l1 = self.box_PlayDialog_v6_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1429340447", "1429340447", "MIS_025_B40", "box_Gate_v3_75.Out", "box_PlayDialog_v6_215.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_184_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1885089801", "1885089801", "MIS_025_B40", "box_SetContextualStrategy_184.Out", "box_MultipleOR_186.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeTest_150_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_149();
    l0 = self.box_GroupSizeTest_150;
    l1 = self.box_RemoveEntity_v2_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1837541416", "1837541416", "MIS_025_B40", "box_GroupSizeTest_150.OnSize", "box_RemoveEntity_v2_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_241_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_206();
    l0 = self.box_MultipleOR_241;
    l1 = self.box_ProximityTrigger_v3_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1716903219", "1716903219", "MIS_025_B40", "box_MultipleOR_241.Out", "box_ProximityTrigger_v3_206.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_114_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_114;
    l1 = self.box_MultipleOR_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2006971436", "2006971436", "MIS_025_B40", "box_Delay_v5_114.Started", "box_MultipleOR_268.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_114_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_210();
    l0 = self.box_Delay_v5_114;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1145620345", "1145620345", "MIS_025_B40", "box_Delay_v5_114.TimeElapsed", "box_SetContextualStrategy_210.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityPreconditionListener_v2_64_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_229();
    l0 = self.box_EntityPreconditionListener_v2_64;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2061633918", "2061633918", "MIS_025_B40", "box_EntityPreconditionListener_v2_64.Enabled", "box_SetInteger_v2_229.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityPreconditionListener_v2_64_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_266();
    l0 = self.box_EntityPreconditionListener_v2_64;
    l1 = self.box_ProximityRadiusListener_v3_266;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|195782348", "195782348", "MIS_025_B40", "box_EntityPreconditionListener_v2_64.PreconditionMet", "box_ProximityRadiusListener_v3_266.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetActivityFact_47_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_224();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1603495131", "1603495131", "MIS_025_B40", "box_GetActivityFact_47.FactNotSet", "box_IsEntityLoaded_v3_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|884278082", "884278082", "MIS_025_B40", "box_UseContextualActionModifier_v3_17.Enabled", "box_UseContextualActionModifier_v3_17.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_17_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_116();
    l0 = self.box_Delay_v5_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1108798927", "1108798927", "MIS_025_B40", "box_UseContextualActionModifier_v3_17.UseCalled", "box_Delay_v5_116.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_73_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_237();
    l0 = self.box_Delay_v5_73;
    l1 = self.box_ProximityTrigger_v3_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|718405029", "718405029", "MIS_025_B40", "box_Delay_v5_73.Started", "box_ProximityTrigger_v3_237.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_73_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_73;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1578774171", "1578774171", "MIS_025_B40", "box_Delay_v5_73.Stopped", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = self.box_Delay_v5_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1326516102", "1326516102", "MIS_025_B40", "box_Delay_v5_73.TimeElapsed", "box_OutputOrder_v2_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_242_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_Delay_v5_242;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1700817431", "1700817431", "MIS_025_B40", "box_Delay_v5_242.TimeElapsed", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_1();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1770393423", "1770393423", "MIS_025_B40", "box_ActivityInitialized_2.Out", "box_GetLocalPlayer_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_270_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|198230048", "198230048", "MIS_025_B40", "box_HealthModifier_v2_270.Damaged", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PersistentParticlesModifier_135_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_66();
    l0 = self.box_PersistentParticlesModifier_135;
    l1 = self.box_PersistentParticlesModifier_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|509492721", "509492721", "MIS_025_B40", "box_PersistentParticlesModifier_135.OnStopParticles", "box_PersistentParticlesModifier_66.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_139_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1620323231", "1620323231", "MIS_025_B40", "box_SetContextualStrategy_139.Out", "box_MultipleOR_164.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_128_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_128;
    l1 = self.box_MultipleOR_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1929736459", "1929736459", "MIS_025_B40", "box_RequestPhoneCall_v2_128.Completed", "box_MultipleOR_209.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_128_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_128;
    l1 = self.box_MultipleOR_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1927108585", "1927108585", "MIS_025_B40", "box_RequestPhoneCall_v2_128.Failed", "box_MultipleOR_209.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_182();
    l0 = self.box_MultipleOR_176;
    l1 = self.box_MultipleAND_v2_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1973515658", "1973515658", "MIS_025_B40", "box_MultipleOR_176.Out", "box_MultipleAND_v2_182.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SpawnAI_117_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_SpawnAI_117;
    l1 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|804041402", "804041402", "MIS_025_B40", "box_SpawnAI_117.Fail", "box_Delay_v5_130.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_117_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_117;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|942209945", "942209945", "MIS_025_B40", "box_SpawnAI_117.Out", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BroadcastMessage_200_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_201();
    l0 = self.box_Delay_v5_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|676281750", "676281750", "MIS_025_B40", "box_BroadcastMessage_200.Out", "box_Delay_v5_201.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_164_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_142();
    l0 = self.box_MultipleOR_164;
    l1 = self.box_Delay_v5_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|346381400", "346381400", "MIS_025_B40", "box_MultipleOR_164.Out", "box_Delay_v5_142.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeTest_249_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_250();
    l0 = self.box_GroupSizeTest_249;
    l1 = self.box_SpawnAI_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|650857762", "650857762", "MIS_025_B40", "box_GroupSizeTest_249.OnSize", "box_SpawnAI_250.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_171_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_129();
    l0 = self.box_Delay_v5_171;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1118529170", "1118529170", "MIS_025_B40", "box_Delay_v5_171.TimeElapsed", "box_BroadcastMessage_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_137_Paused()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_165();
    l0 = self.box_Delay_v5_137;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1450052488", "1450052488", "MIS_025_B40", "box_Delay_v5_137.Paused", "box_SetContextualStrategy_165.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_137_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_142();
    l0 = self.box_Delay_v5_137;
    l1 = self.box_Delay_v5_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1965521232", "1965521232", "MIS_025_B40", "box_Delay_v5_137.Stopped", "box_Delay_v5_142.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_137_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_139();
    l0 = self.box_Delay_v5_137;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2082750239", "2082750239", "MIS_025_B40", "box_Delay_v5_137.TimeElapsed", "box_SetContextualStrategy_139.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_144_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_TeleportPawns_144;
    l1 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1766577143", "1766577143", "MIS_025_B40", "box_TeleportPawns_144.Out", "box_Delay_v5_148.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_219_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_219;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1315997893", "1315997893", "MIS_025_B40", "box_PlayDialog_v6_219.Finished", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_219_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_219;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1811870379", "1811870379", "MIS_025_B40", "box_PlayDialog_v6_219.FinishedInterrupted", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_219_Queued()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_219;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1059633107", "1059633107", "MIS_025_B40", "box_PlayDialog_v6_219.Queued", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_219_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_219;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1970805104", "1970805104", "MIS_025_B40", "box_PlayDialog_v6_219.StartedPriorityFailed", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_v2_175_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_175_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_v2_175;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1147100831", "1147100831", "MIS_025_B40", "box_CharacterLoadedIdListener_v2_175.LoadedIdReceived", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_28_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_170();
    l0 = self.box_Bind_v4_28;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1535424813", "1535424813", "MIS_025_B40", "box_Bind_v4_28.Bound", "box_StimsEmitter_v2_170.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_271_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_271;
    l1 = self.box_MultipleOR_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|855276835", "855276835", "MIS_025_B40", "box_ProximityRadiusListener_v3_271.Disabled", "box_MultipleOR_273.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_271_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_271;
    l1 = self.box_MultipleOR_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|243653269", "243653269", "MIS_025_B40", "box_ProximityRadiusListener_v3_271.SomeoneFar", "box_MultipleOR_273.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_271_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_272();
    l0 = self.box_ProximityRadiusListener_v3_271;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2120366745", "2120366745", "MIS_025_B40", "box_ProximityRadiusListener_v3_271.SomeoneNear", "box_ParticleSystem_v3_272.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_138_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1683247641", "1683247641", "MIS_025_B40", "box_OutputOrder_v2_138.Out", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_138_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|175254655", "175254655", "MIS_025_B40", "box_OutputOrder_v2_138.Out", "box_MultipleOR_140.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_138_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_163();
    l0 = self.box_HealthListener_v6_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1121449486", "1121449486", "MIS_025_B40", "box_OutputOrder_v2_138.Out", "box_HealthListener_v6_163.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_101_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_StaticBreakableListener_101;
    l1 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|695843622", "695843622", "MIS_025_B40", "box_StaticBreakableListener_101.Enabled", "box_Gate_v3_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_101_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_StaticBreakableListener_101;
    l1 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1667657057", "1667657057", "MIS_025_B40", "box_StaticBreakableListener_101.OnBreak", "box_Gate_v3_105.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_45_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_69();
    l0 = self.box_SoundModifier_v2_45;
    l1 = self.box_SoundModifier_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2135052675", "2135052675", "MIS_025_B40", "box_SoundModifier_v2_45.Started", "box_SoundModifier_v2_69.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|8654678", "8654678", "MIS_025_B40", "box_MultipleOR_52.Out", "box_Delay_v5_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_79_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_78();
    l0 = self.box_SoundModifier_v2_79;
    l1 = self.box_SoundModifier_v2_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1465895646", "1465895646", "MIS_025_B40", "box_SoundModifier_v2_79.Started", "box_SoundModifier_v2_78.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_243_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_243;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|643498679", "643498679", "MIS_025_B40", "box_ProximityRadiusListener_v3_243.AllFar", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_243_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_244();
    l0 = self.box_ProximityRadiusListener_v3_243;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|558338771", "558338771", "MIS_025_B40", "box_ProximityRadiusListener_v3_243.Disabled", "box_HealthModifier_v2_244.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_76_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_59();
    l0 = self.box_OnceOnly_v3_76;
    l1 = self.box_PlayDialog_v6_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|466589527", "466589527", "MIS_025_B40", "box_OnceOnly_v3_76.Out", "box_PlayDialog_v6_59.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_240_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1278917286", "1278917286", "MIS_025_B40", "box_OutputOrder_v2_240.Out", "box_MultipleOR_234.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_240_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1827942206", "1827942206", "MIS_025_B40", "box_OutputOrder_v2_240.Out", "box_MultipleOR_241.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_240_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1435144903", "1435144903", "MIS_025_B40", "box_OutputOrder_v2_240.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_100_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_Switch_100;
    l1 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1720652934", "1720652934", "MIS_025_B40", "box_Switch_100.Output", "box_PlayDialog_v6_95.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_100_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_96();
    l0 = self.box_Switch_100;
    l1 = self.box_PlayDialog_v6_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|451574227", "451574227", "MIS_025_B40", "box_Switch_100.Output", "box_PlayDialog_v6_96.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_100_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_104();
    l0 = self.box_Switch_100;
    l1 = self.box_PlayDialog_v6_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1990513577", "1990513577", "MIS_025_B40", "box_Switch_100.Output", "box_PlayDialog_v6_104.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_100_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_103();
    l0 = self.box_Switch_100;
    l1 = self.box_PlayDialog_v6_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1236402559", "1236402559", "MIS_025_B40", "box_Switch_100.Output", "box_PlayDialog_v6_103.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_222_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_227();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|123864847", "123864847", "MIS_025_B40", "box_HealthModifier_v2_222.Damaged", "box_OutputOrder_v2_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_31_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_29();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2131925176", "2131925176", "MIS_025_B40", "box_SetInteger_v2_31.Out", "box_HealthModifier_v2_29.Heal", clone:GetLuaBox(), l0:GetLuaBox());
    -- Heal
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1004036357", "1004036357", "MIS_025_B40", "box_OutputOrder_v2_56.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_97_LoopingEnded()
    local l0, l1;
    l0 = self.box_Delay_v5_97;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1763758948", "1763758948", "MIS_025_B40", "box_Delay_v5_97.LoopingEnded", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_97_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_Delay_v5_97;
    l1 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|837312343", "837312343", "MIS_025_B40", "box_Delay_v5_97.Stopped", "box_PlayDialog_v6_95.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_100();
    l0 = self.box_Delay_v5_97;
    l1 = self.box_Switch_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1572683056", "1572683056", "MIS_025_B40", "box_Delay_v5_97.TimeElapsed", "box_Switch_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1534559284", "1534559284", "MIS_025_B40", "box_Delay_v5_8.Started", "box_OutputOrder_v2_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_87();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_Gate_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1551644714", "1551644714", "MIS_025_B40", "box_Delay_v5_8.TimeElapsed", "box_Gate_v3_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_195();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1916930352", "1916930352", "MIS_025_B40", "box_OutputOrder_v2_183.Out", "box_StaticBreakableBreaker_195.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_172();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|303738800", "303738800", "MIS_025_B40", "box_OutputOrder_v2_183.Out", "box_StaticBreakableBreaker_172.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_158();
    l0 = self.box_Delay_v5_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2092927736", "2092927736", "MIS_025_B40", "box_OutputOrder_v2_183.Out", "box_Delay_v5_158.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GodMode_v3_36();
    l0 = self.box_MultipleOR_33;
    l1 = self.box_GodMode_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1041573118", "1041573118", "MIS_025_B40", "box_MultipleOR_33.Out", "box_GodMode_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_86_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_86_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2107706612", "2107706612", "MIS_025_B40", "box_RandomFloat_v2_86.Out", "box_Delay_v5_90.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetInteger_v2_107_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_107_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1169651017", "1169651017", "MIS_025_B40", "box_SetInteger_v2_107.Out", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MultipleOR_12;
    l1 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|951926084", "951926084", "MIS_025_B40", "box_MultipleOR_12.Out", "box_MIS_025_B40_RespawnManager_10.Update_MaxNPC_limit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Update_MaxNPC_limit
    l1:Exec(10, params);
end;

function export:f_box_MissionBlockLayer_83_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_135();
    l0 = self.box_PersistentParticlesModifier_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|919322781", "919322781", "MIS_025_B40", "box_MissionBlockLayer_83.Disabled", "box_PersistentParticlesModifier_135.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_PersistentParticlesModifier_66_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_238();
    l0 = self.box_PersistentParticlesModifier_66;
    l1 = self.box_PersistentParticlesModifier_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|648488112", "648488112", "MIS_025_B40", "box_PersistentParticlesModifier_66.OnStopParticles", "box_PersistentParticlesModifier_238.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_34;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|56188722", "56188722", "MIS_025_B40", "box_Delay_v5_34.TimeElapsed", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_187_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_188();
    l0 = self.box_Music_Quest_v2_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|572504824", "572504824", "MIS_025_B40", "box_OutputOrder_v2_187.Out", "box_Music_Quest_v2_188.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_187_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1729186856", "1729186856", "MIS_025_B40", "box_OutputOrder_v2_187.Out", "box_ActivityEnd_26.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_MultipleOR_99;
    l1 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|403133902", "403133902", "MIS_025_B40", "box_MultipleOR_99.Out", "box_Delay_v5_97.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_186_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_185();
    l0 = self.box_MultipleOR_186;
    l1 = self.box_ProximityTrigger_v3_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|557220251", "557220251", "MIS_025_B40", "box_MultipleOR_186.Out", "box_ProximityTrigger_v3_185.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_86();
    l0 = self.box_MultipleOR_93;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|36492521", "36492521", "MIS_025_B40", "box_MultipleOR_93.Out", "box_RandomFloat_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_179_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_179_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_v2_179;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|194404913", "194404913", "MIS_025_B40", "box_CharacterLoadedIdListener_v2_179.LoadedIdReceived", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_255_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_252();
    l0 = self.box_GroupSizeTest_252;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|977856550", "977856550", "MIS_025_B40", "box_OutputOrder_v2_255.Out", "box_GroupSizeTest_252.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_255_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_256();
    l0 = self.box_GroupSizeTest_256;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|364870142", "364870142", "MIS_025_B40", "box_OutputOrder_v2_255.Out", "box_GroupSizeTest_256.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_255_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_258();
    l0 = self.box_GroupSizeTest_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1300472027", "1300472027", "MIS_025_B40", "box_OutputOrder_v2_255.Out", "box_GroupSizeTest_258.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_58_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_58;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1718407141", "1718407141", "MIS_025_B40", "box_PlayDialog_v6_58.Finished", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_58_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_58;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1332387872", "1332387872", "MIS_025_B40", "box_PlayDialog_v6_58.FinishedInterrupted", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1734883575", "1734883575", "MIS_025_B40", "box_Simple_Node_13.Out", "box_MIS_025_B40_RespawnManager_10.StartAlarmFireworks", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartAlarmFireworks
    l0:Exec(9, params);
end;

function export:f_box_GetActivityFact_173_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_54();
    l0 = self.box_SpawnAI_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2048047503", "2048047503", "MIS_025_B40", "box_GetActivityFact_173.FactNotSet", "box_SpawnAI_54.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_173_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_77();
    l0 = self.box_SpawnAI_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2127810891", "2127810891", "MIS_025_B40", "box_GetActivityFact_173.FactSet", "box_SpawnAI_77.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_198_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_OnceOnly_v3_198;
    l1 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|627444743", "627444743", "MIS_025_B40", "box_OnceOnly_v3_198.Out", "box_PlayDialog_v6_62.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_24_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_25();
    l0 = self.box_HealthListener_v6_24;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1374436679", "1374436679", "MIS_025_B40", "box_HealthListener_v6_24.Damaged", "box_Compare_Floats_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_24_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_32();
    l0 = self.box_HealthListener_v6_24;
    l1 = self.box_HealthListener_v6_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1038714516", "1038714516", "MIS_025_B40", "box_HealthListener_v6_24.Disabled", "box_HealthListener_v6_32.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_32();
    l0 = self.box_HealthListener_v6_24;
    l1 = self.box_HealthListener_v6_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2101365176", "2101365176", "MIS_025_B40", "box_HealthListener_v6_24.Enabled", "box_HealthListener_v6_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_216_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_216;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|782274624", "782274624", "MIS_025_B40", "box_MultipleOR_216.Out", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_269_Critical()
    self:OnExit_box_HealthListener_v6_269_Critical();
end;

function export:f_box_HealthListener_v6_269_Damaged()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_269_Damaged();
    params = self:OnEnter_box_HealthModifier_v2_270();
    l0 = self.box_HealthListener_v6_269;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|940955745", "940955745", "MIS_025_B40", "box_HealthListener_v6_269.Damaged", "box_HealthModifier_v2_270.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_269_Downed()
    self:OnExit_box_HealthListener_v6_269_Downed();
end;

function export:f_box_HealthListener_v6_269_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_151();
    l0 = self.box_HealthListener_v6_269;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|392980328", "392980328", "MIS_025_B40", "box_HealthListener_v6_269.Enabled", "box_SetContextualStrategy_151.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_269_Healed()
    self:OnExit_box_HealthListener_v6_269_Healed();
end;

function export:f_box_HealthListener_v6_269_Killed()
    self:OnExit_box_HealthListener_v6_269_Killed();
end;

function export:f_box_HealthListener_v6_269_Revived()
    self:OnExit_box_HealthListener_v6_269_Revived();
end;

function export:f_box_PlayDialog_v6_217_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_217;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|403398315", "403398315", "MIS_025_B40", "box_PlayDialog_v6_217.Finished", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_SpawnAI_196_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_28();
    l0 = self.box_SpawnAI_196;
    l1 = self.box_Bind_v4_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|72814193", "72814193", "MIS_025_B40", "box_SpawnAI_196.Spawned", "box_Bind_v4_28.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_205_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|636106226", "636106226", "MIS_025_B40", "box_SetContextualStrategy_205.Out", "box_UseContextualActionModifier_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_82();
    l0 = self.box_SpawnAI_54;
    l1 = self.box_SpawnAI_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|127258257", "127258257", "MIS_025_B40", "box_SpawnAI_54.Out", "box_SpawnAI_82.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_77_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_77;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|624444744", "624444744", "MIS_025_B40", "box_SpawnAI_77.Out", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|622092473", "622092473", "MIS_025_B40", "box_UseContextualActionModifier_v3_23.Enabled", "box_UseContextualActionModifier_v3_23.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_23_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityPreconditionListener_v2_122();
    l0 = self.box_EntityPreconditionListener_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|205414517", "205414517", "MIS_025_B40", "box_UseContextualActionModifier_v3_23.UseCalled", "box_EntityPreconditionListener_v2_122.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_49_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_60();
    l0 = self.box_Delay_v5_49;
    l1 = self.box_PlayDialog_v6_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1095169430", "1095169430", "MIS_025_B40", "box_Delay_v5_49.Stopped", "box_PlayDialog_v6_60.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_60();
    l0 = self.box_Delay_v5_49;
    l1 = self.box_PlayDialog_v6_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1168516552", "1168516552", "MIS_025_B40", "box_Delay_v5_49.TimeElapsed", "box_PlayDialog_v6_60.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_105_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_105;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|986481969", "986481969", "MIS_025_B40", "box_Gate_v3_105.Closed", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_184();
    l0 = self.box_Gate_v3_105;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1508867573", "1508867573", "MIS_025_B40", "box_Gate_v3_105.Out", "box_SetContextualStrategy_184.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2080287628", "2080287628", "MIS_025_B40", "box_OutputOrder_v2_71.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|454682253", "454682253", "MIS_025_B40", "box_OutputOrder_v2_71.Out", "box_Delay_v5_49.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_206();
    l0 = self.box_ProximityTrigger_v3_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1618985982", "1618985982", "MIS_025_B40", "box_OutputOrder_v2_9.Out", "box_ProximityTrigger_v3_206.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|286249134", "286249134", "MIS_025_B40", "box_OutputOrder_v2_9.Out", "box_MIS_025_B40_RespawnManager_10.Enable_RespawnArmory", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_RespawnArmory
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_269();
    l0 = self.box_HealthListener_v6_269;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|585193528", "585193528", "MIS_025_B40", "box_OutputOrder_v2_9.Out", "box_HealthListener_v6_269.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|891488055", "891488055", "MIS_025_B40", "box_OutputOrder_v2_9.Out", "box_MIS_025_B40_RespawnManager_10.SpawnVeh_Armory", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnVeh_Armory
    l0:Exec(7, params);
end;

function export:f_box_OutputOrder_v2_9_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_39();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1658898064", "1658898064", "MIS_025_B40", "box_OutputOrder_v2_9.Out", "box_PawnInvincibleState_v2_39.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_190();
    l0 = self.box_Delay_v5_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|109494522", "109494522", "MIS_025_B40", "box_OutputOrder_v2_9.Out", "box_Delay_v5_190.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetLocalPlayer_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_180();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1563234068", "1563234068", "MIS_025_B40", "box_GetLocalPlayer_v2_1.Out", "box_OutputOrder_v2_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_267_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_115();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|634029884", "634029884", "MIS_025_B40", "box_SetContextualStrategy_267.Out", "box_UseContextualActionModifier_v3_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_24();
    l0 = self.box_HealthListener_v6_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1130929042", "1130929042", "MIS_025_B40", "box_OutputOrder_v2_37.Out", "box_HealthListener_v6_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|983665874", "983665874", "MIS_025_B40", "box_OutputOrder_v2_37.Out", "box_OnceOnly_v3_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_37_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_197();
    l0 = self.box_Delay_v5_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1313183694", "1313183694", "MIS_025_B40", "box_OutputOrder_v2_37.Out", "box_Delay_v5_197.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_37_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1486563385", "1486563385", "MIS_025_B40", "box_OutputOrder_v2_37.Out", "box_SpawnAI_7.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_185();
    l0 = self.box_ProximityTrigger_v3_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1873970975", "1873970975", "MIS_025_B40", "box_OutputOrder_v2_37.Out", "box_ProximityTrigger_v3_185.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_150();
    l0 = self.box_GroupSizeTest_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|771864722", "771864722", "MIS_025_B40", "box_OutputOrder_v2_37.Out", "box_GroupSizeTest_150.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_37_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_189();
    l0 = self.box_Music_Quest_v2_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|28302651", "28302651", "MIS_025_B40", "box_OutputOrder_v2_37.Out", "box_Music_Quest_v2_189.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_231_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_231;
    l1 = self.box_OnceOnly_v3_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|76028991", "76028991", "MIS_025_B40", "box_MultipleOR_231.Out", "box_OnceOnly_v3_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_115_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_115();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|507619456", "507619456", "MIS_025_B40", "box_UseContextualActionModifier_v3_115.Enabled", "box_UseContextualActionModifier_v3_115.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_115_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1812271366", "1812271366", "MIS_025_B40", "box_UseContextualActionModifier_v3_115.UseCalled", "box_MultipleOR_268.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeTest_245_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_246();
    l0 = self.box_GroupSizeTest_245;
    l1 = self.box_GroupSizeListener_v6_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|408133598", "408133598", "MIS_025_B40", "box_GroupSizeTest_245.Enabled", "box_GroupSizeListener_v6_246.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeTest_245_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_243();
    l0 = self.box_GroupSizeTest_245;
    l1 = self.box_ProximityRadiusListener_v3_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1254575470", "1254575470", "MIS_025_B40", "box_GroupSizeTest_245.OnSize", "box_ProximityRadiusListener_v3_243.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_65_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1917393011", "1917393011", "MIS_025_B40", "box_PlayDialog_v6_65.Finished", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_65_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|16545991", "16545991", "MIS_025_B40", "box_PlayDialog_v6_65.FinishedInterrupted", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_65_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2081710058", "2081710058", "MIS_025_B40", "box_PlayDialog_v6_65.QueueCancelled", "box_PlayDialog_v6_65.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_65_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|832337916", "832337916", "MIS_025_B40", "box_PlayDialog_v6_65.Stopped", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetFromGroup_89_Out()
    local params, l0;
    self:OnExit_box_GetFromGroup_89_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListGetRandom_88();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1545593900", "1545593900", "MIS_025_B40", "box_GetFromGroup_89.Out", "box_ListGetRandom_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_202_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_249();
    l0 = self.box_GroupSizeTest_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|849529037", "849529037", "MIS_025_B40", "box_BroadcastMessage_202.Out", "box_GroupSizeTest_249.Less", clone:GetLuaBox(), l0:GetLuaBox());
    -- Less
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPosition_125();
    l0 = self.box_MultipleOR_124;
    l1 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|863308743", "863308743", "MIS_025_B40", "box_MultipleOR_124.Out", "box_GetPosition_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|52604630", "52604630", "MIS_025_B40", "box_MultipleOR_11.Out", "box_MIS_025_B40_RespawnManager_10.Disable_VehSpawnArmory", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable_VehSpawnArmory
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_268_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_266();
    l0 = self.box_MultipleOR_268;
    l1 = self.box_ProximityRadiusListener_v3_266;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1762497136", "1762497136", "MIS_025_B40", "box_MultipleOR_268.Out", "box_ProximityRadiusListener_v3_266.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_193_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_193_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1259861041", "1259861041", "MIS_025_B40", "box_SetInteger_v2_193.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_232_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_OnceOnly_v3_232;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1207086674", "1207086674", "MIS_025_B40", "box_OnceOnly_v3_232.Out", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_201_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_Delay_v5_201;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|475427649", "475427649", "MIS_025_B40", "box_Delay_v5_201.TimeElapsed", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_75();
    l0 = self.box_Gate_v3_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1485574554", "1485574554", "MIS_025_B40", "box_OutputOrder_v2_43.Out", "box_Gate_v3_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|198001207", "198001207", "MIS_025_B40", "box_OutputOrder_v2_43.Out", "box_Delay_v5_51.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_43_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1815422629", "1815422629", "MIS_025_B40", "box_OutputOrder_v2_43.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_213();
    l0 = self.box_MultipleOR_61;
    l1 = self.box_PlayDialog_v6_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|240845804", "240845804", "MIS_025_B40", "box_MultipleOR_61.Out", "box_PlayDialog_v6_213.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_156_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_156;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1604169788", "1604169788", "MIS_025_B40", "box_Delay_v5_156.TimeElapsed", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeTest_256_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_254();
    l0 = self.box_GroupSizeTest_256;
    l1 = self.box_RemoveEntity_v2_254;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1795764367", "1795764367", "MIS_025_B40", "box_GroupSizeTest_256.OnSize", "box_RemoveEntity_v2_254.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_48_Critical()
    local l0, l1;
    l0 = self.box_HealthListener_v6_48;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1291655260", "1291655260", "MIS_025_B40", "box_HealthListener_v6_48.Critical", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_48_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_170();
    l0 = self.box_HealthListener_v6_48;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1371948534", "1371948534", "MIS_025_B40", "box_HealthListener_v6_48.Disabled", "box_StimsEmitter_v2_170.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_48_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_48;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|486191363", "486191363", "MIS_025_B40", "box_HealthListener_v6_48.Killed", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_Gate_v3_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1287476754", "1287476754", "MIS_025_B40", "box_Gate_v3_87.Out", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_209_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_41();
    l0 = self.box_MultipleOR_209;
    l1 = self.box_RequestPhoneCall_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1749037733", "1749037733", "MIS_025_B40", "box_MultipleOR_209.Out", "box_RequestPhoneCall_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_78_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_SoundModifier_v2_78;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|572659789", "572659789", "MIS_025_B40", "box_SoundModifier_v2_78.Started", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPosition_125_Out()
    local params, l0;
    self:OnExit_box_GetPosition_125_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_121();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1732258369", "1732258369", "MIS_025_B40", "box_GetPosition_125.Out", "box_RandomFloat_v2_121.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_218_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_242();
    l0 = self.box_MultipleAND_v2_218;
    l1 = self.box_Delay_v5_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|909751882", "909751882", "MIS_025_B40", "box_MultipleAND_v2_218.Out", "box_Delay_v5_242.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_132_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_138();
    l0 = self.box_Delay_v5_132;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1494960710", "1494960710", "MIS_025_B40", "box_Delay_v5_132.TimeElapsed", "box_OutputOrder_v2_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_234_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_208();
    l0 = self.box_MultipleOR_234;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1409684070", "1409684070", "MIS_025_B40", "box_MultipleOR_234.Out", "box_SetContextualStrategy_208.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_137();
    l0 = self.box_MultipleOR_140;
    l1 = self.box_Delay_v5_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1053133592", "1053133592", "MIS_025_B40", "box_MultipleOR_140.Out", "box_Delay_v5_137.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_236_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_128();
    l0 = self.box_RequestPhoneCall_v2_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1875344689", "1875344689", "MIS_025_B40", "box_Compare_Boolean_236.A_is_False", "box_RequestPhoneCall_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_236_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_156();
    l0 = self.box_Delay_v5_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|751943934", "751943934", "MIS_025_B40", "box_Compare_Boolean_236.A_is_True", "box_Delay_v5_156.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsValueNil_v3_178_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1393582968", "1393582968", "MIS_025_B40", "box_IsValueNil_v3_178.No", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsValueNil_v3_178_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_179();
    l0 = self.box_CharacterLoadedIdListener_v2_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1889562477", "1889562477", "MIS_025_B40", "box_IsValueNil_v3_178.Yes", "box_CharacterLoadedIdListener_v2_179.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_22;
    l1 = self.box_MIS_025_TwinsIntro_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1733888530", "1733888530", "MIS_025_B40", "box_Delay_v5_22.TimeElapsed", "box_MIS_025_TwinsIntro_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_109();
    l0 = self.box_MultipleOR_110;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|755396358", "755396358", "MIS_025_B40", "box_MultipleOR_110.Out", "box_RemoveFromGroup_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_185_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_185;
    l1 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1780872891", "1780872891", "MIS_025_B40", "box_ProximityTrigger_v3_185.OnEmpty", "box_MultipleOR_186.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_185_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_102();
    l0 = self.box_ProximityTrigger_v3_185;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1705440919", "1705440919", "MIS_025_B40", "box_ProximityTrigger_v3_185.OnOccupied", "box_IsEntityLoaded_v3_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GodMode_v3_35_Disabled()
    local l0, l1;
    l0 = self.box_GodMode_v3_35;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|452963990", "452963990", "MIS_025_B40", "box_GodMode_v3_35.Disabled", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GodMode_v3_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_GodMode_v3_35;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1225821443", "1225821443", "MIS_025_B40", "box_GodMode_v3_35.Enabled", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_248_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_243();
    l0 = self.box_MultipleOR_248;
    l1 = self.box_ProximityRadiusListener_v3_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1209350395", "1209350395", "MIS_025_B40", "box_MultipleOR_248.Out", "box_ProximityRadiusListener_v3_243.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_163_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_137();
    l0 = self.box_HealthListener_v6_163;
    l1 = self.box_Delay_v5_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2026388303", "2026388303", "MIS_025_B40", "box_HealthListener_v6_163.Downed", "box_Delay_v5_137.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_163_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_163;
    l1 = self.box_MultipleOR_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|283994187", "283994187", "MIS_025_B40", "box_HealthListener_v6_163.Revived", "box_MultipleOR_164.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_55_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_18();
    l0 = self.box_OnceOnly_v3_55;
    l1 = self.box_MissionAckTriggerListener_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|466271471", "466271471", "MIS_025_B40", "box_OnceOnly_v3_55.Out", "box_MissionAckTriggerListener_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_108_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_92();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1719051970", "1719051970", "MIS_025_B40", "box_IsPawnAlive_v3_108.Alive", "box_HealthModifier_v2_92.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_108_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|209672531", "209672531", "MIS_025_B40", "box_IsPawnAlive_v3_108.DeadOrDown", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_108_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2048704410", "2048704410", "MIS_025_B40", "box_IsPawnAlive_v3_108.NotLoaded", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_44_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_Delay_v5_44;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1099671855", "1099671855", "MIS_025_B40", "box_Delay_v5_44.Stopped", "box_PlayDialog_v6_65.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_Delay_v5_44;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1763014948", "1763014948", "MIS_025_B40", "box_Delay_v5_44.TimeElapsed", "box_PlayDialog_v6_65.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_213_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_213;
    l1 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|771586657", "771586657", "MIS_025_B40", "box_PlayDialog_v6_213.Finished", "box_MultipleOR_211.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_213_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_213;
    l1 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1024706579", "1024706579", "MIS_025_B40", "box_PlayDialog_v6_213.FinishedInterrupted", "box_MultipleOR_211.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_213_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_214();
    l0 = self.box_PlayDialog_v6_213;
    l1 = self.box_PlayDialog_v6_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|402549641", "402549641", "MIS_025_B40", "box_PlayDialog_v6_213.QueueCancelled", "box_PlayDialog_v6_214.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_213_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_213();
    l0 = self.box_PlayDialog_v6_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|547493485", "547493485", "MIS_025_B40", "box_PlayDialog_v6_213.Stopped", "box_PlayDialog_v6_213.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_PersistentParticlesModifier_238_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_204();
    l0 = self.box_PersistentParticlesModifier_238;
    l1 = self.box_PersistentParticlesModifier_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2135968453", "2135968453", "MIS_025_B40", "box_PersistentParticlesModifier_238.OnStopParticles", "box_PersistentParticlesModifier_204.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_120_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_123();
    l0 = self.box_PositionModifier_v2_120;
    l1 = self.box_Delay_v5_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|686220960", "686220960", "MIS_025_B40", "box_PositionModifier_v2_120.Done", "box_Delay_v5_123.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_FloatArithmetics_v2_27_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_31();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1887975533", "1887975533", "MIS_025_B40", "box_FloatArithmetics_v2_27.Out", "box_SetInteger_v2_31.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_203_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_271();
    l0 = self.box_ProximityRadiusListener_v3_271;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1551253661", "1551253661", "MIS_025_B40", "box_BroadcastMessage_203.Out", "box_ProximityRadiusListener_v3_271.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_68_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_79();
    l0 = self.box_Delay_v5_68;
    l1 = self.box_SoundModifier_v2_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1073327074", "1073327074", "MIS_025_B40", "box_Delay_v5_68.TimeElapsed", "box_SoundModifier_v2_79.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|329752580", "329752580", "MIS_025_B40", "box_SetContextualStrategy_106.Out", "box_UseContextualActionModifier_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_42_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_59();
    l0 = self.box_Delay_v5_42;
    l1 = self.box_PlayDialog_v6_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1204258419", "1204258419", "MIS_025_B40", "box_Delay_v5_42.Stopped", "box_PlayDialog_v6_59.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_42;
    l1 = self.box_OnceOnly_v3_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1005065059", "1005065059", "MIS_025_B40", "box_Delay_v5_42.TimeElapsed", "box_OnceOnly_v3_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_72_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_72;
    l1 = self.box_OnceOnly_v3_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|71924061", "71924061", "MIS_025_B40", "box_MultipleOR_72.Out", "box_OnceOnly_v3_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_41_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_41;
    l1 = self.box_MultipleOR_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1827288638", "1827288638", "MIS_025_B40", "box_RequestPhoneCall_v2_41.Completed", "box_MultipleOR_216.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_41_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_41;
    l1 = self.box_MultipleOR_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1932762493", "1932762493", "MIS_025_B40", "box_RequestPhoneCall_v2_41.Failed", "box_MultipleOR_216.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_45();
    l0 = self.box_Delay_v5_80;
    l1 = self.box_SoundModifier_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|695173431", "695173431", "MIS_025_B40", "box_Delay_v5_80.TimeElapsed", "box_SoundModifier_v2_45.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_75();
    l0 = self.box_Gate_v3_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1574739055", "1574739055", "MIS_025_B40", "box_OutputOrder_v2_21.Out", "box_Gate_v3_75.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_67();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1229740447", "1229740447", "MIS_025_B40", "box_OutputOrder_v2_21.Out", "box_BroadcastMessage_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_261();
    l0 = self.box_Music_Quest_v2_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1877153478", "1877153478", "MIS_025_B40", "box_OutputOrder_v2_21.Out", "box_Music_Quest_v2_261.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_160();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1548870258", "1548870258", "MIS_025_B40", "box_OutputOrder_v2_21.Out", "box_Simple_Node_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|889659658", "889659658", "MIS_025_B40", "box_MultipleOR_46.Out", "box_Delay_v5_42.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_227_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|799549282", "799549282", "MIS_025_B40", "box_OutputOrder_v2_227.Out", "box_GetActivityFact_47.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_228();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|128261989", "128261989", "MIS_025_B40", "box_OutputOrder_v2_227.Out", "box_GetActivityFact_228.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_245();
    l0 = self.box_GroupSizeTest_245;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1148646851", "1148646851", "MIS_025_B40", "box_OutputOrder_v2_227.Out", "box_GroupSizeTest_245.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_227_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_251();
    l0 = self.box_MissionAckTriggerListener_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|981805121", "981805121", "MIS_025_B40", "box_OutputOrder_v2_227.Out", "box_MissionAckTriggerListener_251.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeTest_91_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_GetFromGroup_89();
    l0 = self.box_GroupSizeTest_91;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|320050081", "320050081", "MIS_025_B40", "box_GroupSizeTest_91.OnSize", "box_GetFromGroup_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_246_Disabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_246;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|889691713", "889691713", "MIS_025_B40", "box_GroupSizeListener_v6_246.Disabled", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_246_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_247();
    l0 = self.box_GroupSizeListener_v6_246;
    l1 = self.box_GroupSizeTest_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2111459736", "2111459736", "MIS_025_B40", "box_GroupSizeListener_v6_246.MemberRemoved", "box_GroupSizeTest_247.Equal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Equal
    l1:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_92_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2045717633", "2045717633", "MIS_025_B40", "box_HealthModifier_v2_92.Damaged", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RandomFloat_v2_121_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_121_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_118();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|107456221", "107456221", "MIS_025_B40", "box_RandomFloat_v2_121.Out", "box_FloatArithmetics_v2_118.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_127_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_117();
    l0 = self.box_MultipleOR_127;
    l1 = self.box_SpawnAI_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1298019148", "1298019148", "MIS_025_B40", "box_MultipleOR_127.Out", "box_SpawnAI_117.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_30_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_30;
    l1 = self.box_OnceOnly_v3_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|182796340", "182796340", "MIS_025_B40", "box_MultipleOR_30.Out", "box_OnceOnly_v3_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StimsEmitter_v2_170_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_48();
    l0 = self.box_HealthListener_v6_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1796638294", "1796638294", "MIS_025_B40", "box_StimsEmitter_v2_170.Enabled", "box_HealthListener_v6_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetInteger_v2_169_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_169_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1568058878", "1568058878", "MIS_025_B40", "box_SetInteger_v2_169.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_208_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1661728830", "1661728830", "MIS_025_B40", "box_SetContextualStrategy_208.Out", "box_UseContextualActionModifier_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityPreconditionListener_v2_122_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_EntityPreconditionListener_v2_122;
    l1 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1376733179", "1376733179", "MIS_025_B40", "box_EntityPreconditionListener_v2_122.PreconditionMet", "box_MIS_025_B40_RespawnManager_10.SpawnMotor_RTower", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnMotor_RTower
    l1:Exec(6, params);
end;

function export:f_box_ProximityTrigger_v3_206_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_206;
    l1 = self.box_OnceOnly_v3_235;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1334975195", "1334975195", "MIS_025_B40", "box_ProximityTrigger_v3_206.OnEmpty", "box_OnceOnly_v3_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_206_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_206;
    l1 = self.box_OnceOnly_v3_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1233864837", "1233864837", "MIS_025_B40", "box_ProximityTrigger_v3_206.OnOccupied", "box_OnceOnly_v3_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_MultipleOR_74;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1839752832", "1839752832", "MIS_025_B40", "box_MultipleOR_74.Out", "box_PlayDialog_v6_57.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|982126854", "982126854", "MIS_025_B40", "box_MultipleOR_70.Out", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_85();
    l0 = self.box_Delay_v5_84;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|970606840", "970606840", "MIS_025_B40", "box_Delay_v5_84.TimeElapsed", "box_SetContextualStrategy_85.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1623000758", "1623000758", "MIS_025_B40", "box_OutputOrder_v2_50.Out", "box_MIS_025_B40_RespawnManager_10.SpawnVeh_RTower", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnVeh_RTower
    l0:Exec(8, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|915482129", "915482129", "MIS_025_B40", "box_OutputOrder_v2_50.Out", "box_MIS_025_B40_RespawnManager_10.ChangeBattlefield_RespawnArmory", clone:GetLuaBox(), l0:GetLuaBox());
    -- ChangeBattlefield_RespawnArmory
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_137();
    l0 = self.box_Delay_v5_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|941614365", "941614365", "MIS_025_B40", "box_OutputOrder_v2_50.Out", "box_Delay_v5_137.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_50_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_147();
    l0 = self.box_SpawnAI_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|100907111", "100907111", "MIS_025_B40", "box_OutputOrder_v2_50.Out", "box_SpawnAI_147.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_48();
    l0 = self.box_MultipleOR_81;
    l1 = self.box_HealthListener_v6_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1906050869", "1906050869", "MIS_025_B40", "box_MultipleOR_81.Out", "box_HealthListener_v6_48.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2062599853", "2062599853", "MIS_025_B40", "box_UseContextualActionModifier_v3_14.Enabled", "box_UseContextualActionModifier_v3_14.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_14_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_159();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|861576159", "861576159", "MIS_025_B40", "box_UseContextualActionModifier_v3_14.UseCalled", "box_UseContextualActionModifier_v3_159.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_257_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_259();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|991634935", "991634935", "MIS_025_B40", "box_HealthModifier_v2_257.Damaged", "box_HealthModifier_v2_259.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|727646053", "727646053", "MIS_025_B40", "box_SpawnAI_7.Out", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_194_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_191();
    l0 = self.box_GroupSizeTest_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1356714119", "1356714119", "MIS_025_B40", "box_OutputOrder_v2_194.Out", "box_GroupSizeTest_191.Less", clone:GetLuaBox(), l0:GetLuaBox());
    -- Less
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_194_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_199();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1116413387", "1116413387", "MIS_025_B40", "box_OutputOrder_v2_194.Out", "box_Compare_Integers_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_200();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1741061925", "1741061925", "MIS_025_B40", "box_OutputOrder_v2_194.Out", "box_BroadcastMessage_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2083565980", "2083565980", "MIS_025_B40", "box_OutputOrder_v2_194.Out", "box_Delay_v5_132.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_273_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_272();
    l0 = self.box_MultipleOR_273;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1048171889", "1048171889", "MIS_025_B40", "box_MultipleOR_273.Out", "box_ParticleSystem_v3_272.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_32_Critical()
    local params, l0, l1;
    params = self:OnEnter_box_GodMode_v3_35();
    l0 = self.box_HealthListener_v6_32;
    l1 = self.box_GodMode_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1717612982", "1717612982", "MIS_025_B40", "box_HealthListener_v6_32.Critical", "box_GodMode_v3_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_32_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GodMode_v3_35();
    l0 = self.box_HealthListener_v6_32;
    l1 = self.box_GodMode_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1326600504", "1326600504", "MIS_025_B40", "box_HealthListener_v6_32.Disabled", "box_GodMode_v3_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_MultipleOR_53;
    l1 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|429288631", "429288631", "MIS_025_B40", "box_MultipleOR_53.Out", "box_Delay_v5_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_116_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityPreconditionListener_v2_64();
    l0 = self.box_Delay_v5_116;
    l1 = self.box_EntityPreconditionListener_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1446157065", "1446157065", "MIS_025_B40", "box_Delay_v5_116.TimeElapsed", "box_EntityPreconditionListener_v2_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_279_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_161();
    l0 = self.box_Delay_v5_279;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|659887448", "659887448", "MIS_025_B40", "box_Delay_v5_279.TimeElapsed", "box_Compare_Integers_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_82_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_82;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1445923920", "1445923920", "MIS_025_B40", "box_SpawnAI_82.Out", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_146();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|336334023", "336334023", "MIS_025_B40", "box_UseContextualActionModifier_v3_16.Disabled", "box_GetDistance_146.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_131_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_131;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1314184252", "1314184252", "MIS_025_B40", "box_MultipleOR_131.Out", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetContextualStrategy_166_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_167();
    l0 = self.box_Delay_v5_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2055469250", "2055469250", "MIS_025_B40", "box_SetContextualStrategy_166.Out", "box_Delay_v5_167.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GroupSizeTest_191_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_192();
    l0 = self.box_GroupSizeTest_191;
    l1 = self.box_SpawnAI_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1738855109", "1738855109", "MIS_025_B40", "box_GroupSizeTest_191.OnSize", "box_SpawnAI_192.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_199_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_193();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|248412065", "248412065", "MIS_025_B40", "box_Compare_Integers_199.A_lt_B", "box_SetInteger_v2_193.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_143_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|704530195", "704530195", "MIS_025_B40", "box_SetContextualStrategy_143.Out", "box_MultipleOR_140.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeTest_247_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_246();
    l0 = self.box_GroupSizeTest_247;
    l1 = self.box_GroupSizeListener_v6_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1319995235", "1319995235", "MIS_025_B40", "box_GroupSizeTest_247.OnSize", "box_GroupSizeListener_v6_246.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_229_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_229_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_230();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|331127148", "331127148", "MIS_025_B40", "box_SetInteger_v2_229.Out", "box_OutputOrder_v2_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_119_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_119_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_120();
    l0 = self.box_PositionModifier_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|205593729", "205593729", "MIS_025_B40", "box_CreateVector3_119.Out", "box_PositionModifier_v2_120.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_157_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_101();
    l0 = self.box_Gate_v3_157;
    l1 = self.box_StaticBreakableListener_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1677661151", "1677661151", "MIS_025_B40", "box_Gate_v3_157.Closed", "box_StaticBreakableListener_101.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_157_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_106();
    l0 = self.box_Gate_v3_157;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|289678937", "289678937", "MIS_025_B40", "box_Gate_v3_157.Out", "box_SetContextualStrategy_106.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_167_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_167;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|591859743", "591859743", "MIS_025_B40", "box_Delay_v5_167.Started", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_167_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_168();
    l0 = self.box_Delay_v5_167;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1333489413", "1333489413", "MIS_025_B40", "box_Delay_v5_167.TimeElapsed", "box_SetContextualStrategy_168.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_145_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_144();
    l0 = self.box_TeleportPawns_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|153455558", "153455558", "MIS_025_B40", "box_Compare_Floats_145.A_ge_B", "box_TeleportPawns_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Floats_145_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1293118917", "1293118917", "MIS_025_B40", "box_Compare_Floats_145.A_lt_B", "box_MultipleOR_154.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_190_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_194();
    l0 = self.box_Delay_v5_190;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2017533216", "2017533216", "MIS_025_B40", "box_Delay_v5_190.TimeElapsed", "box_OutputOrder_v2_194.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_136_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_134();
    l0 = self.box_ProximityRadiusListener_v3_136;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|854502587", "854502587", "MIS_025_B40", "box_ProximityRadiusListener_v3_136.SomeoneFar", "box_SetContextualStrategy_134.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_136_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_133();
    l0 = self.box_ProximityRadiusListener_v3_136;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|812254690", "812254690", "MIS_025_B40", "box_ProximityRadiusListener_v3_136.SomeoneNear", "box_SetContextualStrategy_133.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_96_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_96();
    l0 = self.box_PlayDialog_v6_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|741091571", "741091571", "MIS_025_B40", "box_PlayDialog_v6_96.QueueCancelled", "box_PlayDialog_v6_96.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_96_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_104();
    l0 = self.box_PlayDialog_v6_96;
    l1 = self.box_PlayDialog_v6_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1708626350", "1708626350", "MIS_025_B40", "box_PlayDialog_v6_96.Stopped", "box_PlayDialog_v6_104.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_GetActivityFact_228_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_225();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1800627792", "1800627792", "MIS_025_B40", "box_GetActivityFact_228.FactNotSet", "box_IsEntityLoaded_v3_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_251_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_255();
    l0 = self.box_MissionAckTriggerListener_251;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1181377609", "1181377609", "MIS_025_B40", "box_MissionAckTriggerListener_251.Enter", "box_OutputOrder_v2_255.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_155_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_220();
    l0 = self.box_OnceOnly_v3_155;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1575750335", "1575750335", "MIS_025_B40", "box_OnceOnly_v3_155.Out", "box_OutputOrder_v2_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|258549889", "258549889", "MIS_025_B40", "box_BroadcastMessage_67.Out", "box_Delay_v5_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_102_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|412928217", "412928217", "MIS_025_B40", "box_IsEntityLoaded_v3_102.False", "box_MultipleOR_113.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_102_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_101();
    l0 = self.box_StaticBreakableListener_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|8943448", "8943448", "MIS_025_B40", "box_IsEntityLoaded_v3_102.True", "box_StaticBreakableListener_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|12482726", "12482726", "MIS_025_B40", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1900667897", "1900667897", "MIS_025_B40", "box_ActivityAcknowledgeGate_3.Reloaded", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1473976511", "1473976511", "MIS_025_B40", "box_MultipleOR_98.Out", "box_Delay_v5_97.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_HealthModifier_v2_253_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_260();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2112327776", "2112327776", "MIS_025_B40", "box_HealthModifier_v2_253.Damaged", "box_HealthModifier_v2_260.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_123_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_123;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|115648953", "115648953", "MIS_025_B40", "box_Delay_v5_123.TimeElapsed", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PersistentParticlesModifier_204_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_68();
    l0 = self.box_PersistentParticlesModifier_204;
    l1 = self.box_Delay_v5_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2058976868", "2058976868", "MIS_025_B40", "box_PersistentParticlesModifier_204.OnStopParticles", "box_Delay_v5_68.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_212_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_MultipleOR_212;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|13481184", "13481184", "MIS_025_B40", "box_MultipleOR_212.Out", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_103_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_103();
    l0 = self.box_PlayDialog_v6_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2060859013", "2060859013", "MIS_025_B40", "box_PlayDialog_v6_103.QueueCancelled", "box_PlayDialog_v6_103.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_151_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_166();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2064630169", "2064630169", "MIS_025_B40", "box_SetContextualStrategy_151.Out", "box_SetContextualStrategy_166.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_149_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_221();
    l0 = self.box_RemoveEntity_v2_149;
    l1 = self.box_RemoveEntity_v2_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1170092685", "1170092685", "MIS_025_B40", "box_RemoveEntity_v2_149.Out", "box_RemoveEntity_v2_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1665821853", "1665821853", "MIS_025_B40", "box_OutputOrder_v2_153.Out", "box_Simple_Node_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_236();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1836839087", "1836839087", "MIS_025_B40", "box_OutputOrder_v2_153.Out", "box_Compare_Boolean_236.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_221_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_222();
    l0 = self.box_RemoveEntity_v2_221;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1040694999", "1040694999", "MIS_025_B40", "box_RemoveEntity_v2_221.Out", "box_HealthModifier_v2_222.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeTest_258_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_257();
    l0 = self.box_GroupSizeTest_258;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1854477123", "1854477123", "MIS_025_B40", "box_GroupSizeTest_258.OnSize", "box_HealthModifier_v2_257.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_214_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_214;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|164233500", "164233500", "MIS_025_B40", "box_PlayDialog_v6_214.Finished", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_214_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_214;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1100928496", "1100928496", "MIS_025_B40", "box_PlayDialog_v6_214.FinishedInterrupted", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_214_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_214;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1549272470", "1549272470", "MIS_025_B40", "box_PlayDialog_v6_214.QueueCancelled", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_214_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_214();
    l0 = self.box_PlayDialog_v6_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1803013203", "1803013203", "MIS_025_B40", "box_PlayDialog_v6_214.Stopped", "box_PlayDialog_v6_214.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_62_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_62;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|844227787", "844227787", "MIS_025_B40", "box_PlayDialog_v6_62.Finished", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_62_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_62;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|385370390", "385370390", "MIS_025_B40", "box_PlayDialog_v6_62.FinishedInterrupted", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PawnInvincibleState_v2_40_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_171();
    l0 = self.box_Delay_v5_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2087381298", "2087381298", "MIS_025_B40", "box_PawnInvincibleState_v2_40.OnSet", "box_Delay_v5_171.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_161_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_169();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1429702392", "1429702392", "MIS_025_B40", "box_Compare_Integers_161.A_lt_B", "box_SetInteger_v2_169.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_174_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_MultipleOR_174;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|149309073", "149309073", "MIS_025_B40", "box_MultipleOR_174.Out", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_113_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_157();
    l0 = self.box_MultipleOR_113;
    l1 = self.box_Gate_v3_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1718170005", "1718170005", "MIS_025_B40", "box_MultipleOR_113.Out", "box_Gate_v3_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_95_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2045866980", "2045866980", "MIS_025_B40", "box_PlayDialog_v6_95.QueueCancelled", "box_PlayDialog_v6_95.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_95_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_96();
    l0 = self.box_PlayDialog_v6_95;
    l1 = self.box_PlayDialog_v6_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1003647524", "1003647524", "MIS_025_B40", "box_PlayDialog_v6_95.Stopped", "box_PlayDialog_v6_96.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_94_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_152();
    l0 = self.box_Gate_v3_94;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1855377053", "1855377053", "MIS_025_B40", "box_Gate_v3_94.Closed", "box_SetContextualStrategy_152.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_94_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_141();
    l0 = self.box_Gate_v3_94;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|442393367", "442393367", "MIS_025_B40", "box_Gate_v3_94.Out", "box_SetContextualStrategy_141.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_39_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_40();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1304855357", "1304855357", "MIS_025_B40", "box_PawnInvincibleState_v2_39.OnSet", "box_PawnInvincibleState_v2_40.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_202();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1802555727", "1802555727", "MIS_025_B40", "box_OutputOrder_v2_162.Out", "box_BroadcastMessage_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_279();
    l0 = self.box_Delay_v5_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1687655103", "1687655103", "MIS_025_B40", "box_OutputOrder_v2_162.Out", "box_Delay_v5_279.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_104_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_104();
    l0 = self.box_PlayDialog_v6_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|265115366", "265115366", "MIS_025_B40", "box_PlayDialog_v6_104.QueueCancelled", "box_PlayDialog_v6_104.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_104_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_103();
    l0 = self.box_PlayDialog_v6_104;
    l1 = self.box_PlayDialog_v6_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1643245361", "1643245361", "MIS_025_B40", "box_PlayDialog_v6_104.Stopped", "box_PlayDialog_v6_103.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_211_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_214();
    l0 = self.box_MultipleOR_211;
    l1 = self.box_PlayDialog_v6_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|437406962", "437406962", "MIS_025_B40", "box_MultipleOR_211.Out", "box_PlayDialog_v6_214.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_239_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2086512046", "2086512046", "MIS_025_B40", "box_OutputOrder_v2_239.Out", "box_Delay_v5_73.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_239_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1510801569", "1510801569", "MIS_025_B40", "box_OutputOrder_v2_239.Out", "box_MultipleOR_241.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|639559372", "639559372", "MIS_025_B40", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|56036463", "56036463", "MIS_025_B40", "box_OutputOrder_v2_4.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_51_Started()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_218();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_MultipleAND_v2_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|800999985", "800999985", "MIS_025_B40", "box_Delay_v5_51.Started", "box_MultipleAND_v2_218.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_51_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_51;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|90653548", "90653548", "MIS_025_B40", "box_Delay_v5_51.Stopped", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_58();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_PlayDialog_v6_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1140081445", "1140081445", "MIS_025_B40", "box_Delay_v5_51.TimeElapsed", "box_PlayDialog_v6_58.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_130;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|170665644", "170665644", "MIS_025_B40", "box_Delay_v5_130.TimeElapsed", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Floats_25_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_27();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1426426792", "1426426792", "MIS_025_B40", "box_Compare_Floats_25.A_ge_B", "box_FloatArithmetics_v2_27.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1158797860", "1158797860", "MIS_025_B40", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlayDialog_v6_215_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_215;
    l1 = self.box_MultipleOR_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1968604955", "1968604955", "MIS_025_B40", "box_PlayDialog_v6_215.Finished", "box_MultipleOR_212.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_215_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_215;
    l1 = self.box_MultipleOR_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1599874570", "1599874570", "MIS_025_B40", "box_PlayDialog_v6_215.FinishedInterrupted", "box_MultipleOR_212.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_215_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_PlayDialog_v6_215;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2016643864", "2016643864", "MIS_025_B40", "box_PlayDialog_v6_215.QueueCancelled", "box_PlayDialog_v6_38.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_215_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_215();
    l0 = self.box_PlayDialog_v6_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1926397597", "1926397597", "MIS_025_B40", "box_PlayDialog_v6_215.Stopped", "box_PlayDialog_v6_215.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|386794647", "386794647", "MIS_025_B40", "box_OutputOrder_v2_15.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_025_B40_RespawnManager_10();
    l0 = self.box_MIS_025_B40_RespawnManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|719031977", "719031977", "MIS_025_B40", "box_OutputOrder_v2_15.Out", "box_MIS_025_B40_RespawnManager_10.Disable_VehSpawnRTower", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_VehSpawnRTower
    l0:Exec(3, params);
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_173();
    l0 = self.box_SpawnAI_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1918225012", "1918225012", "MIS_025_B40", "box_SpawnAI_20.Out", "box_GetActivityFact_173.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_20_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1598139317", "1598139317", "MIS_025_B40", "box_SpawnAI_20.Spawned", "box_Delay_v5_84.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_224_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_223();
    l0 = self.box_RemoveEntity_v2_223;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|123468714", "123468714", "MIS_025_B40", "box_IsEntityLoaded_v3_224.True", "box_RemoveEntity_v2_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_225_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_226();
    l0 = self.box_RemoveEntity_v2_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1831089160", "1831089160", "MIS_025_B40", "box_IsEntityLoaded_v3_225.True", "box_RemoveEntity_v2_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MissionAckTriggerListener_18_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_MissionAckTriggerListener_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1742678804", "1742678804", "MIS_025_B40", "box_MissionAckTriggerListener_18.Enter", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_237_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_237;
    l1 = self.box_MultipleOR_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1319925856", "1319925856", "MIS_025_B40", "box_ProximityTrigger_v3_237.Disabled", "box_MultipleOR_231.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_237_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_233();
    l0 = self.box_ProximityTrigger_v3_237;
    l1 = self.box_MissionAckTriggerListener_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1667959432", "1667959432", "MIS_025_B40", "box_ProximityTrigger_v3_237.Enabled", "box_MissionAckTriggerListener_233.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_237_Enter()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v3_237();
    l0 = self.box_ProximityTrigger_v3_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|517088539", "517088539", "MIS_025_B40", "box_ProximityTrigger_v3_237.Enter", "box_ProximityTrigger_v3_237.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|@cin_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_160_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|@retreat_started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|8123599");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109802438899814122",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|16224411");
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

function export:OnEnter_box_FloatArithmetics_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|19892905");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_118_Out,
    });
    params = {
        -- A,
        [0] = self._sld_xPos_box_GetPosition_125,
        -- B,
        [1] = self._sld_Result_box_RandomFloat_v2_121,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_192()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109582454583989704",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_233()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109374063001520649",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|53999391");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_60()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3504735082",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_69()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "2323568255",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_90()
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

function export:OnEnter_box_ProximityRadiusListener_v3_266()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- farZone,
        [2] = 34.1,
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 34,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_59()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3293524107",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|92785001");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#6508D949",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|93560685");
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
                [0] = self.f_box_OutputOrder_v2_220_Out_0,
                [1] = self.f_box_OutputOrder_v2_220_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|95433159");
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
                [0] = self.f_box_OutputOrder_v2_230_Out_0,
                [1] = self.f_box_OutputOrder_v2_230_Out_1,
                [2] = self.f_box_OutputOrder_v2_230_Out_2,
                [3] = self.f_box_OutputOrder_v2_230_Out_3,
                [4] = self.f_box_OutputOrder_v2_230_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_252()
    local params;
    params = {
        -- Group,
        [0] = "#15622DC6",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3794843631",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_189()
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

function export:OnEnter_box_GetDistance_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|145455097");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_146_Out,
    });
    params = {
        -- Entity1,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- Entity2,
        [1] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|153100480");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_159_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109430785990758122",
        -- Entity,
        [2] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|156169983");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_126_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_RandomFloat_v2_121,
        -- B,
        [1] = self._sld_yPos_box_GetPosition_125,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_142()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|198537854");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_177_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_177_Yes,
    });
    params = {
        -- ent,
        [4] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_ListGetRandom_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListGetRandom_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|220550742");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListGetRandom_88_Out,
    });
    params = {
        -- Input,
        [0] = self._sld_Pawns_box_GetFromGroup_89,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3405292301",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_182()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_197()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 13,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_75()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|295995484");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_184_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109566155726278260",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_150()
    local params;
    params = {
        -- Group,
        [0] = "#FF4B1EC9",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_114()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityPreconditionListener_v2_64()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- Entity,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- EntityPreconditionId,
        [2] = "9015154017924179",
        -- TestOnEnable,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|335248400");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_47_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_Hostage_1_Resqued",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|338363637");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_17_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_17_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109694796917395911",
        -- Entity,
        [2] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_242()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|362387347");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_270_Damaged,
    });
    l0 = self.box_HealthListener_v6_269;
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = l0:GetDataOutValue(4),
        -- pawns,
        [2] = self.compan_nonpers,
        -- value,
        [3] = 1000,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|389635978");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109666535380361134",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_135()
    local params;
    params = {
        -- fadeDuration,
        [0] = 5,
        -- particleSystem,
        [1] = "newparticles/63058540764425256.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|400609945");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_139_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109804227101484454",
        -- Group,
        [1] = "2109495835749262877",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_128()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3900798261",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_117()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109495835745068567",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|415473442");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_200_Out,
    });
    params = {
        -- Message,
        [0] = "MIS_025_B40_StartStormHigh",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_249()
    local params;
    params = {
        -- Group,
        [0] = "#54DDE821",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 1,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_171()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_137()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_144()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109805433119060170",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = PersistentGlobals.MIS_025_Manager.barnes,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_219()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1162263423",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_175()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870637778",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_28()
    local params;
    params = {
        -- BoneName,
        [0] = "Hips",
        -- EntityA,
        [1] = "2109440428653686399",
        -- EntityB,
        [2] = "2109440455270739653",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_271()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.Player,
        -- farZone,
        [2] = 50,
        -- id2,
        [3] = "2109666535380361134",
        -- nearZone,
        [4] = 35,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|493563676");
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
                [0] = self.f_box_OutputOrder_v2_138_Out_0,
                [1] = self.f_box_OutputOrder_v2_138_Out_1,
                [2] = self.f_box_OutputOrder_v2_138_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_101()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109524581128608894",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_45()
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

function export:OnEnter_box_SoundModifier_v2_79()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "1162620898",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_243()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#8CB91E5A",
        -- farZone,
        [2] = 40,
        -- id2,
        [3] = self.Player,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|560092820");
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
                [0] = self.f_box_OutputOrder_v2_240_Out_0,
                [1] = self.f_box_OutputOrder_v2_240_Out_1,
                [2] = self.f_box_OutputOrder_v2_240_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_100()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|567600456");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_222_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#AD73AA75",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|576400803");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_31_Out,
    });
    params = {
        -- Float,
        [0] = self._sld_Result_box_FloatArithmetics_v2_27,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|582309050");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 5,
        -- seconds,
        [2] = 30,
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

function export:OnEnter_box_SetContextualStrategy_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|610847923");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109966432985948619",
        -- Group,
        [1] = "#6AC1C6DF",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|614849712");
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
                [0] = self.f_box_OutputOrder_v2_183_Out_0,
                [1] = self.f_box_OutputOrder_v2_183_Out_1,
                [2] = self.f_box_OutputOrder_v2_183_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_223()
    local params;
    params = {
        -- Group,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|632161082");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_86_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|641276480");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2109247339184000551",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|642617968");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_107_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|671221245");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_83_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317620781682",
        -- missionLayerId,
        [1] = "54181915385324033",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_66()
    local params;
    params = {
        -- fadeDuration,
        [0] = 5,
        -- particleSystem,
        [1] = "newparticles/9015345236642318.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|717280555");
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
                [0] = self.f_box_OutputOrder_v2_187_Out_0,
                [1] = self.f_box_OutputOrder_v2_187_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_179()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|745972267");
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
                [0] = self.f_box_OutputOrder_v2_255_Out_0,
                [1] = self.f_box_OutputOrder_v2_255_Out_1,
                [2] = self.f_box_OutputOrder_v2_255_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_58()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1186542764",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|771941353");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|783274365");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_173_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_173_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620982647",
        -- Fact,
        [1] = "MIS_025_B20_AlarmMode",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|799064576");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109746449408349777",
        -- Group,
        [1] = "#AE2848CB",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_24()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_269()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#485E4BF9",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_217()
    local params;
    params = {
        -- Group,
        [0] = "2109843415182093854",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1162263423",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_226()
    local params;
    params = {
        -- Group,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|861638765");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109804227101484454",
        -- Group,
        [1] = "2109495835749262877",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_196()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109440428647394935",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|863049471");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_205_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109279551927406529",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_54()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109250379232326989",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_77()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109746377849326689",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_147()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109510905170504493",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|881836149");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_23_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_23_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109694796917395911",
        -- Entity,
        [2] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 35,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_105()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|890603663");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|892525750");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
                [4] = self.f_box_OutputOrder_v2_9_Out_4,
                [5] = self.f_box_OutputOrder_v2_9_Out_5,
                [6] = self.f_box_OutputOrder_v2_9_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|892654012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|896255356");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_267_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109280068426591017",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|899498090");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
                [2] = self.f_box_OutputOrder_v2_37_Out_2,
                [3] = self.f_box_OutputOrder_v2_37_Out_3,
                [4] = self.f_box_OutputOrder_v2_37_Out_4,
                [5] = self.f_box_OutputOrder_v2_37_Out_5,
                [6] = self.f_box_OutputOrder_v2_37_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|926561396");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "MIS_025_B40_FailSafeMarker",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|939698470");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_115_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_115_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109788484603490164",
        -- Entity,
        [2] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_245()
    local params;
    params = {
        -- Group,
        [0] = "#8CB91E5A",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|947826196");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109260734882916152",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "530853209",
    };
    return params;
end;

function export:OnEnter_box_GetFromGroup_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetFromGroup_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|993936591");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetFromGroup_89_Out,
    });
    params = {
        -- Group,
        [0] = "#485E4BF9",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|996830093");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_202_Out,
    });
    params = {
        -- Message,
        [0] = "MIS_025_B40_StartStormVeryHigh",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1029434172");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_193_Out,
    });
    params = {
        -- Integer,
        [1] = 8,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_201()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1066418517");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_156()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_256()
    local params;
    params = {
        -- Group,
        [0] = "#2617656D",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_48()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109440428653686399",
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

function export:OnEnter_box_SoundModifier_v2_78()
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

function export:OnEnter_box_GetPosition_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1116129599");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_125_Out,
    });
    params = {
        -- id,
        [0] = self.Player,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_218()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_132()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1137363930");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_236_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_236_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_025_Manager.radio_call,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1142868198");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_178_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_178_Yes,
    });
    params = {
        -- ent,
        [4] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_185()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109566311928450729",
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_35()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = true,
        -- Mode,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_163()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1224397977");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_108_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_108_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_108_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = self.compan_nonpers,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_213()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "256296868",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_238()
    local params;
    params = {
        -- fadeDuration,
        [0] = 5,
        -- particleSystem,
        [1] = "newparticles/9015344725208974.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 0,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109496507861329038",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1252403819");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_27_Out,
    });
    l0 = self.box_HealthListener_v6_24;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2.8,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1256612979");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_203_Out,
    });
    params = {
        -- Message,
        [0] = "MIS_025_B40_StartStormVeryHigh",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_68()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1268773479");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_106_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109776484477443246",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1291856696");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = self.compan_nonpers,
        -- Group,
        [1] = "#485E4BF9",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_41()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2326602970",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1334844804");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
                [3] = self.f_box_OutputOrder_v2_21_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1338192927");
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
                [0] = self.f_box_OutputOrder_v2_227_Out_0,
                [1] = self.f_box_OutputOrder_v2_227_Out_1,
                [2] = self.f_box_OutputOrder_v2_227_Out_2,
                [3] = self.f_box_OutputOrder_v2_227_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_91()
    local params;
    params = {
        -- Group,
        [0] = "#485E4BF9",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_246()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#8CB91E5A",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1371960750");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_92_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 3,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = self.compan_nonpers,
        -- value,
        [3] = 50,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1382705785");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_121_Out,
    });
    params = {
        -- Max,
        [0] = 20,
        -- Min,
        [1] = -20,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_254()
    local params;
    params = {
        -- Group,
        [0] = "#2617656D",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1430142489");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2109348326494278023",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1431405998");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_170_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109440455270739653",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1437426257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_169_Out,
    });
    params = {
        -- Integer,
        [1] = 10,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1437441445");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109804227101484454",
        -- Group,
        [1] = "2109495835749262877",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1438253399");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_208_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109279551927406529",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_EntityPreconditionListener_v2_122()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- Entity,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- EntityPreconditionId,
        [2] = "9015154017924179",
        -- TestOnEnable,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_206()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109527718799350283",
    };
    return params;
end;

function export:OnEnter_box_MIS_025_B40_RespawnManager_10()
    local params;
    params = {
        -- max_npc_limit,
        [0] = self.npc_limit,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1473924894");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
                [3] = self.f_box_OutputOrder_v2_50_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1494266947");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_14_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_14_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109430766952812260",
        -- Entity,
        [2] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_250()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109623038770176665",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1521105116");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_257_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#8B06B865",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109348903651506057",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1543985873");
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
                [0] = self.f_box_OutputOrder_v2_194_Out_0,
                [1] = self.f_box_OutputOrder_v2_194_Out_1,
                [2] = self.f_box_OutputOrder_v2_194_Out_2,
                [3] = self.f_box_OutputOrder_v2_194_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_32()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_116()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_279()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 40,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_82()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109746377849326689",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1639921534");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_16_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109694796917395911",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1654513458");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_166_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109745362559313258",
        -- Group,
        [1] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_191()
    local params;
    params = {
        -- Group,
        [0] = "#54DDE821",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 1,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1675993605");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_199_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.npc_limit,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1676006043");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_143_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109789192857861169",
        -- Group,
        [1] = "2109495835749262877",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_247()
    local params;
    params = {
        -- Group,
        [0] = "#8CB91E5A",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_188()
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

function export:OnEnter_box_SetInteger_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1685636426");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_229_Out,
    });
    params = {
        -- Integer,
        [1] = 12,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1716221383");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_119_Out,
    });
    params = {
        -- x,
        [0] = self._sld_Result_box_FloatArithmetics_v2_118,
        -- y,
        [1] = self._sld_Result_box_FloatArithmetics_v2_126,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_125,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1726302024");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_157()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_167()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1747827043");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_145_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_145_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_146,
        -- B,
        [1] = 20,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_190()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_136()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- farZone,
        [2] = 25.1,
        -- id2,
        [3] = PersistentGlobals.MIS_025_Manager.barnes,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_96()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "530853209",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1755060834");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_228_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_Hostage_2_Resqued",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_251()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109374063001520649",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1764867615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_67_Out,
    });
    params = {
        -- Message,
        [0] = "MIS_025_B40_EndCinStarted",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1776118170");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_102_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_102_True,
    });
    params = {
        -- entityId,
        [0] = "2109524581128608894",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1811229086");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = self._sld_Target_box_SetInteger_v2_31,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1814071800");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_253_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#15622DC6",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_123()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_204()
    local params;
    params = {
        -- fadeDuration,
        [0] = 5,
        -- particleSystem,
        [1] = "newparticles/63058549911183370.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_103()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3293524107",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1844325085");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_151_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109745362559313258",
        -- Group,
        [1] = "#485E4BF9",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_149()
    local params;
    params = {
        -- Group,
        [0] = "#FF4B1EC9",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1853093607");
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
                [0] = self.f_box_OutputOrder_v2_153_Out_0,
                [1] = self.f_box_OutputOrder_v2_153_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1856415146");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109346483043098428",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_221()
    local params;
    params = {
        -- Group,
        [0] = "#AD73AA75",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_258()
    local params;
    params = {
        -- Group,
        [0] = "#8B06B865",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_214()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "530853209",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_62()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3504735082",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1915010065");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_40_OnSet,
    });
    params = {
        -- Pawn,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1925940121");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_161_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.npc_limit,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1929787747");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#8CB91E5A",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_95()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1186542764",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_94()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1981351913");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_39_OnSet,
    });
    params = {
        -- Pawn,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1989827481");
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

function export:OnEnter_box_SetContextualStrategy_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|1992308477");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109789192857861169",
        -- Group,
        [1] = "2109495835749262877",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_261()
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

function export:OnEnter_box_HealthModifier_v2_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2000872550");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#120FE9DF",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_104()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3794843631",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2032864497");
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
        [8] = "MIS_025_B40 Mission Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2041899517");
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

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2042426942");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2091026101");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_25_A_ge_B,
    });
    l0 = self.box_HealthListener_v6_24;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_215()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2596893313",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2115122257");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109280774214651391",
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_36()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = true,
        -- Mode,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2130562738");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_224_True,
    });
    params = {
        -- entityId,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40|2135437033");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_225_True,
    });
    params = {
        -- entityId,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109279695752187932",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_237()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109527718799350283",
    };
    return params;
end;

function export:OnExit_box_FloatArithmetics_v2_118_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_118 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_146_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_146 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_126 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListGetRandom_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    self.compan_nonpers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_175_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_175;
    PersistentGlobals.MIS_025_Manager.barnes = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self._sld_Target_box_SetInteger_v2_31 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_86_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_90;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.npc_limit = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_179_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_179;
    PersistentGlobals.MIS_025_Manager.rush = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_269_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_269;
    self.compan_nonpers = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_269_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_269;
    self.compan_nonpers = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_269_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_269;
    self.compan_nonpers = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_269_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_269;
    self.compan_nonpers = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_269_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_269;
    self.compan_nonpers = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_269_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_269;
    self.compan_nonpers = l0:GetDataOutValue(6);
end;

function export:OnExit_box_GetLocalPlayer_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetFromGroup_89_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    self._sld_Pawns_box_GetFromGroup_89 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_193_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.npc_limit = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_125_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_125 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_125 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_125 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_FloatArithmetics_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_27 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_121 = l0:GetDataOutValue(0);
    self._sld_Result_box_RandomFloat_v2_121 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_169_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.npc_limit = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.npc_limit = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_119_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_120;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
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
