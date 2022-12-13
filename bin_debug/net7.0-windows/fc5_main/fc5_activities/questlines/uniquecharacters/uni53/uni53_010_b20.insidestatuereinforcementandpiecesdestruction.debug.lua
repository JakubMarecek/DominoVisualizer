LUAC�" -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni53/uni53_010_b20.domino
-- User graph: InsideStatueReinforcementandPiecesDestruction
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
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[596319980.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2611984947.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B20.InsideStatueReinforcementandPiecesDestruction.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AllowCalls",
            },
            [1] = {
                name = "CancelSpawn",
            },
            [2] = {
                name = "In",
            },
            [3] = {
                name = "NoMoreSniper",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "CloseEnforcementGate",
                delayed = false,
            },
            [1] = {
                name = "EnforcementCalls",
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "InsideStatueReinforcementandPiecesDestruction";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction";
    self.CloseEnforcementGate = DummyFunction;
    self.EnforcementCalls = DummyFunction;
    self.Players = nil;
    self.bPlayerInChopper = false;
    self.box_OnceOnly_v3_175 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|6365944");
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
                [0] = self.f_box_OnceOnly_v3_175_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|15119804");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_SpawnAI_172 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|29632358");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_172_Spawned,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|33101971");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_MultipleOR_188 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|42304766");
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
        [0] = self.f_box_MultipleOR_188_Out,
    });
    self.box_NavLinkModifier_28 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|65296193");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_28_Activated,
    });
    self.box_Gate_v3_51 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|122689998");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_51_Out,
    });
    self.box_MultipleOR_189 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|127128699");
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
        [0] = self.f_box_MultipleOR_189_Out,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|149032734");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_OnceOnly_v3_216 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|155257122");
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
    self.box_NavLinkModifier_27 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|180264138");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_27_Activated,
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|230138798");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_24_Spawned,
    });
    self.box_Switch_177 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|254777412");
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
                [2] = self.f_box_Switch_177_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_115 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|265677798");
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
        [0] = self.f_box_MultipleOR_115_Out,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|283737924");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_222 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|320270421");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_222_Completed,
    });
    self.box_MultipleOR_135 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|351367613");
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
        [0] = self.f_box_MultipleOR_135_Out,
    });
    self.box_StaticBreakableListener_80 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|368742373");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_80_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_80_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_80_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_80_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_80_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_80_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_80_OnStateChanged,
    });
    self.box_MultipleOR_171 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|409514461");
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
        [0] = self.f_box_MultipleOR_171_Out,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|418587141");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_Gate_v3_214 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|451990078");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_214_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_214_Out,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|469885776");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_OnceOnly_v3_140 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|499766452");
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
                [0] = self.f_box_OnceOnly_v3_140_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_112 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|517786848");
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
        [0] = self.f_box_MultipleOR_112_Out,
    });
    self.box_StaticBreakableListener_82 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|524999363");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_82_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_82_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_82_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_82_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_82_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_82_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_82_OnStateChanged,
    });
    self.box_Delay_v5_168 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|564888850");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_168_TimeElapsed,
    });
    self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|581392669");
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
        [0] = self.f_box_MultipleOR_121_Out,
    });
    self.box_VehicleListener_v3_149 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|609264115");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_149_OnStandUp,
    });
    self.box_MultipleOR_155 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|610165904");
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
        [0] = self.f_box_MultipleOR_155_Out,
    });
    self.box_Delay_v5_217 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|613528738");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_217_TimeElapsed,
    });
    self.box_StaticBreakableListener_86 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|628563601");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_86_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_86_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_86_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_86_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_86_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_86_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_86_OnStateChanged,
    });
    self.box_EntityStatusListener_46 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|640719508");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_46_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_46_Unloaded,
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|644305832");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_12_Spawned,
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|725096138");
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
    self.box_GroupSizeListener_v5_20 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|747531844");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_20_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_20_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_20_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_20_MemberRemoved,
    });
    self.box_OnceOnly_v3_139 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|786421217");
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
                [0] = self.f_box_OnceOnly_v3_139_Out_0,
            },
            count = 2,
        },
    });
    self.box_StaticBreakableListener_92 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|787924177");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_92_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_92_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_92_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_92_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_92_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_92_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_92_OnStateChanged,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|792345657");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_StaticBreakableListener_94 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|797418267");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_94_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_94_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_94_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_94_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_94_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_94_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_94_OnStateChanged,
    });
    self.box_StaticBreakableListener_45 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|805682768");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_45_OnBreak,
    });
    self.box_OnceOnly_v3_163 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|857317182");
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
                [0] = self.f_box_OnceOnly_v3_163_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_53 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|892526987");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_53_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_53_Out,
    });
    self.box_StaticBreakableListener_2 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|897248691");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_2_OnBreak,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|921726748");
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
    self.box_MultipleOR_169 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|924858165");
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
    self.box_MultipleOR_218 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|932746646");
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
        [0] = self.f_box_MultipleOR_218_Out,
    });
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|943646030");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v5_65 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|991993199");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_65_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_65_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_65_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_65_MemberRemoved,
    });
    self.box_StaticBreakableListener_4 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|997924946");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_4_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_4_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_4_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_4_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_4_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_4_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_4_OnStateChanged,
    });
    self.box_Delay_v5_219 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1014040068");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_219_TimeElapsed,
    });
    self.box_Delay_v5_181 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1024588764");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_181_TimeElapsed,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1040698296");
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
    self.box_OnceOnly_v3_21 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1041369493");
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
                [0] = self.f_box_OnceOnly_v3_21_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1102139651");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_StaticBreakableListener_55 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1118215726");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_55_OnBreak,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1140966150");
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
    self.box_SpawnAI_160 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1143101195");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_160_Spawned,
    });
    self.box_EntityStatusListener_32 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1149569187");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_32_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_32_Unloaded,
    });
    self.box_Switch_179 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1174141679");
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
                [0] = self.f_box_Switch_179_Output_0,
                [1] = self.f_box_Switch_179_Output_1,
                [2] = self.f_box_Switch_179_Output_2,
            },
            count = 3,
        },
    });
    self.box_NavLinkModifier_156 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1185927133");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_156_Deactivated,
    });
    self.box_Gate_v3_215 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1197555310");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_215_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_215_Out,
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1202087854");
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
        [0] = self.f_box_MultipleOR_180_Out,
    });
    self.box_Switch_146 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1207236128");
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
                [0] = self.f_box_Switch_146_Output_0,
                [1] = self.f_box_Switch_146_Output_1,
                [2] = self.f_box_Switch_146_Output_2,
            },
            count = 3,
        },
    });
    self.box_StaticBreakableListener_88 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1219522786");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_88_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_88_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_88_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_88_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_88_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_88_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_88_OnStateChanged,
    });
    self.box_MultipleOR_132 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1223981023");
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
        [0] = self.f_box_MultipleOR_132_Out,
    });
    self.box_StaticBreakableListener_64 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1267057901");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_64_OnBreak,
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1283518852");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_StaticBreakableListener_1 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1294935839");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_1_OnBreak,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1320310169");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_MultipleOR_126 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1330678420");
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
        [0] = self.f_box_MultipleOR_126_Out,
    });
    self.box_MultipleOR_166 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1355058801");
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
        [0] = self.f_box_MultipleOR_166_Out,
    });
    self.box_StaticBreakableListener_90 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1355595417");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_90_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_90_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_90_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_90_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_90_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_90_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_90_OnStateChanged,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1374946638");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_29_Unloaded,
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1375075079");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_17_Spawned,
    });
    self.box_MultipleOR_178 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1383675267");
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
        [0] = self.f_box_MultipleOR_178_Out,
    });
    self.box_EntityStatusListener_71 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1396827369");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_71_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_71_Unloaded,
    });
    self.box_Delay_v5_174 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1417171848");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_174_TimeElapsed,
    });
    self.box_EntityStatusListener_66 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1439610643");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_66_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_66_Unloaded,
    });
    self.box_OnceOnly_v3_7 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1485326900");
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
                [0] = self.f_box_OnceOnly_v3_7_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_157 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1485383462");
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
                [0] = self.f_box_OnceOnly_v3_157_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1613742719");
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
    self.box_StaticBreakableListener_98 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1639418028");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_98_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_98_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_98_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_98_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_98_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_98_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_98_OnStateChanged,
    });
    self.box_Random_23 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1688174436");
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
                [0] = self.f_box_Random_23_Output_0,
                [1] = self.f_box_Random_23_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1695017665");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1704014157");
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
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1734612933");
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
    self.box_RequestPhoneCall_v2_221 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1759749208");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_221_Completed,
    });
    self.box_SpawnAI_150 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1783595802");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_150_Spawned,
    });
    self.box_GroupSizeListener_v5_158 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1801606530");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_158_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_158_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_158_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_158_MemberRemoved,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1824644003");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_StaticBreakableListener_84 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1834209712");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_84_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_84_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_84_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_84_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_84_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_84_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_84_OnStateChanged,
    });
    self.box_Gate_v3_176 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1835934397");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_176_Out,
    });
    self.box_VehicleListener_v3_187 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1851542776");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_187_OnStandUp,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1855064608");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1884399398");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1909002600");
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
    self.box_MultipleOR_129 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1935036896");
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
        [0] = self.f_box_MultipleOR_129_Out,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1945133886");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_8_Spawned,
    });
    self.box_OnceOnly_v3_50 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1946140074");
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
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1983909463");
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
    self.box_Delay_v5_159 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1992452773");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_159_TimeElapsed,
    });
    self.box_Gate_v3_56 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2001154468");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_56_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_56_Out,
    });
    self.box_GroupSizeListener_v5_13 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2006880791");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_13_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_13_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_13_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_13_MemberRemoved,
    });
    self.box_Gate_v3_142 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2041634455");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_142_Out,
    });
    self.box_StaticBreakableListener_76 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2057938430");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_76_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_76_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_76_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_76_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_76_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_76_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_76_OnStateChanged,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2068296393");
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
    self.box_Delay_v5_182 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2069328885");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_182_TimeElapsed,
    });
    self.box_StaticBreakableListener_96 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2093524391");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_96_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_96_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_96_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_96_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_96_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_96_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_96_OnStateChanged,
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2124517840");
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
    self.box_Gate_v3_143 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2133094557");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_143_Out,
    });
    self.box_StaticBreakableListener_79 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2140852746");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_79_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_79_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_79_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_79_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_79_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_79_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_79_OnStateChanged,
    });
    self.box_GroupSizeListener_v5_164 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2143069401");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_164_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_164_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_164_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_164_MemberRemoved,
    });
end;

function export:AllowCalls()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_220();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|988191790", "988191790", "InsideStatueReinforcementandPiecesDestruction", "AllowCalls", "box_Simple_Node_220.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:CancelSpawn()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_49();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2127038255", "2127038255", "InsideStatueReinforcementandPiecesDestruction", "CancelSpawn", "box_Simple_Node_49.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_102();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|43994669", "43994669", "InsideStatueReinforcementandPiecesDestruction", "In", "box_GetPlayerGroup_v2_102.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:NoMoreSniper()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|430115384", "430115384", "InsideStatueReinforcementandPiecesDestruction", "NoMoreSniper", "box_Simple_Node_137.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_220_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_214();
    l0 = self.box_Gate_v3_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1598139155", "1598139155", "InsideStatueReinforcementandPiecesDestruction", "box_Simple_Node_220.Out", "box_Gate_v3_214.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1799631551", "1799631551", "InsideStatueReinforcementandPiecesDestruction", "box_Simple_Node_220.Out", "box_Gate_v3_215.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1102428987", "1102428987", "InsideStatueReinforcementandPiecesDestruction", "box_Simple_Node_34.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1434093432", "1434093432", "InsideStatueReinforcementandPiecesDestruction", "box_Simple_Node_49.Out", "box_OutputOrder_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|440973766", "440973766", "InsideStatueReinforcementandPiecesDestruction", "box_Simple_Node_49.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|932146961", "932146961", "InsideStatueReinforcementandPiecesDestruction", "box_Simple_Node_49.Out", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_137_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1609292088", "1609292088", "InsideStatueReinforcementandPiecesDestruction", "box_Simple_Node_137.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|222790817", "222790817", "InsideStatueReinforcementandPiecesDestruction", "box_Simple_Node_137.Out", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_175_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_172();
    l0 = self.box_OnceOnly_v3_175;
    l1 = self.box_SpawnAI_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|32276944", "32276944", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_175.Out", "box_SpawnAI_172.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1048417442", "1048417442", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_41.TimeElapsed", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_100_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_100_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_101();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|458671079", "458671079", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_100.InVehicle", "box_Compare_Strings_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_100_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_100_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1222750370", "1222750370", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_100.NotInVehicle", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_100_Out()
    self:OnExit_box_GetPawnVehicleInfo_100_Out();
end;

function export:f_box_SpawnAI_172_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_176();
    l0 = self.box_SpawnAI_172;
    l1 = self.box_Gate_v3_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1878430420", "1878430420", "InsideStatueReinforcementandPiecesDestruction", "box_SpawnAI_172.Spawned", "box_Gate_v3_176.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_19();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1844598528", "1844598528", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_22.Out", "box_Compare_Integers_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_188_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_148();
    l0 = self.box_MultipleOR_188;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1406341542", "1406341542", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_188.Out", "box_SetBoolean_v2_148.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_76();
    l0 = self.box_StaticBreakableListener_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|734921217", "734921217", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_80();
    l0 = self.box_StaticBreakableListener_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1200586391", "1200586391", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_79();
    l0 = self.box_StaticBreakableListener_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|760286892", "760286892", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_82();
    l0 = self.box_StaticBreakableListener_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1485370315", "1485370315", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_84();
    l0 = self.box_StaticBreakableListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2075419972", "2075419972", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_86();
    l0 = self.box_StaticBreakableListener_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1380558113", "1380558113", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_88();
    l0 = self.box_StaticBreakableListener_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|48995114", "48995114", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_90();
    l0 = self.box_StaticBreakableListener_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2042040827", "2042040827", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_92();
    l0 = self.box_StaticBreakableListener_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|561014321", "561014321", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_94();
    l0 = self.box_StaticBreakableListener_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1736852646", "1736852646", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_96();
    l0 = self.box_StaticBreakableListener_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1365492486", "1365492486", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_98();
    l0 = self.box_StaticBreakableListener_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|349234635", "349234635", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_75.Out", "box_StaticBreakableListener_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_201_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_201_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_204();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1877653280", "1877653280", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_201.InVehicle", "box_Compare_Strings_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_201_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_201_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_201_Out()
    self:OnExit_box_GetPawnVehicleInfo_201_Out();
end;

function export:f_box_NavLinkModifier_28_Activated()
    local l0, l1;
    l0 = self.box_NavLinkModifier_28;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1365583653", "1365583653", "InsideStatueReinforcementandPiecesDestruction", "box_NavLinkModifier_28.Activated", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_144_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_181();
    l0 = self.box_Delay_v5_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|458951674", "458951674", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_144.Out", "box_Delay_v5_181.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_144_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_142();
    l0 = self.box_Gate_v3_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|518830041", "518830041", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_144.Out", "box_Gate_v3_142.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_GetPawnVehicleInfo_108_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_108_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_105();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|303337001", "303337001", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_108.InVehicle", "box_Compare_Strings_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_108_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_108_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2062578807", "2062578807", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_108.NotInVehicle", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_108_Out()
    self:OnExit_box_GetPawnVehicleInfo_108_Out();
end;

function export:f_box_Gate_v3_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_23();
    l0 = self.box_Gate_v3_51;
    l1 = self.box_Random_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2138384013", "2138384013", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_51.Out", "box_Random_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Strings_191_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1451910973", "1451910973", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_191.A_neq_B", "box_MultipleOR_135.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_189_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_148();
    l0 = self.box_MultipleOR_189;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1129596611", "1129596611", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_189.Out", "box_SetBoolean_v2_148.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_97();
    l0 = self.box_MultipleOR_106;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1333370549", "1333370549", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_106.Out", "box_StaticBreakableBreaker_97.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_216_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|979632995", "979632995", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_216.Out", "EnforcementCalls", l0:GetLuaBox(), self);
    self:EnforcementCalls();
end;

function export:f_box_NavLinkModifier_27_Activated()
    local l0, l1;
    l0 = self.box_NavLinkModifier_27;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1416158069", "1416158069", "InsideStatueReinforcementandPiecesDestruction", "box_NavLinkModifier_27.Activated", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Strings_204_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|117815480", "117815480", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_204.A_neq_B", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_208_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|448992213", "448992213", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_208.A_neq_B", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_43_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1937671835", "1937671835", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Integers_43.A_le_B", "box_Delay_v5_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_24_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_24;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2042569022", "2042569022", "InsideStatueReinforcementandPiecesDestruction", "box_SpawnAI_24.Spawned", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_170_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_164();
    l0 = self.box_GroupSizeListener_v5_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1004780511", "1004780511", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_170.Out", "box_GroupSizeListener_v5_164.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_170_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1845381523", "1845381523", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_170.Out", "box_MultipleOR_171.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_183();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1312228458", "1312228458", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_184.Out", "box_GetPawnVehicleInfo_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_38();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|146052336", "146052336", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_184.Out", "box_GetPawnVehicleInfo_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_177_Output_2()
    local l0, l1;
    l0 = self.box_Switch_177;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1354621905", "1354621905", "InsideStatueReinforcementandPiecesDestruction", "box_Switch_177.Output", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_210_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_210_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_213();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|415281481", "415281481", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_210.InVehicle", "box_Compare_Strings_213.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_210_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_210_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_210_Out()
    self:OnExit_box_GetPawnVehicleInfo_210_Out();
end;

function export:f_box_MultipleOR_115_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_89();
    l0 = self.box_MultipleOR_115;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|587466881", "587466881", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_115.Out", "box_StaticBreakableBreaker_89.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_26;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1298047382", "1298047382", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_26.TimeElapsed", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_4();
    l0 = self.box_StaticBreakableListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|266567347", "266567347", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_57.Out", "box_StaticBreakableListener_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1025029915", "1025029915", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_57.Out", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1003925229", "1003925229", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_57.Out", "box_OutputOrder_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1634028976", "1634028976", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_57.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_222_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_222;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|428147433", "428147433", "InsideStatueReinforcementandPiecesDestruction", "box_RequestPhoneCall_v2_222.Completed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetPlayerGroup_v2_102_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_102_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1025302194", "1025302194", "InsideStatueReinforcementandPiecesDestruction", "box_GetPlayerGroup_v2_102.Out", "box_Delay_v5_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_135_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_77();
    l0 = self.box_MultipleOR_135;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|228601078", "228601078", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_135.Out", "box_StaticBreakableBreaker_77.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_80_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_133();
    l0 = self.box_StaticBreakableListener_80;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1096473063", "1096473063", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_80.OnBreak", "box_GetPawnVehicleInfo_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_116_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_202();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|197210222", "197210222", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_116.A_neq_B", "box_GetPawnVehicleInfo_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_171_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_171;
    l1 = self.box_OnceOnly_v3_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1251144180", "1251144180", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_171.Out", "box_OnceOnly_v3_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_14_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_51();
    l0 = self.box_Gate_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1067929009", "1067929009", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Integers_14.A_le_B", "box_Gate_v3_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_146();
    l0 = self.box_MultipleOR_18;
    l1 = self.box_Switch_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1762906551", "1762906551", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_18.Out", "box_Switch_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_214_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_217();
    l0 = self.box_Gate_v3_214;
    l1 = self.box_Delay_v5_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1911482901", "1911482901", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_214.Opened", "box_Delay_v5_217.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_214_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_221();
    l0 = self.box_Gate_v3_214;
    l1 = self.box_RequestPhoneCall_v2_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1949592232", "1949592232", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_214.Out", "box_RequestPhoneCall_v2_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_35_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_35;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|827141622", "827141622", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_35.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Strings_212_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|340076336", "340076336", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_212.A_neq_B", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_125_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_206();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|371545864", "371545864", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_125.A_neq_B", "box_GetPawnVehicleInfo_206.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_140_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_142();
    l0 = self.box_OnceOnly_v3_140;
    l1 = self.box_Gate_v3_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|496395162", "496395162", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_140.Out", "box_Gate_v3_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_128_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_193();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|84320007", "84320007", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_128.A_neq_B", "box_GetPawnVehicleInfo_193.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|161601139", "161601139", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_60.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_58();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|314000492", "314000492", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_60.Out", "box_StaticBreakableBreaker_58.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_87();
    l0 = self.box_MultipleOR_112;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|468434037", "468434037", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_112.Out", "box_StaticBreakableBreaker_87.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_82_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_127();
    l0 = self.box_StaticBreakableListener_82;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1362385135", "1362385135", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_82.OnBreak", "box_GetPawnVehicleInfo_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_148_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_148_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_176();
    l0 = self.box_Gate_v3_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|857198142", "857198142", "InsideStatueReinforcementandPiecesDestruction", "box_SetBoolean_v2_148.Out", "box_Gate_v3_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_119_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_119_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_125();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2014108988", "2014108988", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_119.InVehicle", "box_Compare_Strings_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_119_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_119_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|612652673", "612652673", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_119.NotInVehicle", "box_MultipleOR_121.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_119_Out()
    self:OnExit_box_GetPawnVehicleInfo_119_Out();
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1988542914", "1988542914", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_37.Out", "box_EntityStatusListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_32();
    l0 = self.box_EntityStatusListener_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|652098197", "652098197", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_37.Out", "box_EntityStatusListener_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_168_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_168;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1417845704", "1417845704", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_168.TimeElapsed", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_93();
    l0 = self.box_MultipleOR_121;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|168726832", "168726832", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_121.Out", "box_StaticBreakableBreaker_93.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_193_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_193_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_199();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1993168035", "1993168035", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_193.InVehicle", "box_Compare_Strings_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_193_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_193_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_193_Out()
    self:OnExit_box_GetPawnVehicleInfo_193_Out();
end;

function export:f_box_Compare_Integers_154_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_159();
    l0 = self.box_Delay_v5_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|590055484", "590055484", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Integers_154.A_le_B", "box_Delay_v5_159.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_149_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_149;
    l1 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|461460803", "461460803", "InsideStatueReinforcementandPiecesDestruction", "box_VehicleListener_v3_149.OnStandUp", "box_MultipleOR_188.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_155_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_154();
    l0 = self.box_MultipleOR_155;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2108782624", "2108782624", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_155.Out", "box_Compare_Integers_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_217_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_217;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|695180349", "695180349", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_217.TimeElapsed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_197_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_197_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_200();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|29848897", "29848897", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_197.InVehicle", "box_Compare_Strings_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_197_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_197_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_197_Out()
    self:OnExit_box_GetPawnVehicleInfo_197_Out();
end;

function export:f_box_StaticBreakableListener_86_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_114();
    l0 = self.box_StaticBreakableListener_86;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|391155801", "391155801", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_86.OnBreak", "box_GetPawnVehicleInfo_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_46_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_45();
    l0 = self.box_EntityStatusListener_46;
    l1 = self.box_StaticBreakableListener_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|3259289", "3259289", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_46.Loaded", "box_StaticBreakableListener_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_46_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_46;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|885353120", "885353120", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_46.Unloaded", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_12_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_SpawnAI_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2071887912", "2071887912", "InsideStatueReinforcementandPiecesDestruction", "box_SpawnAI_12.Spawned", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_194_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1038054790", "1038054790", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_194.A_neq_B", "box_MultipleOR_126.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_51();
    l0 = self.box_Gate_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1937789934", "1937789934", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_44.Out", "box_Gate_v3_51.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1617184932", "1617184932", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_44.Out", "box_SpawnAI_17.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|99636919", "99636919", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_44.Out", "box_SpawnAI_24.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_47;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|320501094", "320501094", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_47.Out", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_20_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_20;
    l1 = self.box_OnceOnly_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1864599731", "1864599731", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_20.Enabled", "box_OnceOnly_v3_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_20_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_20;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1685778820", "1685778820", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_20.MemberAdded", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_20_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_20;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1441082772", "1441082772", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_20.MemberRemoved", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_66();
    l0 = self.box_EntityStatusListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1016977148", "1016977148", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_70.Out", "box_EntityStatusListener_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_71();
    l0 = self.box_EntityStatusListener_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|897172104", "897172104", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_70.Out", "box_EntityStatusListener_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_70_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_46();
    l0 = self.box_EntityStatusListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1035631403", "1035631403", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_70.Out", "box_EntityStatusListener_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_139_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_143();
    l0 = self.box_OnceOnly_v3_139;
    l1 = self.box_Gate_v3_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2114729254", "2114729254", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_139.Out", "box_Gate_v3_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_92_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_119();
    l0 = self.box_StaticBreakableListener_92;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|67772640", "67772640", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_92.OnBreak", "box_GetPawnVehicleInfo_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1979379519", "1979379519", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_52.Out", "box_Gate_v3_53.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_94_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_124();
    l0 = self.box_StaticBreakableListener_94;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|511930149", "511930149", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_94.OnBreak", "box_GetPawnVehicleInfo_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_45_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_StaticBreakableListener_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|877171788", "877171788", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_45.OnBreak", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_163_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_163;
    l1 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1173204886", "1173204886", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_163.Out", "box_MultipleOR_166.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_206_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_206_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_211();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1826337733", "1826337733", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_206.InVehicle", "box_Compare_Strings_211.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_206_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_206_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_206_Out()
    self:OnExit_box_GetPawnVehicleInfo_206_Out();
end;

function export:f_box_Compare_Strings_120_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_201();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1148087084", "1148087084", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_120.A_neq_B", "box_GetPawnVehicleInfo_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_118_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_118_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_116();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1750565012", "1750565012", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_118.InVehicle", "box_Compare_Strings_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_118_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_118_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|317576469", "317576469", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_118.NotInVehicle", "box_MultipleOR_115.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_118_Out()
    self:OnExit_box_GetPawnVehicleInfo_118_Out();
end;

function export:f_box_Gate_v3_53_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = self.box_Gate_v3_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|455121073", "455121073", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_53.Closed", "box_OutputOrder_v2_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_151();
    l0 = self.box_Gate_v3_53;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2014895984", "2014895984", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_53.Out", "box_Compare_Boolean_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_2_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_StaticBreakableListener_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|597985168", "597985168", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_2.OnBreak", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_38_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_38_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_147();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2132773635", "2132773635", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_38.InVehicle", "box_Compare_Strings_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_38_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_38_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_38_Out()
    self:OnExit_box_GetPawnVehicleInfo_38_Out();
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1321848598", "1321848598", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_25.Out", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_169_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_169;
    l1 = self.box_OnceOnly_v3_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|145497743", "145497743", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_169.Out", "box_OnceOnly_v3_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_205_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_205_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_208();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1942063320", "1942063320", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_205.InVehicle", "box_Compare_Strings_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_205_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_205_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_205_Out()
    self:OnExit_box_GetPawnVehicleInfo_205_Out();
end;

function export:f_box_MultipleOR_218_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_218;
    l1 = self.box_OnceOnly_v3_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1945384557", "1945384557", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_218.Out", "box_OnceOnly_v3_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_16;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1522214428", "1522214428", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_16.Out", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_124_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_124_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_104();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1854092335", "1854092335", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_124.InVehicle", "box_Compare_Strings_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_124_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_124_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|223712546", "223712546", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_124.NotInVehicle", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_124_Out()
    self:OnExit_box_GetPawnVehicleInfo_124_Out();
end;

function export:f_box_GroupSizeListener_v5_65_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_65;
    l1 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|249818801", "249818801", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_65.Enabled", "box_OnceOnly_v3_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_65_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_65;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1686316165", "1686316165", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_65.MemberAdded", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_65_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_65;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|391356900", "391356900", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_65.MemberRemoved", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Strings_110_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_198();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1802114662", "1802114662", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_110.A_neq_B", "box_GetPawnVehicleInfo_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_4_OnBreak()
    local params, l0, l1;
    self:OnExit_box_StaticBreakableListener_4_OnBreak();
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = self.box_StaticBreakableListener_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1272680174", "1272680174", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_4.OnBreak", "box_OutputOrder_v2_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_4_OnBreakAll()
    self:OnExit_box_StaticBreakableListener_4_OnBreakAll();
end;

function export:f_box_StaticBreakableListener_4_OnDamage()
    self:OnExit_box_StaticBreakableListener_4_OnDamage();
end;

function export:f_box_StaticBreakableListener_4_OnHit()
    self:OnExit_box_StaticBreakableListener_4_OnHit();
end;

function export:f_box_StaticBreakableListener_4_OnStateChanged()
    self:OnExit_box_StaticBreakableListener_4_OnStateChanged();
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|651800012", "651800012", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_74.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_73();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1694676874", "1694676874", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_74.Out", "box_StaticBreakableBreaker_73.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_219_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_219;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|95344100", "95344100", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_219.TimeElapsed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_181_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_214();
    l0 = self.box_Delay_v5_181;
    l1 = self.box_Gate_v3_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|564425529", "564425529", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_181.TimeElapsed", "box_Gate_v3_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_85();
    l0 = self.box_MultipleOR_107;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|497539184", "497539184", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_107.Out", "box_StaticBreakableBreaker_85.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_21_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_21;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2061896518", "2061896518", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_21.Out", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_203_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|996636408", "996636408", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_203.A_neq_B", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_192_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_192_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_195();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1443266149", "1443266149", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_192.InVehicle", "box_Compare_Strings_195.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_192_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_192_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_192_Out()
    self:OnExit_box_GetPawnVehicleInfo_192_Out();
end;

function export:f_box_GetPawnVehicleInfo_202_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_202_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_207();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1882826668", "1882826668", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_202.InVehicle", "box_Compare_Strings_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_202_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_202_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_202_Out()
    self:OnExit_box_GetPawnVehicleInfo_202_Out();
end;

function export:f_box_GetPawnVehicleInfo_183_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_183_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_185();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1219274727", "1219274727", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_183.InVehicle", "box_Compare_Strings_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_183_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_183_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_183_Out()
    self:OnExit_box_GetPawnVehicleInfo_183_Out();
end;

function export:f_box_Compare_Strings_207_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1202025590", "1202025590", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_207.A_neq_B", "box_MultipleOR_115.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_48_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_48;
    l1 = self.box_OnceOnly_v3_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1481100234", "1481100234", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_48.Out", "box_OnceOnly_v3_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_160();
    l0 = self.box_SpawnAI_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1877639932", "1877639932", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_162.Out", "box_SpawnAI_160.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1200328648", "1200328648", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_162.Out", "box_SpawnAI_12.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_55_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_StaticBreakableListener_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1518886131", "1518886131", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_55.OnBreak", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_185_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_186();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|65773833", "65773833", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_185.A_eq_B", "box_OutputOrder_v2_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_161_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1436924445", "1436924445", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Boolean_161.A_is_False", "box_SpawnAI_12.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_161_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_160();
    l0 = self.box_SpawnAI_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1293928994", "1293928994", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Boolean_161.A_is_True", "box_SpawnAI_160.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_28();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_NavLinkModifier_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|614674516", "614674516", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_10.Out", "box_NavLinkModifier_28.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_160_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_170();
    l0 = self.box_SpawnAI_160;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1045034830", "1045034830", "InsideStatueReinforcementandPiecesDestruction", "box_SpawnAI_160.Spawned", "box_OutputOrder_v2_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_101_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_209();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|182780481", "182780481", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_101.A_neq_B", "box_GetPawnVehicleInfo_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_32_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_2();
    l0 = self.box_EntityStatusListener_32;
    l1 = self.box_StaticBreakableListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|555423147", "555423147", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_32.Loaded", "box_StaticBreakableListener_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_32_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_32;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|905380165", "905380165", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_32.Unloaded", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_211_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|313255808", "313255808", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_211.A_neq_B", "box_MultipleOR_121.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_179_Output_0()
    local l0, l1;
    l0 = self.box_Switch_179;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|631643508", "631643508", "InsideStatueReinforcementandPiecesDestruction", "box_Switch_179.Output", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_179_Output_1()
    local l0, l1;
    l0 = self.box_Switch_179;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1323895809", "1323895809", "InsideStatueReinforcementandPiecesDestruction", "box_Switch_179.Output", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_179_Output_2()
    local l0, l1;
    l0 = self.box_Switch_179;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|28565649", "28565649", "InsideStatueReinforcementandPiecesDestruction", "box_Switch_179.Output", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|829097145", "829097145", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_63.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_61();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1502423856", "1502423856", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_63.Out", "box_StaticBreakableBreaker_61.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_104_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_205();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1434819401", "1434819401", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_104.A_neq_B", "box_GetPawnVehicleInfo_205.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_156_Deactivated()
    local l0, l1;
    l0 = self.box_NavLinkModifier_156;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|593967859", "593967859", "InsideStatueReinforcementandPiecesDestruction", "box_NavLinkModifier_156.Deactivated", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_215_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_219();
    l0 = self.box_Gate_v3_215;
    l1 = self.box_Delay_v5_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|458158474", "458158474", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_215.Opened", "box_Delay_v5_219.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_215_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_222();
    l0 = self.box_Gate_v3_215;
    l1 = self.box_RequestPhoneCall_v2_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|781922481", "781922481", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_215.Out", "box_RequestPhoneCall_v2_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_111_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_196();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|669811225", "669811225", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_111.A_neq_B", "box_GetPawnVehicleInfo_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_180_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_56();
    l0 = self.box_MultipleOR_180;
    l1 = self.box_Gate_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|328856955", "328856955", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_180.Out", "box_Gate_v3_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_146_Output_0()
    local l0, l1;
    l0 = self.box_Switch_146;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1032303376", "1032303376", "InsideStatueReinforcementandPiecesDestruction", "box_Switch_146.Output", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_146_Output_1()
    local l0, l1;
    l0 = self.box_Switch_146;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1298912700", "1298912700", "InsideStatueReinforcementandPiecesDestruction", "box_Switch_146.Output", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_146_Output_2()
    local l0, l1;
    l0 = self.box_Switch_146;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|943414544", "943414544", "InsideStatueReinforcementandPiecesDestruction", "box_Switch_146.Output", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetPawnVehicleInfo_114_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_114_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_113();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|912042186", "912042186", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_114.InVehicle", "box_Compare_Strings_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_114_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_114_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|817278623", "817278623", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_114.NotInVehicle", "box_MultipleOR_112.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_114_Out()
    self:OnExit_box_GetPawnVehicleInfo_114_Out();
end;

function export:f_box_StaticBreakableListener_88_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_118();
    l0 = self.box_StaticBreakableListener_88;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1720641070", "1720641070", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_88.OnBreak", "box_GetPawnVehicleInfo_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_81();
    l0 = self.box_MultipleOR_132;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1171971019", "1171971019", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_132.Out", "box_StaticBreakableBreaker_81.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_64_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_StaticBreakableListener_64;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1181527993", "1181527993", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_64.OnBreak", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_130_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_130_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_128();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|416315661", "416315661", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_130.InVehicle", "box_Compare_Strings_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_130_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_130_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|880703260", "880703260", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_130.NotInVehicle", "box_MultipleOR_129.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_130_Out()
    self:OnExit_box_GetPawnVehicleInfo_130_Out();
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|70517975", "70517975", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_69.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_72();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1563564872", "1563564872", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_69.Out", "box_StaticBreakableBreaker_72.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_56();
    l0 = self.box_MultipleOR_54;
    l1 = self.box_Gate_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1660764119", "1660764119", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_54.Out", "box_Gate_v3_56.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_GetPawnVehicleInfo_109_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_109_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_110();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|638886246", "638886246", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_109.InVehicle", "box_Compare_Strings_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_109_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_109_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|354786346", "354786346", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_109.NotInVehicle", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_109_Out()
    self:OnExit_box_GetPawnVehicleInfo_109_Out();
end;

function export:f_box_GetPawnVehicleInfo_196_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_196_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_194();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|494902158", "494902158", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_196.InVehicle", "box_Compare_Strings_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_196_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_196_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_196_Out()
    self:OnExit_box_GetPawnVehicleInfo_196_Out();
end;

function export:f_box_StaticBreakableListener_1_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_StaticBreakableListener_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1288495477", "1288495477", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_1.OnBreak", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_Delay_v5_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|577393759", "577393759", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_42.TimeElapsed", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_126_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_83();
    l0 = self.box_MultipleOR_126;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1446922417", "1446922417", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_126.Out", "box_StaticBreakableBreaker_83.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_209_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_209_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_212();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|709880389", "709880389", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_209.InVehicle", "box_Compare_Strings_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_209_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_209_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_209_Out()
    self:OnExit_box_GetPawnVehicleInfo_209_Out();
end;

function export:f_box_MultipleOR_166_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_165();
    l0 = self.box_MultipleOR_166;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1571940370", "1571940370", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_166.Out", "box_Compare_Integers_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_90_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_117();
    l0 = self.box_StaticBreakableListener_90;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1307498325", "1307498325", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_90.OnBreak", "box_GetPawnVehicleInfo_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_105_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_210();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|960231229", "960231229", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_105.A_neq_B", "box_GetPawnVehicleInfo_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_1();
    l0 = self.box_EntityStatusListener_29;
    l1 = self.box_StaticBreakableListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1494234649", "1494234649", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_29.Loaded", "box_StaticBreakableListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_29_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_29;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|191946114", "191946114", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_29.Unloaded", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_17_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_17;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1354630939", "1354630939", "InsideStatueReinforcementandPiecesDestruction", "box_SpawnAI_17.Spawned", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_178_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_MultipleOR_178;
    l1 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1500400803", "1500400803", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_178.Out", "box_Gate_v3_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1415690338", "1415690338", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_68.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_67();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1981769711", "1981769711", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_68.Out", "box_StaticBreakableBreaker_67.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_71_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_55();
    l0 = self.box_EntityStatusListener_71;
    l1 = self.box_StaticBreakableListener_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|54626525", "54626525", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_71.Loaded", "box_StaticBreakableListener_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_71_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_71;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1360564169", "1360564169", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_71.Unloaded", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_174_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_173();
    l0 = self.box_Delay_v5_174;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1218934875", "1218934875", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_174.TimeElapsed", "box_Compare_Boolean_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_134_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_190();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|969570215", "969570215", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_134.A_neq_B", "box_GetPawnVehicleInfo_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_200_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1640753908", "1640753908", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_200.A_neq_B", "box_MultipleOR_112.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_66_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_64();
    l0 = self.box_EntityStatusListener_66;
    l1 = self.box_StaticBreakableListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1153018501", "1153018501", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_66.Loaded", "box_StaticBreakableListener_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_66_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_66;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|557202421", "557202421", "InsideStatueReinforcementandPiecesDestruction", "box_EntityStatusListener_66.Unloaded", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_199_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1171556151", "1171556151", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_199.A_neq_B", "box_MultipleOR_129.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_7_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_OnceOnly_v3_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2134044308", "2134044308", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_7.Out", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_157_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_157;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1202751045", "1202751045", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_157.Out", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_65();
    l0 = self.box_GroupSizeListener_v5_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1575675989", "1575675989", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_5.Out", "box_GroupSizeListener_v5_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|417661766", "417661766", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_5.Out", "box_Simple_Node_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1423936548", "1423936548", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_5.Out", "box_MultipleOR_171.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_20();
    l0 = self.box_GroupSizeListener_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|837056076", "837056076", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_39.Out", "box_GroupSizeListener_v5_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_177();
    l0 = self.box_Switch_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|513738561", "513738561", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_39.Out", "box_Switch_177.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_198_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_198_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_203();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|243241886", "243241886", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_198.InVehicle", "box_Compare_Strings_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_198_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_198_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_198_Out()
    self:OnExit_box_GetPawnVehicleInfo_198_Out();
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_20();
    l0 = self.box_GroupSizeListener_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|464477238", "464477238", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_9.Out", "box_GroupSizeListener_v5_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|771181930", "771181930", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_9.Out", "box_Simple_Node_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_173_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1273328145", "1273328145", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Boolean_173.A_is_True", "box_OnceOnly_v3_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_91();
    l0 = self.box_MultipleOR_122;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|472044172", "472044172", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_122.Out", "box_StaticBreakableBreaker_91.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_213_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1768567404", "1768567404", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_213.A_neq_B", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_117_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_117_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_120();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1937052649", "1937052649", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_117.InVehicle", "box_Compare_Strings_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_117_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_117_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|165380039", "165380039", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_117.NotInVehicle", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_117_Out()
    self:OnExit_box_GetPawnVehicleInfo_117_Out();
end;

function export:f_box_Compare_Integers_165_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1270043939", "1270043939", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Integers_165.A_le_B", "box_Delay_v5_168.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_98_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_100();
    l0 = self.box_StaticBreakableListener_98;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|849704275", "849704275", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_98.OnBreak", "box_GetPawnVehicleInfo_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_151_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|909581188", "909581188", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Boolean_151.A_is_False", "box_SpawnAI_8.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_151_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_150();
    l0 = self.box_SpawnAI_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1206391696", "1206391696", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Boolean_151.A_is_True", "box_SpawnAI_150.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_127_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_127_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_111();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|256299008", "256299008", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_127.InVehicle", "box_Compare_Strings_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_127_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_127_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|491763133", "491763133", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_127.NotInVehicle", "box_MultipleOR_126.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_127_Out()
    self:OnExit_box_GetPawnVehicleInfo_127_Out();
end;

function export:f_box_Random_23_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_Random_23;
    l1 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|899735969", "899735969", "InsideStatueReinforcementandPiecesDestruction", "box_Random_23.Output", "box_SpawnAI_17.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_23_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_Random_23;
    l1 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1918565090", "1918565090", "InsideStatueReinforcementandPiecesDestruction", "box_Random_23.Output", "box_SpawnAI_24.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_14();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|684837475", "684837475", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_15.Out", "box_Compare_Integers_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_36;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1806045990", "1806045990", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_36.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_182();
    l0 = self.box_Delay_v5_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2055315132", "2055315132", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_145.Out", "box_Delay_v5_182.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_143();
    l0 = self.box_Gate_v3_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1030966424", "1030966424", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_145.Out", "box_Gate_v3_143.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_19_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|991907666", "991907666", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Integers_19.A_le_B", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_13();
    l0 = self.box_GroupSizeListener_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1902423620", "1902423620", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_3.Out", "box_GroupSizeListener_v5_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1559792614", "1559792614", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_3.Out", "box_Simple_Node_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|282761898", "282761898", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_3.Out", "box_MultipleOR_169.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_33_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_33;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1696052472", "1696052472", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_33.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_221_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_221;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|853939639", "853939639", "InsideStatueReinforcementandPiecesDestruction", "box_RequestPhoneCall_v2_221.Completed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_150_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_167();
    l0 = self.box_SpawnAI_150;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|801129050", "801129050", "InsideStatueReinforcementandPiecesDestruction", "box_SpawnAI_150.Spawned", "box_OutputOrder_v2_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_158_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_158;
    l1 = self.box_OnceOnly_v3_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|149286555", "149286555", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_158.Enabled", "box_OnceOnly_v3_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_158_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_158;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2051235934", "2051235934", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_158.MemberAdded", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_158_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_158;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1937591921", "1937591921", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_158.MemberRemoved", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_150();
    l0 = self.box_SpawnAI_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|439967443", "439967443", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_153.Out", "box_SpawnAI_150.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2045272606", "2045272606", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_153.Out", "box_SpawnAI_8.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_43();
    l0 = self.box_MultipleOR_59;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|72531863", "72531863", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_59.Out", "box_Compare_Integers_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_84_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_109();
    l0 = self.box_StaticBreakableListener_84;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|124775956", "124775956", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_84.OnBreak", "box_GetPawnVehicleInfo_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_174();
    l0 = self.box_Gate_v3_176;
    l1 = self.box_Delay_v5_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1112590268", "1112590268", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_176.Out", "box_Delay_v5_174.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Strings_195_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1141541476", "1141541476", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_195.A_neq_B", "box_MultipleOR_132.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_187_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_187;
    l1 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1684139939", "1684139939", "InsideStatueReinforcementandPiecesDestruction", "box_VehicleListener_v3_187.OnStandUp", "box_MultipleOR_188.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_179();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_Switch_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1789895192", "1789895192", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_62.Out", "box_Switch_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_152_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1700147623", "1700147623", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_152.Out", "box_MultipleOR_189.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_152_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_149();
    l0 = self.box_VehicleListener_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1689201154", "1689201154", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_152.Out", "box_VehicleListener_v3_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_30();
    l0 = self.box_Delay_v5_31;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1896464758", "1896464758", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_31.TimeElapsed", "box_StimsEmitter_v2_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_OnceOnly_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1607272676", "1607272676", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_6.Out", "box_OnceOnly_v3_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_131_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_192();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|827236417", "827236417", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_131.A_neq_B", "box_GetPawnVehicleInfo_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_78();
    l0 = self.box_MultipleOR_129;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1335435270", "1335435270", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_129.Out", "box_StaticBreakableBreaker_78.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1564243105", "1564243105", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_186.Out", "box_MultipleOR_189.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_186_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_187();
    l0 = self.box_VehicleListener_v3_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|392430903", "392430903", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_186.Out", "box_VehicleListener_v3_187.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_8_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_SpawnAI_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|863617899", "863617899", "InsideStatueReinforcementandPiecesDestruction", "box_SpawnAI_8.Spawned", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_50_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_156();
    l0 = self.box_OnceOnly_v3_50;
    l1 = self.box_NavLinkModifier_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1333897011", "1333897011", "InsideStatueReinforcementandPiecesDestruction", "box_OnceOnly_v3_50.Out", "box_NavLinkModifier_156.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_99();
    l0 = self.box_MultipleOR_103;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1494276539", "1494276539", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_103.Out", "box_StaticBreakableBreaker_99.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_133_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_133_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_131();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1120118659", "1120118659", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_133.InVehicle", "box_Compare_Strings_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_133_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_133_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2043299115", "2043299115", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_133.NotInVehicle", "box_MultipleOR_132.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_133_Out()
    self:OnExit_box_GetPawnVehicleInfo_133_Out();
end;

function export:f_box_Delay_v5_159_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_159;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1986439481", "1986439481", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_159.TimeElapsed", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_56_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_Gate_v3_56;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1727689951", "1727689951", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_56.Closed", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_161();
    l0 = self.box_Gate_v3_56;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1741112537", "1741112537", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_56.Out", "box_Compare_Boolean_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_13_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_13;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|997584536", "997584536", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_13.Enabled", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_13_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_13;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1255488068", "1255488068", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_13.MemberAdded", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_13_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_13;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|72163910", "72163910", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_13.MemberRemoved", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetPawnVehicleInfo_136_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_136_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_134();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|678516556", "678516556", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_136.InVehicle", "box_Compare_Strings_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_136_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_136_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1546143026", "1546143026", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_136.NotInVehicle", "box_MultipleOR_135.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_136_Out()
    self:OnExit_box_GetPawnVehicleInfo_136_Out();
end;

function export:f_box_OutputOrder_v2_167_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_158();
    l0 = self.box_GroupSizeListener_v5_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1659717617", "1659717617", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_167.Out", "box_GroupSizeListener_v5_158.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_167_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1319582518", "1319582518", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_167.Out", "box_MultipleOR_169.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_142_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = self.box_Gate_v3_142;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1049078701", "1049078701", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_142.Out", "box_OutputOrder_v2_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_76_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_136();
    l0 = self.box_StaticBreakableListener_76;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|158090558", "158090558", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_76.OnBreak", "box_GetPawnVehicleInfo_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_190_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_190_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_191();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1249547825", "1249547825", "InsideStatueReinforcementandPiecesDestruction", "box_GetPawnVehicleInfo_190.InVehicle", "box_Compare_Strings_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_190_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_190_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_190_Out()
    self:OnExit_box_GetPawnVehicleInfo_190_Out();
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_27();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_NavLinkModifier_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1828347584", "1828347584", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_11.Out", "box_NavLinkModifier_27.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_182_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_Delay_v5_182;
    l1 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|898173532", "898173532", "InsideStatueReinforcementandPiecesDestruction", "box_Delay_v5_182.TimeElapsed", "box_Gate_v3_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_113_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_197();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2057506788", "2057506788", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_113.A_neq_B", "box_GetPawnVehicleInfo_197.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_96_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_108();
    l0 = self.box_StaticBreakableListener_96;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|796675297", "796675297", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_96.OnBreak", "box_GetPawnVehicleInfo_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_95();
    l0 = self.box_MultipleOR_123;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1376321336", "1376321336", "InsideStatueReinforcementandPiecesDestruction", "box_MultipleOR_123.Out", "box_StaticBreakableBreaker_95.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_147_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_152();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|390271819", "390271819", "InsideStatueReinforcementandPiecesDestruction", "box_Compare_Strings_147.A_eq_B", "box_OutputOrder_v2_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_143_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_144();
    l0 = self.box_Gate_v3_143;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|719091221", "719091221", "InsideStatueReinforcementandPiecesDestruction", "box_Gate_v3_143.Out", "box_OutputOrder_v2_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_79_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_130();
    l0 = self.box_StaticBreakableListener_79;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|393597734", "393597734", "InsideStatueReinforcementandPiecesDestruction", "box_StaticBreakableListener_79.OnBreak", "box_GetPawnVehicleInfo_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_164_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_164;
    l1 = self.box_OnceOnly_v3_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1756997887", "1756997887", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_164.Enabled", "box_OnceOnly_v3_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_164_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_164;
    l1 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1781495661", "1781495661", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_164.MemberAdded", "box_MultipleOR_166.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_164_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_164;
    l1 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1133817005", "1133817005", "InsideStatueReinforcementandPiecesDestruction", "box_GroupSizeListener_v5_164.MemberRemoved", "box_MultipleOR_166.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1373024791", "1373024791", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_40.Out", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1273503545", "1273503545", "InsideStatueReinforcementandPiecesDestruction", "box_OutputOrder_v2_40.Out", "CloseEnforcementGate", clone:GetLuaBox(), self);
    self:CloseEnforcementGate();
end;

function export:OnEnter_box_Simple_Node_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|@AllowWarnCalls");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_220_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|@CallNpcAimOutside");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|@CancelSpawns");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_49_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|@NoMoreSnipers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|26758306");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_100_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_100_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_100_Out,
    });
    l0 = self.box_StaticBreakableListener_98;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_172()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104188747753999611",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|48891795");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
        },
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
                [2] = self.f_box_OutputOrder_v2_75_Out_2,
                [3] = self.f_box_OutputOrder_v2_75_Out_3,
                [4] = self.f_box_OutputOrder_v2_75_Out_4,
                [5] = self.f_box_OutputOrder_v2_75_Out_5,
                [6] = self.f_box_OutputOrder_v2_75_Out_6,
                [7] = self.f_box_OutputOrder_v2_75_Out_7,
                [8] = self.f_box_OutputOrder_v2_75_Out_8,
                [9] = self.f_box_OutputOrder_v2_75_Out_9,
                [10] = self.f_box_OutputOrder_v2_75_Out_10,
                [11] = self.f_box_OutputOrder_v2_75_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|51060890");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_201_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_201_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_201_Out,
    });
    l0 = self.box_StaticBreakableListener_90;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_28()
    local params;
    params = {
        -- Entity,
        [0] = "2102914772453311734",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|115047372");
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

function export:OnEnter_box_GetPawnVehicleInfo_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|116436118");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_108_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_108_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_108_Out,
    });
    l0 = self.box_StaticBreakableListener_96;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_51()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|122841692");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_191_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_190,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_27()
    local params;
    params = {
        -- Entity,
        [0] = "2102916100705525408",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|191287491");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_204_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_201,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|193690648");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_208_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_205,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|193889654");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_43_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_65;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102919374221360433",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|234252583");
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

function export:OnEnter_box_StaticBreakableBreaker_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|234807968");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543091",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|246551764");
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
                [0] = self.f_box_OutputOrder_v2_184_Out_0,
                [1] = self.f_box_OutputOrder_v2_184_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_177()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|264792597");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_210_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_210_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_210_Out,
    });
    l0 = self.box_StaticBreakableListener_96;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|299530446");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
                [3] = self.f_box_OutputOrder_v2_57_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_222()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2611984947",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|348350874");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_102_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543053",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|376189021");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_116_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_118,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|392991882");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543059",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|415080576");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_14_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_13;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|444511020");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543067",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_214()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|479513437");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_212_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_209,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|488237762");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_125_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_119,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|496178657");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469479315096394",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|507413917");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_128_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_130,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|512973030");
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

function export:OnEnter_box_StaticBreakableListener_82()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543063",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|544350899");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_148_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|546777550");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_119_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_119_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_119_Out,
    });
    l0 = self.box_StaticBreakableListener_92;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|557480576");
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

function export:OnEnter_box_Delay_v5_168()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|601355730");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_193_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_193_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_193_Out,
    });
    l0 = self.box_StaticBreakableListener_79;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|609174510");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_154_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_158;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_149()
    local params, l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = l0:GetDataOutValue(0),
        -- vehicle,
        [4] = l1:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_217()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|613622003");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_197_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_197_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_197_Out,
    });
    l0 = self.box_StaticBreakableListener_86;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432372445892",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100469432374543082",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102919416197955718",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|696929203");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_194_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_196,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|699456715");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
                [2] = self.f_box_OutputOrder_v2_44_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_20()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#5706293E",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|773228632");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
                [2] = self.f_box_OutputOrder_v2_70_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432372445886",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_94()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543071",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|798808577");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543053",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543082",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|857809478");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_206_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_206_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_206_Out,
    });
    l0 = self.box_StaticBreakableListener_92;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|863083720");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_120_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_117,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|863534698");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_118_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_118_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_118_Out,
    });
    l0 = self.box_StaticBreakableListener_88;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_53()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543059",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|920972137");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_38_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_38_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_38_Out,
    });
    l0 = self.box_StaticBreakableListener_4;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|930914466");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_205_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_205_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_205_Out,
    });
    l0 = self.box_StaticBreakableListener_94;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|953386818");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_124_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_124_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_124_Out,
    });
    l0 = self.box_StaticBreakableListener_94;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|965182534");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543063",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_65()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EAA0E651",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|994378101");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_110_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_109,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "#A23941CE",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1003171903");
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

function export:OnEnter_box_Delay_v5_219()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_181()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1061511688");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_203_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_198,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1071227481");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432372445880",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1073406785");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_192_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_192_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_192_Out,
    });
    l0 = self.box_StaticBreakableListener_80;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1075980401");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_202_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_202_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_202_Out,
    });
    l0 = self.box_StaticBreakableListener_88;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1089383501");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_183_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_183_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_183_Out,
    });
    l0 = self.box_StaticBreakableListener_4;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1094598917");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_207_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_202,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1097683806");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543074",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1107112004");
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

function export:OnEnter_box_StaticBreakableListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543077",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1125411468");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_185_A_eq_B,
    });
    params = {
        -- A,
        [0] = self._sld_seatType_box_GetPawnVehicleInfo_183,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1131911346");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2103028614000809839",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1132428405");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_161_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_161_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bPlayerInChopper,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_160()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104574115579973236",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1146517902");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_101_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_100,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100469432374543059",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1154864232");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_211_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_206,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_179()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1180469036");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1181241811");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_104_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_124,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_156()
    local params;
    params = {
        -- Entity,
        [0] = "2100469432372445864",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_215()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1199157305");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432372445883",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1200417966");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_111_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_127,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_146()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1208753802");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_114_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_114_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_114_Out,
    });
    l0 = self.box_StaticBreakableListener_86;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_88()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469479315096394",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543085",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1270996989");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_130_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_130_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_130_Out,
    });
    l0 = self.box_StaticBreakableListener_79;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1272332117");
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

function export:OnEnter_box_GetPawnVehicleInfo_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1288293315");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_109_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_109_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_109_Out,
    });
    l0 = self.box_StaticBreakableListener_84;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1292439358");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_196_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_196_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_196_Out,
    });
    l0 = self.box_StaticBreakableListener_82;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543091",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1318815487");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543082",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1319035134");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2103569461769420019",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1338734055");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_209_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_209_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_209_Out,
    });
    l0 = self.box_StaticBreakableListener_98;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543072",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1356043948");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_105_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_108,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1359569755");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432372445886",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100469432374543091",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102919334734084201",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1396261836");
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

function export:OnEnter_box_EntityStatusListener_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100469432374543077",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_174()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1431560545");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_134_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_136,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1439429625");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_200_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_197,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
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
        [2] = "2100469432374543085",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1455943916");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_199_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_193,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1511271967");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1530365910");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1531567887");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_198_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_198_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_198_Out,
    });
    l0 = self.box_StaticBreakableListener_84;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1577730597");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1592157155");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_173_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bPlayerInChopper,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1614183032");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_213_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_210,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1624011233");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_117_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_117_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_117_Out,
    });
    l0 = self.box_StaticBreakableListener_90;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1629042538");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_165_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_164;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_98()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432372445891",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1662614565");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_151_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_151_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bPlayerInChopper,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1677606257");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_127_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_127_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_127_Out,
    });
    l0 = self.box_StaticBreakableListener_82;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Random_23()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1710041734");
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
                [0] = self.f_box_OutputOrder_v2_145_Out_0,
                [1] = self.f_box_OutputOrder_v2_145_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1720985888");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_19_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_20;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1723999957");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_221()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "596319980",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_150()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104574051576991139",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_158()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#BB130FA5",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1816923162");
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

function export:OnEnter_box_StaticBreakableListener_84()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432372445880",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_176()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1842784544");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_195_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_192,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1846106959");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432372445892",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_187()
    local params, l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = l0:GetDataOutValue(0),
        -- vehicle,
        [4] = l1:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1859016206");
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
                [0] = self.f_box_OutputOrder_v2_152_Out_0,
                [1] = self.f_box_OutputOrder_v2_152_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1863640286");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543072",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1888719310");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543071",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1924381803");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_131_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_133,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1941448444");
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

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102919288540116355",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1988232709");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_133_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_133_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_133_Out,
    });
    l0 = self.box_StaticBreakableListener_80;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|1988999091");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432374543085",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_159()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_56()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#7D85EABD",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2009447406");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_136_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_136_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_136_Out,
    });
    l0 = self.box_StaticBreakableListener_76;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2011089508");
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

function export:OnEnter_box_StaticBreakableBreaker_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2035066222");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100469432372445891",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_142()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432374543074",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2058468101");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_190_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_190_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_190_Out,
    });
    l0 = self.box_StaticBreakableListener_76;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_182()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2074081226");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_113_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_114,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_96()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100469432372445883",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2129957855");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_147_A_eq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_38,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_143()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2103569461769420019",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_164()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#221A5E1F",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B20.domino|@InsideStatueReinforcementandPiecesDestruction|2143552719");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_100_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_100 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_100_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_100 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_100 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_201_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_201 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_201_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_201 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_201_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_201 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_108_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_108 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_108_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_108 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_108 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_210_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_210 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_210_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_210 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_210_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_210 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPlayerGroup_v2_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_148_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bPlayerInChopper = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_119_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_119 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_119_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_119 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_119 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_193_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_193 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_193_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_193 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_193_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_193 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_197_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_197 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_197_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_197 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_197_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_197 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_206_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_206 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_206_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_206 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_206_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_206 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_118_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_118 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_118_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_118 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_118_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_118 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_38_InVehicle()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_VehicleListener_v3_149;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_38 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_38_NotInVehicle()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_VehicleListener_v3_149;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_38 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_38_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_VehicleListener_v3_149;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_38 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_205_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_205 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_205_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_205 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_205_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_205 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_124_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_124 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_124_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_124 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_124_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_124 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_StaticBreakableListener_4_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_VehicleListener_v3_187;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_149;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_4_OnBreakAll()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_VehicleListener_v3_187;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_149;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_4_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_VehicleListener_v3_187;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_149;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_4_OnHit()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_VehicleListener_v3_187;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_149;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_4_OnStateChanged()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_VehicleListener_v3_187;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_149;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_192_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_192 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_192_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_192 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_192_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_192 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_202_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_202 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_202_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_202 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_202_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_202 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_183_InVehicle()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_VehicleListener_v3_187;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
    self._sld_seatType_box_GetPawnVehicleInfo_183 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPawnVehicleInfo_183_NotInVehicle()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_VehicleListener_v3_187;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
    self._sld_seatType_box_GetPawnVehicleInfo_183 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPawnVehicleInfo_183_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_VehicleListener_v3_187;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
    self._sld_seatType_box_GetPawnVehicleInfo_183 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPawnVehicleInfo_114_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_114 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_114_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_114 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_114_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_114 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_130_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_130 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_130_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_130 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_130_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_130 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_109_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_109 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_109_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_109 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_109 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_196_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_196 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_196_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_196 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_196_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_196 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_209_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_209 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_209_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_209 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_209_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_209 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_198_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_198 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_198_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_198 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_198_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_198 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_117_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_117 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_117_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_117 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_117 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_127_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_127 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_127_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_127 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_127 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_133_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_133 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_133_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_133 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_133_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_133 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_136_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_136 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_136_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_136 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_136_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_136 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_190_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_190 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_190_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_190 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_190_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_box_GetPawnVehicleInfo_190 = l0:GetDataOutValue(3);
end;

-- Empty out anchor definitions
function export:CloseEnforcementGate()
    
end;
function export:EnforcementCalls()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="AllowCalls" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="CancelSpawn" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="NoMoreSniper" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="CloseEnforcementGate" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="EnforcementCalls" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
