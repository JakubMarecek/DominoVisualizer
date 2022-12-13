LUAC�m -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_announcergen.domino
-- User graph: MIS_310_AnnouncerGen_Main
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
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsImpulse.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1435498592.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1121759624.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2030218351.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2291793794.bnk]], "CSoundResource");
        cboxRes:LoadResource([[698871065.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2219163749.bnk]], "CSoundResource");
        cboxRes:LoadResource([[411628218.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1078611635.bnk]], "CSoundResource");
        cboxRes:LoadResource([[17436419.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1596157789.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1963020771.bnk]], "CSoundResource");
        cboxRes:LoadResource([[801142233.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2069465359.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3386147209.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3134812100.bnk]], "CSoundResource");
        cboxRes:LoadResource([[728517962.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3232886415.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3849841609.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4183929669.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3037340461.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_AnnouncerGen.MIS_310_AnnouncerGen_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
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
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/RandomBoolean_v2.lua")] = {
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
                name = "Result",
                type = "bool",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "RelevancyTime",
                type = "float",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
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
    self._name = "MIS_310_AnnouncerGen_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main";
    self.box_GroupSizeListener_v6_40 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2682002");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_40_MemberRemoved,
    });
    self.box_MIS_310_AnnouncerDialogs_16 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|10803472");
    l0:SetConnections({
    });
    self.box_Delay_v5_83 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|27848836");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_83_TimeElapsed,
    });
    self.box_OnceOnly_v3_68 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|39885254");
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
    self.box_Random_32 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|42257077");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
            [1] = 5,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_32_Output_0,
                [1] = self.f_box_Random_32_Output_1,
                [2] = self.f_box_Random_32_Output_2,
                [3] = self.f_box_Random_32_Output_3,
                [4] = self.f_box_Random_32_Output_4,
            },
            count = 5,
        },
    });
    self.box_HealthListener_v6_41 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|106843099");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_41_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_41_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_41_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_41_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_41_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_41_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_41_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_41_Revived,
    });
    self.box_MIS_310_AnnouncerDialogs_25 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|168657191");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_88 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|294218552");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_88_OnBreak,
    });
    self.box_StaticBreakableListener_70 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|312332683");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_70_OnBreak,
    });
    self.box_HealthListener_v6_47 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|313124545");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_47_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_47_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_47_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_47_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_47_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_47_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_47_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_47_Revived,
    });
    self.box_HealthListener_v6_55 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|316130365");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_55_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_55_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_55_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_55_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_55_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_55_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_55_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_55_Revived,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|336559342");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_OnceOnly_v3_61 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|368284330");
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
                [0] = self.f_box_OnceOnly_v3_61_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_91 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|443057442");
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
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|464403227");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_MIS_310_AnnouncerDialogs_4 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|476890867");
    l0:SetConnections({
    });
    self.box_Random_46 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|516192377");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_46_Output_0,
                [1] = self.f_box_Random_46_Output_1,
                [2] = self.f_box_Random_46_Output_2,
            },
            count = 3,
        },
    });
    self.box_Random_50 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|602944339");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_50_Output_0,
                [1] = self.f_box_Random_50_Output_1,
                [2] = self.f_box_Random_50_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|632669682");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_MIS_310_AnnouncerDialogs_11 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|661779972");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_28 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|680871103");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|745182335");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_8 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|807407067");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_3 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|814096114");
    l0:SetConnections({
    });
    self.box_Bind_v4_75 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|821637378");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_75_Bound,
    });
    self.box_Switch_17 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|837311262");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
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
                [0] = self.f_box_Switch_17_Output_0,
                [1] = self.f_box_Switch_17_Output_1,
                [2] = self.f_box_Switch_17_Output_2,
            },
            count = 3,
        },
    });
    self.box_Bind_v4_76 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|866160358");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_76_Bound,
    });
    self.box_GroupSizeListener_v6_29 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|882686602");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_29_MemberRemoved,
    });
    self.box_MIS_310_AnnouncerDialogs_15 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|890575857");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_18 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|917300498");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_24 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|965887530");
    l0:SetConnections({
    });
    self.box_MultipleOR_69 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1016673116");
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
        [0] = self.f_box_MultipleOR_69_Out,
    });
    self.box_StaticBreakableListener_22 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1128939286");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_22_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_22_OnDamage,
    });
    self.box_MessageListener_v3_90 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1136128872");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_90_Received,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1142060400");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_StaticBreakableListener_63 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1172066192");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_63_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_63_OnDamage,
    });
    self.box_GroupSizeListener_v6_37 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1215115462");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_37_MemberRemoved,
    });
    self.box_Random_30 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1230616471");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_30_Output_0,
                [1] = self.f_box_Random_30_Output_1,
                [2] = self.f_box_Random_30_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1300991805");
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
    self.box_GroupSizeListener_v6_31 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1341964550");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_31_MemberRemoved,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1350477473");
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
    self.box_MIS_310_AnnouncerDialogs_19 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1447260816");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_7 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1553546722");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_66 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1555471614");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_66_Received,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1592173441");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_MIS_310_AnnouncerDialogs_2 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1824241054");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_5 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1834477221");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_1 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1861019878");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_12 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1866424979");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_20 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1938235696");
    l0:SetConnections({
    });
    self.box_Random_56 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1951972018");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_56_Output_0,
                [1] = self.f_box_Random_56_Output_1,
            },
            count = 2,
        },
    });
    self.box_MIS_310_AnnouncerDialogs_9 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1968037902");
    l0:SetConnections({
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1990753288");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_MIS_310_AnnouncerDialogs_27 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2021470479");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_62 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2041467295");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_62_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_62_OnDamage,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2060599694");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2140433479");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2146498556");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1640720173", "1640720173", "MIS_310_AnnouncerGen_Main", "In", "box_Simple_Node_33.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_41();
    l0 = self.box_HealthListener_v6_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1584791786", "1584791786", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_HealthListener_v6_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeListener_v6_40();
    l0 = self.box_GroupSizeListener_v6_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1290209820", "1290209820", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_GroupSizeListener_v6_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeListener_v6_31();
    l0 = self.box_GroupSizeListener_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|812624962", "812624962", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_GroupSizeListener_v6_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_HealthListener_v6_47();
    l0 = self.box_HealthListener_v6_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|927789708", "927789708", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_HealthListener_v6_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MessageListener_v3_66();
    l0 = self.box_MessageListener_v3_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1766874088", "1766874088", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_MessageListener_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeListener_v6_29();
    l0 = self.box_GroupSizeListener_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1917971409", "1917971409", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_GroupSizeListener_v6_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_HealthListener_v6_55();
    l0 = self.box_HealthListener_v6_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|363485717", "363485717", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_HealthListener_v6_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeListener_v6_37();
    l0 = self.box_GroupSizeListener_v6_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1858676149", "1858676149", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_GroupSizeListener_v6_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MessageListener_v3_90();
    l0 = self.box_MessageListener_v3_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|846157187", "846157187", "MIS_310_AnnouncerGen_Main", "box_Simple_Node_33.Out", "box_MessageListener_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_40_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_40;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1396222744", "1396222744", "MIS_310_AnnouncerGen_Main", "box_GroupSizeListener_v6_40.MemberRemoved", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CreateVector3_81_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_81_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_87();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1526898170", "1526898170", "MIS_310_AnnouncerGen_Main", "box_CreateVector3_81.Out", "box_PhysicsImpulse_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_83_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_78();
    l0 = self.box_Delay_v5_83;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|310900381", "310900381", "MIS_310_AnnouncerGen_Main", "box_Delay_v5_83.TimeElapsed", "box_CreateVector3_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_6_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_63();
    l0 = self.box_StaticBreakableListener_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1950848585", "1950848585", "MIS_310_AnnouncerGen_Main", "box_IsValueNil_v3_6.No", "box_StaticBreakableListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_68_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_1();
    l0 = self.box_OnceOnly_v3_68;
    l1 = self.box_MIS_310_AnnouncerDialogs_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1884870737", "1884870737", "MIS_310_AnnouncerGen_Main", "box_OnceOnly_v3_68.Out", "box_MIS_310_AnnouncerDialogs_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_32_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_8();
    l0 = self.box_Random_32;
    l1 = self.box_MIS_310_AnnouncerDialogs_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|992757672", "992757672", "MIS_310_AnnouncerGen_Main", "box_Random_32.Output", "box_MIS_310_AnnouncerDialogs_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_32_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_20();
    l0 = self.box_Random_32;
    l1 = self.box_MIS_310_AnnouncerDialogs_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1824146926", "1824146926", "MIS_310_AnnouncerGen_Main", "box_Random_32.Output", "box_MIS_310_AnnouncerDialogs_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_32_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_16();
    l0 = self.box_Random_32;
    l1 = self.box_MIS_310_AnnouncerDialogs_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|709506153", "709506153", "MIS_310_AnnouncerGen_Main", "box_Random_32.Output", "box_MIS_310_AnnouncerDialogs_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_32_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_2();
    l0 = self.box_Random_32;
    l1 = self.box_MIS_310_AnnouncerDialogs_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|749430906", "749430906", "MIS_310_AnnouncerGen_Main", "box_Random_32.Output", "box_MIS_310_AnnouncerDialogs_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_32_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_12();
    l0 = self.box_Random_32;
    l1 = self.box_MIS_310_AnnouncerDialogs_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|194370351", "194370351", "MIS_310_AnnouncerGen_Main", "box_Random_32.Output", "box_MIS_310_AnnouncerDialogs_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Strings_54_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|684828525", "684828525", "MIS_310_AnnouncerGen_Main", "box_Compare_Strings_54.A_eq_B", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Strings_54_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|752490041", "752490041", "MIS_310_AnnouncerGen_Main", "box_Compare_Strings_54.A_neq_B", "box_OnceOnly_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_41_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_42();
    l0 = self.box_HealthListener_v6_41;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|346247061", "346247061", "MIS_310_AnnouncerGen_Main", "box_HealthListener_v6_41.Damaged", "box_Compare_Strings_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_48_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1277364242", "1277364242", "MIS_310_AnnouncerGen_Main", "box_Compare_Strings_48.A_eq_B", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsValueNil_v3_72_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_62();
    l0 = self.box_StaticBreakableListener_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|718668597", "718668597", "MIS_310_AnnouncerGen_Main", "box_IsValueNil_v3_72.No", "box_StaticBreakableListener_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_88_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_83();
    l0 = self.box_StaticBreakableListener_88;
    l1 = self.box_Delay_v5_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|891657062", "891657062", "MIS_310_AnnouncerGen_Main", "box_StaticBreakableListener_88.OnBreak", "box_Delay_v5_83.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_70_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_70;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|63826158", "63826158", "MIS_310_AnnouncerGen_Main", "box_StaticBreakableListener_70.OnBreak", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_47_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_49();
    l0 = self.box_HealthListener_v6_47;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|488578147", "488578147", "MIS_310_AnnouncerGen_Main", "box_HealthListener_v6_47.Killed", "box_Compare_Strings_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_55_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_57();
    l0 = self.box_HealthListener_v6_55;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1054197424", "1054197424", "MIS_310_AnnouncerGen_Main", "box_HealthListener_v6_55.Damaged", "box_Compare_Strings_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_71_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|258471390", "258471390", "MIS_310_AnnouncerGen_Main", "box_ParticleSystem_v3_71.Stopped", "box_MultipleOR_69.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_MultipleOR_38;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1845132321", "1845132321", "MIS_310_AnnouncerGen_Main", "box_MultipleOR_38.Out", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CreateVector3_82_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_82_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_81();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1013145292", "1013145292", "MIS_310_AnnouncerGen_Main", "box_CreateVector3_82.Out", "box_CreateVector3_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_61_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_OnceOnly_v3_61;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|708045625", "708045625", "MIS_310_AnnouncerGen_Main", "box_OnceOnly_v3_61.Out", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_MultipleOR_91;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1915133418", "1915133418", "MIS_310_AnnouncerGen_Main", "box_MultipleOR_91.Out", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_50();
    l0 = self.box_Delay_v5_65;
    l1 = self.box_Random_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|391931305", "391931305", "MIS_310_AnnouncerGen_Main", "box_Delay_v5_65.TimeElapsed", "box_Random_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Strings_57_A_contains_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|273402240", "273402240", "MIS_310_AnnouncerGen_Main", "box_Compare_Strings_57.A_contains_B", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_57_A_ncontains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_54();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2135639286", "2135639286", "MIS_310_AnnouncerGen_Main", "box_Compare_Strings_57.A_ncontains_B", "box_Compare_Strings_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_46_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_3();
    l0 = self.box_Random_46;
    l1 = self.box_MIS_310_AnnouncerDialogs_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1481369643", "1481369643", "MIS_310_AnnouncerGen_Main", "box_Random_46.Output", "box_MIS_310_AnnouncerDialogs_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_46_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_5();
    l0 = self.box_Random_46;
    l1 = self.box_MIS_310_AnnouncerDialogs_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1167687461", "1167687461", "MIS_310_AnnouncerGen_Main", "box_Random_46.Output", "box_MIS_310_AnnouncerDialogs_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_46_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_25();
    l0 = self.box_Random_46;
    l1 = self.box_MIS_310_AnnouncerDialogs_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1041277033", "1041277033", "MIS_310_AnnouncerGen_Main", "box_Random_46.Output", "box_MIS_310_AnnouncerDialogs_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_36_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|517817804", "517817804", "MIS_310_AnnouncerGen_Main", "box_Compare_Boolean_36.A_is_True", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_50_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_24();
    l0 = self.box_Random_50;
    l1 = self.box_MIS_310_AnnouncerDialogs_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|882316724", "882316724", "MIS_310_AnnouncerGen_Main", "box_Random_50.Output", "box_MIS_310_AnnouncerDialogs_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_50_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_19();
    l0 = self.box_Random_50;
    l1 = self.box_MIS_310_AnnouncerDialogs_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1369425020", "1369425020", "MIS_310_AnnouncerGen_Main", "box_Random_50.Output", "box_MIS_310_AnnouncerDialogs_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_50_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_4();
    l0 = self.box_Random_50;
    l1 = self.box_MIS_310_AnnouncerDialogs_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|367180922", "367180922", "MIS_310_AnnouncerGen_Main", "box_Random_50.Output", "box_MIS_310_AnnouncerDialogs_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_86();
    l0 = self.box_Delay_v5_80;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|753800818", "753800818", "MIS_310_AnnouncerGen_Main", "box_Delay_v5_80.TimeElapsed", "box_CreateVector3_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_34_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2132671098", "2132671098", "MIS_310_AnnouncerGen_Main", "box_Compare_Boolean_34.A_is_True", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_75_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_89();
    l0 = self.box_Bind_v4_75;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1042939625", "1042939625", "MIS_310_AnnouncerGen_Main", "box_Bind_v4_75.Bound", "box_ParticleSystem_v3_89.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_17_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_9();
    l0 = self.box_Switch_17;
    l1 = self.box_MIS_310_AnnouncerDialogs_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|217324482", "217324482", "MIS_310_AnnouncerGen_Main", "box_Switch_17.Output", "box_MIS_310_AnnouncerDialogs_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_17_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_11();
    l0 = self.box_Switch_17;
    l1 = self.box_MIS_310_AnnouncerDialogs_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|734863441", "734863441", "MIS_310_AnnouncerGen_Main", "box_Switch_17.Output", "box_MIS_310_AnnouncerDialogs_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_17_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_18();
    l0 = self.box_Switch_17;
    l1 = self.box_MIS_310_AnnouncerDialogs_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|969150881", "969150881", "MIS_310_AnnouncerGen_Main", "box_Switch_17.Output", "box_MIS_310_AnnouncerDialogs_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_76_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_75();
    l0 = self.box_Bind_v4_76;
    l1 = self.box_Bind_v4_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|237509132", "237509132", "MIS_310_AnnouncerGen_Main", "box_Bind_v4_76.Bound", "box_Bind_v4_75.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_29_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_RandomBoolean_v2_26();
    l0 = self.box_GroupSizeListener_v6_29;
    l1 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1626458294", "1626458294", "MIS_310_AnnouncerGen_Main", "box_GroupSizeListener_v6_29.MemberRemoved", "box_RandomBoolean_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_69_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_69;
    l1 = self.box_OnceOnly_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1060574038", "1060574038", "MIS_310_AnnouncerGen_Main", "box_MultipleOR_69.Out", "box_OnceOnly_v3_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|670253949", "670253949", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_92.Out", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2090440499", "2090440499", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_92.Out", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_45_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1378541898", "1378541898", "MIS_310_AnnouncerGen_Main", "box_Compare_Boolean_45.A_is_True", "box_Delay_v5_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_CreateVector3_86_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_86_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_74();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|905709656", "905709656", "MIS_310_AnnouncerGen_Main", "box_CreateVector3_86.Out", "box_CreateVector3_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_22_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_71();
    l0 = self.box_StaticBreakableListener_22;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|872968793", "872968793", "MIS_310_AnnouncerGen_Main", "box_StaticBreakableListener_22.OnBreak", "box_ParticleSystem_v3_71.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_22_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_21();
    l0 = self.box_StaticBreakableListener_22;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|668950136", "668950136", "MIS_310_AnnouncerGen_Main", "box_StaticBreakableListener_22.OnDamage", "box_StaticBreakableBreaker_21.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_90_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_MessageListener_v3_90;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|974298391", "974298391", "MIS_310_AnnouncerGen_Main", "box_MessageListener_v3_90.Received", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_MultipleOR_51;
    l1 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1782900777", "1782900777", "MIS_310_AnnouncerGen_Main", "box_MultipleOR_51.Out", "box_Delay_v5_65.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CreateVector3_78_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_78_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_84();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|10347713", "10347713", "MIS_310_AnnouncerGen_Main", "box_CreateVector3_78.Out", "box_CreateVector3_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_63_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_63;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1461602373", "1461602373", "MIS_310_AnnouncerGen_Main", "box_StaticBreakableListener_63.OnBreak", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_63_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_64();
    l0 = self.box_StaticBreakableListener_63;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|685367046", "685367046", "MIS_310_AnnouncerGen_Main", "box_StaticBreakableListener_63.OnDamage", "box_StaticBreakableBreaker_64.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_37_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_37;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1540179680", "1540179680", "MIS_310_AnnouncerGen_Main", "box_GroupSizeListener_v6_37.MemberRemoved", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_30_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_14();
    l0 = self.box_Random_30;
    l1 = self.box_MIS_310_AnnouncerDialogs_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1443799225", "1443799225", "MIS_310_AnnouncerGen_Main", "box_Random_30.Output", "box_MIS_310_AnnouncerDialogs_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_30_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_28();
    l0 = self.box_Random_30;
    l1 = self.box_MIS_310_AnnouncerDialogs_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|59920686", "59920686", "MIS_310_AnnouncerGen_Main", "box_Random_30.Output", "box_MIS_310_AnnouncerDialogs_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_30_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_27();
    l0 = self.box_Random_30;
    l1 = self.box_MIS_310_AnnouncerDialogs_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|83260416", "83260416", "MIS_310_AnnouncerGen_Main", "box_Random_30.Output", "box_MIS_310_AnnouncerDialogs_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_13_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_22();
    l0 = self.box_StaticBreakableListener_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1483637997", "1483637997", "MIS_310_AnnouncerGen_Main", "box_IsValueNil_v3_13.No", "box_StaticBreakableListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_MultipleOR_93;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1810519424", "1810519424", "MIS_310_AnnouncerGen_Main", "box_MultipleOR_93.Out", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|91685551", "91685551", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_73.Out", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1913619861", "1913619861", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_73.Out", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhysicsImpulse_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_70();
    l0 = self.box_StaticBreakableListener_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1840632751", "1840632751", "MIS_310_AnnouncerGen_Main", "box_PhysicsImpulse_87.Out", "box_StaticBreakableListener_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_31_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_RandomBoolean_v2_35();
    l0 = self.box_GroupSizeListener_v6_31;
    l1 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1251785449", "1251785449", "MIS_310_AnnouncerGen_Main", "box_GroupSizeListener_v6_31.MemberRemoved", "box_RandomBoolean_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_56();
    l0 = self.box_MultipleOR_53;
    l1 = self.box_Random_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|25419449", "25419449", "MIS_310_AnnouncerGen_Main", "box_MultipleOR_53.Out", "box_Random_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_CreateVector3_74_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_74_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_79();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|999441308", "999441308", "MIS_310_AnnouncerGen_Main", "box_CreateVector3_74.Out", "box_PhysicsImpulse_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_17();
    l0 = self.box_Switch_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1135031298", "1135031298", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_58.Out", "box_Switch_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1101787048", "1101787048", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_58.Out", "box_Delay_v5_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MessageListener_v3_66_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_MessageListener_v3_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1408693368", "1408693368", "MIS_310_AnnouncerGen_Main", "box_MessageListener_v3_66.Received", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_32();
    l0 = self.box_Delay_v5_10;
    l1 = self.box_Random_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|299561675", "299561675", "MIS_310_AnnouncerGen_Main", "box_Delay_v5_10.TimeElapsed", "box_Random_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RandomBoolean_v2_44_Out()
    local params, l0;
    self:OnExit_box_RandomBoolean_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_45();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|722453466", "722453466", "MIS_310_AnnouncerGen_Main", "box_RandomBoolean_v2_44.Out", "box_Compare_Boolean_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_84_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_84_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_85();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1527839597", "1527839597", "MIS_310_AnnouncerGen_Main", "box_CreateVector3_84.Out", "box_PhysicsImpulse_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_42_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomBoolean_v2_44();
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|71411991", "71411991", "MIS_310_AnnouncerGen_Main", "box_Compare_Strings_42.A_eq_B", "box_RandomBoolean_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomBoolean_v2_26_Out()
    local params, l0;
    self:OnExit_box_RandomBoolean_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_34();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|741130534", "741130534", "MIS_310_AnnouncerGen_Main", "box_RandomBoolean_v2_26.Out", "box_Compare_Boolean_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_76();
    l0 = self.box_Bind_v4_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|929594646", "929594646", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_77.Out", "box_Bind_v4_76.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_82();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|5706425", "5706425", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_77.Out", "box_CreateVector3_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomBoolean_v2_35_Out()
    local params, l0;
    self:OnExit_box_RandomBoolean_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_36();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|698337368", "698337368", "MIS_310_AnnouncerGen_Main", "box_RandomBoolean_v2_35.Out", "box_Compare_Boolean_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_13();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1277832827", "1277832827", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_67.Out", "box_IsValueNil_v3_13.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_6();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|480316258", "480316258", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_67.Out", "box_IsValueNil_v3_6.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_72();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2095792429", "2095792429", "MIS_310_AnnouncerGen_Main", "box_OutputOrder_v2_67.Out", "box_IsValueNil_v3_72.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_49_A_contains_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1223529154", "1223529154", "MIS_310_AnnouncerGen_Main", "box_Compare_Strings_49.A_contains_B", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_49_A_ncontains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_48();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|637912317", "637912317", "MIS_310_AnnouncerGen_Main", "box_Compare_Strings_49.A_ncontains_B", "box_Compare_Strings_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhysicsImpulse_79_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_88();
    l0 = self.box_StaticBreakableListener_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|191029786", "191029786", "MIS_310_AnnouncerGen_Main", "box_PhysicsImpulse_79.Out", "box_StaticBreakableListener_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Random_56_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_7();
    l0 = self.box_Random_56;
    l1 = self.box_MIS_310_AnnouncerDialogs_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|999804154", "999804154", "MIS_310_AnnouncerGen_Main", "box_Random_56.Output", "box_MIS_310_AnnouncerDialogs_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_56_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_15();
    l0 = self.box_Random_56;
    l1 = self.box_MIS_310_AnnouncerDialogs_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|409625160", "409625160", "MIS_310_AnnouncerGen_Main", "box_Random_56.Output", "box_MIS_310_AnnouncerDialogs_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|657688273", "657688273", "MIS_310_AnnouncerGen_Main", "box_MultipleOR_39.Out", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_62_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_62;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1030835740", "1030835740", "MIS_310_AnnouncerGen_Main", "box_StaticBreakableListener_62.OnBreak", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_StaticBreakableListener_62_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_59();
    l0 = self.box_StaticBreakableListener_62;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|514512202", "514512202", "MIS_310_AnnouncerGen_Main", "box_StaticBreakableListener_62.OnDamage", "box_StaticBreakableBreaker_59.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_30();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_Random_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1725812826", "1725812826", "MIS_310_AnnouncerGen_Main", "box_Delay_v5_43.TimeElapsed", "box_Random_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_60;
    l1 = self.box_OnceOnly_v3_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|888394559", "888394559", "MIS_310_AnnouncerGen_Main", "box_Delay_v5_60.TimeElapsed", "box_OnceOnly_v3_61.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_46();
    l0 = self.box_Delay_v5_52;
    l1 = self.box_Random_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|2090443544", "2090443544", "MIS_310_AnnouncerGen_Main", "box_Delay_v5_52.TimeElapsed", "box_Random_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|@start_listeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_40()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#DD67C841",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|7795393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_81_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0.5,
        -- z,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_16()
    local params;
    DrawTextToScreen("Comment: DLG : [joyful laugh] Disgusting!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : [joyful laugh] Disgusting!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1596157789",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_83()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|33132715");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_6_No,
    });
    params = {
        -- ent,
        [4] = "2109069348741057829",
    };
    return params;
end;

function export:OnEnter_box_Random_32()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|45759601");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_54_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_54_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_55;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "Explosion",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_41()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#46197DEC",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|137222428");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_48_A_eq_B,
    });
    l0 = self.box_HealthListener_v6_47;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "Explosion",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_25()
    local params;
    DrawTextToScreen("Comment: DLG : That's some permanant cosmetic surgery right there.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : That's some permanant cosmetic surgery right there.");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1963020771",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|189687155");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_72_No,
    });
    params = {
        -- ent,
        [4] = "2109069364920585513",
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|204572997");
    l0:SetConnections({
    });
    params = {
        -- AngularAmplitude,
        [0] = 1,
        -- AngularVector,
        [1] = self._sld_vector3_box_CreateVector3_84,
        -- DirectionAmplitude,
        [2] = 1400,
        -- DirectionVector,
        [4] = self._sld_vector3_box_CreateVector3_78,
        -- targets,
        [5] = "2109069364920585513",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_88()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109069348741057829",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109069324955159838",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_47()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#46197DEC",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_55()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|330641614");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_71_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109788359915223549",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|346567466");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_82_Out,
    });
    params = {
        -- x,
        [0] = 0.3,
        -- y,
        [1] = 0.7,
        -- z,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_4()
    local params;
    DrawTextToScreen("Comment: DLG : Like a walking, talking bonfire!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Like a walking, talking bonfire!");
    params = {
        -- RelevancyTime,
        [0] = 5,
        -- SoundId,
        [1] = "2030218351",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|501469674");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_57_A_contains_B,
        -- A_ncontains_B,
        [2] = self.f_box_Compare_Strings_57_A_ncontains_B,
    });
    l0 = self.box_HealthListener_v6_55;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "Fire",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Random_46()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|554448204");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2109069348741057829",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|562354308");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_36_A_is_True,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_RandomBoolean_v2_35,
    };
    return params;
end;

function export:OnEnter_box_Random_50()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_11()
    local params;
    DrawTextToScreen("Comment: DLG : Lolipop's taken a few licks to the chewy center now.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Lolipop's taken a few licks to the chewy center now.");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1435498592",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_28()
    local params;
    DrawTextToScreen("Comment: DLG : That beastie's dead meat now! Dibs on the barbecue!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : That beastie's dead meat now! Dibs on the barbecue!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "3849841609",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_14()
    local params;
    DrawTextToScreen("Comment: DLG : Oooh, drove that critter right into the ground! More meat for later!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Oooh, drove that critter right into the ground! More meat for later!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "2219163749",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|755144287");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_34_A_is_True,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_RandomBoolean_v2_26,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_8()
    local params;
    DrawTextToScreen("Comment: DLG : That's gonna scar if they're lucky!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : That's gonna scar if they're lucky!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "17436419",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_3()
    local params;
    DrawTextToScreen("Comment: DLG : Right in the food hole!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Right in the food hole!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1121759624",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_75()
    local params;
    params = {
        -- EntityA,
        [1] = "2109069324955159838",
        -- EntityB,
        [2] = "2109788272348641787",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_17()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_76()
    local params;
    params = {
        -- EntityA,
        [1] = "2109788272348641787",
        -- EntityB,
        [2] = "2109788359915223549",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_29()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#372D9F75",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_15()
    local params;
    DrawTextToScreen("Comment: DLG : Burn, Lolipop, burn!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Burn, Lolipop, burn!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "3037340461",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_18()
    local params;
    DrawTextToScreen("Comment: DLG : Crack, right across Lolipop's candy face!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Crack, right across Lolipop's candy face!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "3386147209",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_24()
    local params;
    DrawTextToScreen("Comment: DLG : Deep fried thudfuck!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Deep fried thudfuck!");
    params = {
        -- RelevancyTime,
        [0] = 5,
        -- SoundId,
        [1] = "728517962",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1021625840");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1028575508");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_45_A_is_True,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_RandomBoolean_v2_44,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1105051113");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_86_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 1,
        -- z,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2109069324955159838",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_listenbarrels_b50",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1144965386");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_78_Out,
    });
    params = {
        -- x,
        [0] = -0.8,
        -- y,
        [1] = 0,
        -- z,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_63()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2109069348741057829",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_37()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#371F5E9E",
    };
    return params;
end;

function export:OnEnter_box_Random_30()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1235959681");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_13_No,
    });
    params = {
        -- ent,
        [4] = "2109069324955159838",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1282503111");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2109069324955159838",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1320345965");
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

function export:OnEnter_box_PhysicsImpulse_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1332771418");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PhysicsImpulse_87_Out,
    });
    params = {
        -- AngularAmplitude,
        [0] = 1,
        -- AngularVector,
        [1] = self._sld_vector3_box_CreateVector3_81,
        -- DirectionAmplitude,
        [2] = 1400,
        -- DirectionVector,
        [4] = self._sld_vector3_box_CreateVector3_82,
        -- targets,
        [5] = "2109069324955159838",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_31()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#46197DEC",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1367278334");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_74_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0.5,
        -- z,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_19()
    local params;
    DrawTextToScreen("Comment: DLG : Smells like bacon!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Smells like bacon!");
    params = {
        -- RelevancyTime,
        [0] = 5,
        -- SoundId,
        [1] = "3232886415",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1552825755");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_7()
    local params;
    DrawTextToScreen("Comment: DLG : Lolipop's melting! Mellltiiinngg!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Lolipop's melting! Mellltiiinngg!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "411628218",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_listenbarrels_b40",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1596572473");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2109069364920585513",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1790223810");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109788359915223549",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_2()
    local params;
    DrawTextToScreen("Comment: DLG : Heard the bones crack that time!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Heard the bones crack that time!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "801142233",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_5()
    local params;
    DrawTextToScreen("Comment: DLG : He'll be eating through a straw!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : He'll be eating through a straw!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "698871065",
    };
    return params;
end;

function export:OnEnter_box_RandomBoolean_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomBoolean_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1852605486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomBoolean_v2_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_1()
    local params;
    DrawTextToScreen("Comment: DLG : Boom! [long laugh]", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Boom! [long laugh]");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "4183929669",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_12()
    local params;
    DrawTextToScreen("Comment: DLG : Pop! Hoo, Lolipop can really make hit land!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Pop! Hoo, Lolipop can really make hit land!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "2069465359",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1869366381");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_84_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0.5,
        -- z,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1875198781");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_42_A_eq_B,
    });
    l0 = self.box_HealthListener_v6_41;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(3),
        -- B,
        [1] = "hitlochead",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_RandomBoolean_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomBoolean_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1878824386");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomBoolean_v2_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1884823058");
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

function export:OnEnter_box_RandomBoolean_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomBoolean_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1890928522");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomBoolean_v2_35_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1906040008");
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

function export:OnEnter_box_Compare_Strings_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1929230272");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_49_A_contains_B,
        -- A_ncontains_B,
        [2] = self.f_box_Compare_Strings_49_A_ncontains_B,
    });
    l0 = self.box_HealthListener_v6_47;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "Fire",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_20()
    local params;
    DrawTextToScreen("Comment: DLG : Wow, Lolipop, I could feel that one from here!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Wow, Lolipop, I could feel that one from here!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1078611635",
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_AnnouncerGen.domino|@MIS_310_AnnouncerGen_Main|1938921476");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PhysicsImpulse_79_Out,
    });
    params = {
        -- AngularAmplitude,
        [0] = 1,
        -- AngularVector,
        [1] = self._sld_vector3_box_CreateVector3_74,
        -- DirectionAmplitude,
        [2] = 1200,
        -- DirectionVector,
        [4] = self._sld_vector3_box_CreateVector3_86,
        -- targets,
        [5] = "2109069348741057829",
    };
    return params;
end;

function export:OnEnter_box_Random_56()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_9()
    local params;
    DrawTextToScreen("Comment: DLG : Who's this fucking nobody from nowhere with a name like Lolipop? Who's this noodle-armed weakling?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Who's this fucking nobody from nowhere with a name like Lolipop? Who's this noodle-armed weakling?");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "2291793794",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_27()
    local params;
    DrawTextToScreen("Comment: DLG : A big old ball of teeth and fur, taking a hit like that! Impressive!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : A big old ball of teeth and fur, taking a hit like that! Impressive!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "3134812100",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2109069364920585513",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnExit_box_CreateVector3_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_81 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_82 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_86_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_86 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_78 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_74 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomBoolean_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    self._sld_Result_box_RandomBoolean_v2_44 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_84_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_84 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomBoolean_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    self._sld_Result_box_RandomBoolean_v2_26 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomBoolean_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomBoolean_v2.lua")];
    self._sld_Result_box_RandomBoolean_v2_35 = l0:GetDataOutValue(0);
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
