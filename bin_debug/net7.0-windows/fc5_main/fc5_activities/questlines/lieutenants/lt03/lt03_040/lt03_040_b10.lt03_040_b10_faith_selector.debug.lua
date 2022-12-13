LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_040/lt03_040_b10.domino
-- User graph: LT03_040_B10_Faith_Selector
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Faith_1" Type="Nomad|entity{}" />
    <DataIn Name="Faith_2" Type="Nomad|entity{}" />
    <DataIn Name="Faith_3" Type="Nomad|entity{}" />
    <DataIn Name="Faith_4" Type="Nomad|entity{}" />
    <DataIn Name="Faith_5" Type="Nomad|entity{}" />
    <DataIn Name="Faith_6" Type="Nomad|entity{}" />
    <DataIn Name="Faith_7" Type="Nomad|entity{}" />
    <DataIn Name="Faith_8" Type="Nomad|entity{}" />
    <DataIn Name="Faith_9" Type="Nomad|entity{}" />
    <DataIn Name="Faith_10" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListAddToList.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListReset.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListGetRandom.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.LT03_040_B10 = nil;
    Globals.LT03_040_B10 = {
        eRealFaith = nil,
        fCurrentHealth = 100,
        eRealFaithDialogPoint = nil,
        RealFaith_2 = false,
        RealFaith_1 = false,
        RealFaith_3 = false,
        RealFaith_4 = false,
        RealFaith_5 = false,
        RealFaith_6 = false,
        RealFaith_7 = false,
        ePlayerAttacking = nil,
        iFaithProgress = 100,
        iFaithNumber = 3,
        Faith_Invisible = {
        },
        Faith_Visible = {
        },
        fAngelWaveIntervale = 15,
        bFaithHintTimer = 0.1,
        fBuildUp_Timer = 21,
        fMortarFrequency = 17,
        iNbrMortarPerAttack = 2,
        iFaithTeleportNbr = 2,
        bFaithTeleport = false,
        Faith_Circle = {
        },
        Faith_Random = {
        },
        fProjectileSpeed = 15,
        fTeleportTimer = 13.5,
        bActivateMarker = false,
        RealFaith_8 = false,
        RealFaith_9 = false,
        RealFaith_10 = false,
        eFaithTeleport_FX = "2104423650397529717",
        eLocalPlayer = nil,
        fThresholdHealth = 85,
        iAngelNbr = 0,
        RealFaith_Start = true,
        fTeleportDuration = 2,
        ePlayer1 = nil,
        ePlayer2 = nil,
        PlayersToTarget = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Selector.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Despawn_AllClones",
            },
            [1] = {
                name = "Despawn_Faith",
            },
            [2] = {
                name = "Select",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "DespawnFaith_1",
                delayed = false,
            },
            [1] = {
                name = "DespawnFaith_10",
                delayed = false,
            },
            [2] = {
                name = "DespawnFaith_2",
                delayed = false,
            },
            [3] = {
                name = "DespawnFaith_3",
                delayed = false,
            },
            [4] = {
                name = "DespawnFaith_4",
                delayed = false,
            },
            [5] = {
                name = "DespawnFaith_5",
                delayed = false,
            },
            [6] = {
                name = "DespawnFaith_6",
                delayed = false,
            },
            [7] = {
                name = "DespawnFaith_7",
                delayed = false,
            },
            [8] = {
                name = "DespawnFaith_8",
                delayed = false,
            },
            [9] = {
                name = "DespawnFaith_9",
                delayed = false,
            },
            [10] = {
                name = "DespawnFaith_Start",
                delayed = false,
            },
            [11] = {
                name = "SpawnFaith_1",
                delayed = false,
            },
            [12] = {
                name = "SpawnFaith_10",
                delayed = false,
            },
            [13] = {
                name = "SpawnFaith_2",
                delayed = false,
            },
            [14] = {
                name = "SpawnFaith_3",
                delayed = false,
            },
            [15] = {
                name = "SpawnFaith_4",
                delayed = false,
            },
            [16] = {
                name = "SpawnFaith_5",
                delayed = false,
            },
            [17] = {
                name = "SpawnFaith_6",
                delayed = false,
            },
            [18] = {
                name = "SpawnFaith_7",
                delayed = false,
            },
            [19] = {
                name = "SpawnFaith_8",
                delayed = false,
            },
            [20] = {
                name = "SpawnFaith_9",
                delayed = false,
            },
            [21] = {
                name = "SpawnFaith_Start",
                delayed = false,
            },
        },
        controlOutCount = 22,
        dataIn = {
            [0] = {
                name = "Faith_1",
                type = "entity",
            },
            [1] = {
                name = "Faith_10",
                type = "entity",
            },
            [2] = {
                name = "Faith_2",
                type = "entity",
            },
            [3] = {
                name = "Faith_3",
                type = "entity",
            },
            [4] = {
                name = "Faith_4",
                type = "entity",
            },
            [5] = {
                name = "Faith_5",
                type = "entity",
            },
            [6] = {
                name = "Faith_6",
                type = "entity",
            },
            [7] = {
                name = "Faith_7",
                type = "entity",
            },
            [8] = {
                name = "Faith_8",
                type = "entity",
            },
            [9] = {
                name = "Faith_9",
                type = "entity",
            },
        },
        dataInCount = 10,
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
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/List/ListAddToList.lua")] = {
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
                name = "ListA",
                type = "list",
            },
            [1] = {
                name = "ListB",
                type = "list",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/List/ListReset.lua")] = {
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
                name = "List",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/ListReader.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Read",
            },
            [1] = {
                name = "ResetRead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
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
                name = "Index",
                type = "int",
            },
            [1] = {
                name = "Input",
                type = "list",
            },
            [2] = {
                name = "Loop",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CursorPos",
                type = "int",
            },
            [1] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_040_B10_Faith_Selector";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector";
    self.SpawnFaith_1 = DummyFunction;
    self.SpawnFaith_2 = DummyFunction;
    self.SpawnFaith_3 = DummyFunction;
    self.SpawnFaith_4 = DummyFunction;
    self.SpawnFaith_5 = DummyFunction;
    self.SpawnFaith_6 = DummyFunction;
    self.SpawnFaith_7 = DummyFunction;
    self.DespawnFaith_1 = DummyFunction;
    self.DespawnFaith_2 = DummyFunction;
    self.DespawnFaith_3 = DummyFunction;
    self.DespawnFaith_4 = DummyFunction;
    self.DespawnFaith_5 = DummyFunction;
    self.DespawnFaith_6 = DummyFunction;
    self.DespawnFaith_7 = DummyFunction;
    self.SpawnFaith_8 = DummyFunction;
    self.SpawnFaith_9 = DummyFunction;
    self.SpawnFaith_10 = DummyFunction;
    self.DespawnFaith_8 = DummyFunction;
    self.DespawnFaith_9 = DummyFunction;
    self.DespawnFaith_10 = DummyFunction;
    self.SpawnFaith_Start = DummyFunction;
    self.DespawnFaith_Start = DummyFunction;
    self.iFaithSpawned = 0;
    self.eRealFaith = nil;
    self.Faith_Visible = {
    };
    self.eOldFaith = nil;
    self.eFlickerDespawn = nil;
    self.eFlickerSpawn = nil;
    self.eEntityKilled = nil;
    self.iIntroCounter = 0;
    self.box_Delay_v5_151 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|16445942");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_151_TimeElapsed,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|16819033");
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
    self.box_MultipleOR_164 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|25080139");
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
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|27567375");
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
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|156580806");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_MultipleOR_166 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|237573012");
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
        [0] = self.f_box_MultipleOR_166_Out,
    });
    self.box_MultipleOR_163 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|337852793");
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
        [0] = self.f_box_MultipleOR_163_Out,
    });
    self.box_ListReader_41 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|419320822");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_41_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_41_Out,
    });
    self.box_MultipleAND_v2_156 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|599758631");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 11,
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
        [0] = self.f_box_MultipleAND_v2_156_Out,
    });
    self.box_MultipleOR_182 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|695422436");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_MultipleOR_208 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|797314473");
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
        [0] = self.f_box_MultipleOR_208_Out,
    });
    self.box_IndexList_v2_162 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1056767820");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_162_Output_0,
                [1] = self.f_box_IndexList_v2_162_Output_1,
                [2] = self.f_box_IndexList_v2_162_Output_2,
            },
            count = 5,
        },
    });
    self.box_MultipleOR_210 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1131101252");
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
        [0] = self.f_box_MultipleOR_210_Out,
    });
    self.box_MultipleOR_201 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1174219916");
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
    self.box_IndexList_v2_207 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1204370545");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_207_Output_0,
                [1] = self.f_box_IndexList_v2_207_Output_1,
                [2] = self.f_box_IndexList_v2_207_Output_2,
            },
            count = 5,
        },
    });
    self.box_MultipleAND_v2_12 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1232134557");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
        [0] = self.f_box_MultipleAND_v2_12_Out,
    });
    self.box_Delay_v5_152 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1346496927");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_152_TimeElapsed,
    });
    self.box_MultipleOR_143 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1471535478");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 11,
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
    self.box_IndexList_v2_199 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1499537161");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_199_Output_0,
                [1] = self.f_box_IndexList_v2_199_Output_1,
                [2] = self.f_box_IndexList_v2_199_Output_2,
            },
            count = 5,
        },
    });
    self.box_Random_16 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1511180974");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 10,
        },
        dataIn = {
            [1] = 10,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_16_Output_0,
                [1] = self.f_box_Random_16_Output_1,
                [2] = self.f_box_Random_16_Output_2,
                [3] = self.f_box_Random_16_Output_3,
                [4] = self.f_box_Random_16_Output_4,
                [5] = self.f_box_Random_16_Output_5,
                [6] = self.f_box_Random_16_Output_6,
                [7] = self.f_box_Random_16_Output_7,
                [8] = self.f_box_Random_16_Output_8,
                [9] = self.f_box_Random_16_Output_9,
            },
            count = 10,
        },
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1811376322");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1912600642");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2083922785");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
end;

function export:Despawn_AllClones()
    local params, l0;
    params = self:OnEnter_box_ListReader_41();
    l0 = self.box_ListReader_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|43070677", "43070677", "LT03_040_B10_Faith_Selector", "Despawn_AllClones", "box_ListReader_41.ResetRead", self, l0:GetLuaBox());
    -- ResetRead
    l0:Exec(1, params);
end;

function export:Despawn_Faith()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_139();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1676701117", "1676701117", "LT03_040_B10_Faith_Selector", "Despawn_Faith", "box_OutputOrder_v2_139.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Select()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1284584445", "1284584445", "LT03_040_B10_Faith_Selector", "Select", "box_Simple_Node_77.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_141_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_41();
    l0 = self.box_ListReader_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|361976847", "361976847", "LT03_040_B10_Faith_Selector", "box_Simple_Node_141.Out", "box_ListReader_41.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_78_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListGetRandom_94();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|678268938", "678268938", "LT03_040_B10_Faith_Selector", "box_Simple_Node_78.Out", "box_ListGetRandom_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_77_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_16();
    l0 = self.box_Random_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|382839775", "382839775", "LT03_040_B10_Faith_Selector", "box_Simple_Node_77.Out", "box_Random_16.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|63016154", "63016154", "LT03_040_B10_Faith_Selector", "box_Simple_Node_77.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_76_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_16();
    l0 = self.box_Random_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2126650341", "2126650341", "LT03_040_B10_Faith_Selector", "box_Simple_Node_76.Out", "box_Random_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_205_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_209();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1065773615", "1065773615", "LT03_040_B10_Faith_Selector", "box_Simple_Node_205.Out", "box_IsValueNil_v3_209.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_18_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1209297369", "1209297369", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_18.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 6);
end;

function export:f_box_SetBoolean_v2_158_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_158_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1511357108", "1511357108", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_158.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_126_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|430625832", "430625832", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_126.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_126_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|311934301", "311934301", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_126.Out", "DespawnFaith_2", clone:GetLuaBox(), self);
    self:DespawnFaith_2();
end;

function export:f_box_Delay_v5_151_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_141();
    l0 = self.box_Delay_v5_151;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|991618971", "991618971", "LT03_040_B10_Faith_Selector", "box_Delay_v5_151.TimeElapsed", "box_Simple_Node_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_190_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_167();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|377239808", "377239808", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_190.Equal", "box_SetBoolean_v2_167.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListAddToList_203();
    l0 = self.box_MultipleOR_198;
    l1 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|621854932", "621854932", "LT03_040_B10_Faith_Selector", "box_MultipleOR_198.Out", "box_ListAddToList_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_116_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1580329283", "1580329283", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_116.A_is_True", "box_OutputOrder_v2_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|790452948", "790452948", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_129.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1243271774", "1243271774", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_129.Out", "DespawnFaith_5", clone:GetLuaBox(), self);
    self:DespawnFaith_5();
end;

function export:f_box_SetBoolean_v2_108_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_108_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|156896438", "156896438", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_108.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 8);
end;

function export:f_box_ListGetRandom_175_Out()
    local params, l0;
    self:OnExit_box_ListGetRandom_175_Out();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_169();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1157860830", "1157860830", "LT03_040_B10_Faith_Selector", "box_ListGetRandom_175.Out", "box_ListWriter_v2_169.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_164_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListAddToList_204();
    l0 = self.box_MultipleOR_164;
    l1 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|822062798", "822062798", "LT03_040_B10_Faith_Selector", "box_MultipleOR_164.Out", "box_ListAddToList_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_206();
    l0 = self.box_MultipleOR_197;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|526329931", "526329931", "LT03_040_B10_Faith_Selector", "box_MultipleOR_197.Out", "box_ListWriter_v2_206.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_167_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_167_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_187();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1581058261", "1581058261", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_167.Out", "box_OutputOrder_v2_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_144_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_152();
    l0 = self.box_Delay_v5_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1753744867", "1753744867", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_144.A_is_True", "box_Delay_v5_152.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_114_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|975194476", "975194476", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_114.A_is_True", "box_OutputOrder_v2_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_28_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1300564532", "1300564532", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_28.Removed", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_7_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|761490949", "761490949", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_7.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Entity_2_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1737688137", "1737688137", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_2.Equal", "box_SetBoolean_v2_15.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_105_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_105_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|943841276", "943841276", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_105.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 9);
end;

function export:f_box_SetBoolean_v2_196_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_196_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_140();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1492915719", "1492915719", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_196.Out", "box_ListWriter_v2_140.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_71_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_62();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1884650462", "1884650462", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_71.Equal", "box_SetBoolean_v2_62.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_134_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|413035623", "413035623", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_134.A_is_True", "box_OutputOrder_v2_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_89_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_58();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|910753493", "910753493", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_89.Added", "box_ListWriter_v2_58.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_13_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|635080521", "635080521", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_13.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_35();
    l0 = self.box_Delay_v5_44;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|569268787", "569268787", "LT03_040_B10_Faith_Selector", "box_Delay_v5_44.TimeElapsed", "box_Compare_Integers_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|865107687", "865107687", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_145.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1707445884", "1707445884", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_145.Out", "DespawnFaith_1", clone:GetLuaBox(), self);
    self:DespawnFaith_1();
end;

function export:f_box_Compare_Integers_35_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1986619542", "1986619542", "LT03_040_B10_Faith_Selector", "box_Compare_Integers_35.A_ge_B", "box_Simple_Node_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_35_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|430557231", "430557231", "LT03_040_B10_Faith_Selector", "box_Compare_Integers_35.A_lt_B", "box_Simple_Node_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_23_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1388552004", "1388552004", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_23.Equal", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_166_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_207();
    l0 = self.box_MultipleOR_166;
    l1 = self.box_IndexList_v2_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|550778249", "550778249", "LT03_040_B10_Faith_Selector", "box_MultipleOR_166.Out", "box_IndexList_v2_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ListAddToList_203_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|210076479", "210076479", "LT03_040_B10_Faith_Selector", "box_ListAddToList_203.Out", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|684979093", "684979093", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_128.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|413046785", "413046785", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_128.Out", "DespawnFaith_4", clone:GetLuaBox(), self);
    self:DespawnFaith_4();
end;

function export:f_box_ListWriter_v2_61_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1496867588", "1496867588", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_61.Removed", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_170_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_170_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|221068898", "221068898", "LT03_040_B10_Faith_Selector", "box_SetEntity_v2_170.Out", "box_MultipleOR_210.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_57_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_57_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1045368057", "1045368057", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_57.Out", "box_OutputOrder_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2046741403", "2046741403", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_79.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|920035270", "920035270", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_79.Out", "SpawnFaith_5", clone:GetLuaBox(), self);
    self:SpawnFaith_5();
end;

function export:f_box_Compare_Boolean_212_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1022187508", "1022187508", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_212.A_is_True", "box_OutputOrder_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_172_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1275027300", "1275027300", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_172.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_172_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|101747920", "101747920", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_172.Out", "SpawnFaith_1", clone:GetLuaBox(), self);
    self:SpawnFaith_1();
end;

function export:f_box_ListReset_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReset_1();
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|554437564", "554437564", "LT03_040_B10_Faith_Selector", "box_ListReset_96.Out", "box_ListReset_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_163_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListAddToList_121();
    l0 = self.box_MultipleOR_163;
    l1 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1067960834", "1067960834", "LT03_040_B10_Faith_Selector", "box_MultipleOR_163.Out", "box_ListAddToList_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_60_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|850346931", "850346931", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_60.Removed", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2119213325", "2119213325", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_26.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1559178343", "1559178343", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_26.Out", "SpawnFaith_3", clone:GetLuaBox(), self);
    self:SpawnFaith_3();
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|601919275", "601919275", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_124.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|423134188", "423134188", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_124.Out", "SpawnFaith_10", clone:GetLuaBox(), self);
    self:SpawnFaith_10();
end;

function export:f_box_SetBoolean_v2_157_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_157_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|584305417", "584305417", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_157.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_ListReader_41_EndOfList()
    local params, l0, l1;
    params = self:OnEnter_box_ListReset_200();
    l0 = self.box_ListReader_41;
    l1 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|707904050", "707904050", "LT03_040_B10_Faith_Selector", "box_ListReader_41.EndOfList", "box_ListReset_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_41_Out()
    local params, l0, l1;
    self:OnExit_box_ListReader_41_Out();
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_ListReader_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|708245449", "708245449", "LT03_040_B10_Faith_Selector", "box_ListReader_41.Out", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1194708153", "1194708153", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_46.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|243590592", "243590592", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_46.Out", "SpawnFaith_1", clone:GetLuaBox(), self);
    self:SpawnFaith_1();
end;

function export:f_box_ListReset_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_162();
    l0 = self.box_IndexList_v2_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|734565954", "734565954", "LT03_040_B10_Faith_Selector", "box_ListReset_1.Out", "box_IndexList_v2_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_9_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1047313738", "1047313738", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_9.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1233116828", "1233116828", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_130.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1411938897", "1411938897", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_130.Out", "DespawnFaith_6", clone:GetLuaBox(), self);
    self:DespawnFaith_6();
end;

function export:f_box_SetBoolean_v2_180_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_180_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_171();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1561976121", "1561976121", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_180.Out", "box_OutputOrder_v2_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1519748094", "1519748094", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_119.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_OutputOrder_v2_119_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1835130794", "1835130794", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_119.Out", "SpawnFaith_10", clone:GetLuaBox(), self);
    self:SpawnFaith_10();
end;

function export:f_box_Compare_Entity_29_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|331030064", "331030064", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_29.Equal", "box_OutputOrder_v2_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1305823174", "1305823174", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_148.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_148_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|755993373", "755993373", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_148.Out", "DespawnFaith_5", clone:GetLuaBox(), self);
    self:DespawnFaith_5();
end;

function export:f_box_Compare_Entity_33_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|201617449", "201617449", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_33.Equal", "box_OutputOrder_v2_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_156_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_205();
    l0 = self.box_MultipleAND_v2_156;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1176269440", "1176269440", "LT03_040_B10_Faith_Selector", "box_MultipleAND_v2_156.Out", "box_Simple_Node_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_95_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_95_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReset_96();
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1787309787", "1787309787", "LT03_040_B10_Faith_Selector", "box_SetInteger_v2_95.Out", "box_ListReset_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_140_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|255665676", "255665676", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_140.Added", "box_OutputOrder_v2_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_191_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|78616795", "78616795", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_191.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_191_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|648037389", "648037389", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_191.Out", "SpawnFaith_6", clone:GetLuaBox(), self);
    self:SpawnFaith_6();
end;

function export:f_box_SetBoolean_v2_213_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_213_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2114149638", "2114149638", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_213.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 10);
end;

function export:f_box_Compare_Entity_45_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1556200711", "1556200711", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_45.Equal", "box_OutputOrder_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_133();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|344417147", "344417147", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_137();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1914246381", "1914246381", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_136();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|445371339", "445371339", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_134();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|304947158", "304947158", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_132();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1159844255", "1159844255", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_135();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|24266909", "24266909", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_138();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|34670527", "34670527", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_114();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1704797562", "1704797562", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_116();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|252382663", "252382663", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_111();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1062667231", "1062667231", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_212();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|983339830", "983339830", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_139.Out", "box_Compare_Boolean_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_73();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1478598650", "1478598650", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_71();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1652488207", "1652488207", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_72();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|16066784", "16066784", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_68();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2060647846", "2060647846", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_66();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|491732597", "491732597", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_69();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|104638", "104638", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_70();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1798787664", "1798787664", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_2();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|732181236", "732181236", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_101();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1287241791", "1287241791", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_22();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|772105989", "772105989", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_168_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_168_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1894391416", "1894391416", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_168.Out", "box_OutputOrder_v2_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1485505369", "1485505369", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_47.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1954454453", "1954454453", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_47.Out", "SpawnFaith_2", clone:GetLuaBox(), self);
    self:SpawnFaith_2();
end;

function export:f_box_Compare_Boolean_137_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_142();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|878121752", "878121752", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_137.A_is_True", "box_OutputOrder_v2_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1238690382", "1238690382", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_107.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|92996069", "92996069", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_107.Out", "SpawnFaith_9", clone:GetLuaBox(), self);
    self:SpawnFaith_9();
end;

function export:f_box_Compare_Entity_40_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_126();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|106843543", "106843543", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_40.Equal", "box_OutputOrder_v2_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_25_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1668804370", "1668804370", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_25.Out", "box_OutputOrder_v2_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListReset_200_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_199();
    l0 = self.box_IndexList_v2_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1003341802", "1003341802", "LT03_040_B10_Faith_Selector", "box_ListReset_200.Out", "box_IndexList_v2_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_24_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1312332967", "1312332967", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_24.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 8);
end;

function export:f_box_SetBoolean_v2_97_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_97_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1419052325", "1419052325", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_97.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 7);
end;

function export:f_box_OutputOrder_v2_185_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1023162622", "1023162622", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_185.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_185_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1263691984", "1263691984", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_185.Out", "SpawnFaith_2", clone:GetLuaBox(), self);
    self:SpawnFaith_2();
end;

function export:f_box_SetBoolean_v2_173_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_173_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_191();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1280109210", "1280109210", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_173.Out", "box_OutputOrder_v2_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_188_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_180();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|960238849", "960238849", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_188.Equal", "box_SetBoolean_v2_180.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_208_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = self.box_MultipleOR_208;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|323164991", "323164991", "LT03_040_B10_Faith_Selector", "box_MultipleOR_208.Out", "box_Simple_Node_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1843940950", "1843940950", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_27.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1731981580", "1731981580", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_27.Out", "SpawnFaith_2", clone:GetLuaBox(), self);
    self:SpawnFaith_2();
end;

function export:f_box_Compare_Entity_99_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_100();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|970743717", "970743717", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_99.Equal", "box_SetBoolean_v2_100.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_7();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|181225229", "181225229", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_7.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_13();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|181973654", "181973654", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_13.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1113866729", "1113866729", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_9.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_19();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|874911677", "874911677", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_19.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_14();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|263173112", "263173112", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_14.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1828818152", "1828818152", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_11.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_18();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1243038074", "1243038074", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_18.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_39();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1169050865", "1169050865", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_39.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_24();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|220577160", "220577160", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_24.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_118();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|707853569", "707853569", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_118.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|86502246", "86502246", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_112.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2108536778", "2108536778", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_112.Out", "DespawnFaith_10", clone:GetLuaBox(), self);
    self:DespawnFaith_10();
end;

function export:f_box_Compare_Entity_189_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_177();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|830283097", "830283097", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_189.Equal", "box_SetBoolean_v2_177.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_72_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_64();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|651599722", "651599722", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_72.Equal", "box_SetBoolean_v2_64.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|537243639", "537243639", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_142.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_142_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1636139072", "1636139072", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_142.Out", "DespawnFaith_2", clone:GetLuaBox(), self);
    self:DespawnFaith_2();
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|440472671", "440472671", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_81.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|15719330", "15719330", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_81.Out", "SpawnFaith_7", clone:GetLuaBox(), self);
    self:SpawnFaith_7();
end;

function export:f_box_OutputOrder_v2_171_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1922688007", "1922688007", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_171.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_171_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|978820990", "978820990", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_171.Out", "SpawnFaith_3", clone:GetLuaBox(), self);
    self:SpawnFaith_3();
end;

function export:f_box_Compare_Boolean_133_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|150480155", "150480155", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_133.A_is_True", "box_OutputOrder_v2_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_75_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|497026647", "497026647", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_75.Removed", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_62_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|412861153", "412861153", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_62.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1068005148", "1068005148", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_80.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1460627308", "1460627308", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_80.Out", "SpawnFaith_6", clone:GetLuaBox(), self);
    self:SpawnFaith_6();
end;

function export:f_box_Compare_Boolean_136_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_146();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1001386983", "1001386983", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_136.A_is_True", "box_OutputOrder_v2_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListAddToList_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1660542985", "1660542985", "LT03_040_B10_Faith_Selector", "box_ListAddToList_121.Out", "box_MultipleOR_166.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1733493642", "1733493642", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_53.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|223204675", "223204675", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_53.Out", "SpawnFaith_7", clone:GetLuaBox(), self);
    self:SpawnFaith_7();
end;

function export:f_box_ListWriter_v2_90_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_59();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1250514788", "1250514788", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_90.Added", "box_ListWriter_v2_59.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_117_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|585351097", "585351097", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_117.Removed", "box_OutputOrder_v2_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|535644923", "535644923", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_125.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1539837414", "1539837414", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_125.Out", "DespawnFaith_1", clone:GetLuaBox(), self);
    self:DespawnFaith_1();
end;

function export:f_box_SetBoolean_v2_100_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_100_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1700324737", "1700324737", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_100.Out", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_177_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_177_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_185();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1832695196", "1832695196", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_177.Out", "box_OutputOrder_v2_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_15_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1217797047", "1217797047", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_15.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1266717888", "1266717888", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_103.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1924226264", "1924226264", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_103.Out", "SpawnFaith_8", clone:GetLuaBox(), self);
    self:SpawnFaith_8();
end;

function export:f_box_IndexList_v2_162_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_162;
    l1 = self.box_MultipleOR_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|912184981", "912184981", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_162.Output", "box_MultipleOR_163.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_162_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_162;
    l1 = self.box_MultipleOR_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1092533915", "1092533915", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_162.Output", "box_MultipleOR_163.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_162_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_162;
    l1 = self.box_MultipleOR_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|8323805", "8323805", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_162.Output", "box_MultipleOR_164.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_186();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|436310401", "436310401", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_189();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|681230420", "681230420", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_188();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|128997050", "128997050", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_188.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_190();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|100336742", "100336742", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_174();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|575164531", "575164531", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_181();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1646512749", "1646512749", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_179();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2053427920", "2053427920", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_99();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|391338982", "391338982", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_102();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|527243500", "527243500", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_43();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|738023097", "738023097", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_176.Out", "box_Compare_Entity_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_211_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_211_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1736295655", "1736295655", "LT03_040_B10_Faith_Selector", "box_IntegerArithmetics_v2_211.Out", "SpawnFaith_Start", clone:GetLuaBox(), self);
    self:SpawnFaith_Start();
end;

function export:f_box_ListAddToList_202_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2006356348", "2006356348", "LT03_040_B10_Faith_Selector", "box_ListAddToList_202.Out", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1940262819", "1940262819", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_184.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_184_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1911992678", "1911992678", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_184.Out", "SpawnFaith_5", clone:GetLuaBox(), self);
    self:SpawnFaith_5();
end;

function export:f_box_ListWriter_v2_91_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_60();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1559845420", "1559845420", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_91.Added", "box_ListWriter_v2_60.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_187_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1152216068", "1152216068", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_187.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_187_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1167569267", "1167569267", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_187.Out", "SpawnFaith_4", clone:GetLuaBox(), self);
    self:SpawnFaith_4();
end;

function export:f_box_MultipleOR_210_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListGetRandom_175();
    l0 = self.box_MultipleOR_210;
    l1 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2143991159", "2143991159", "LT03_040_B10_Faith_Selector", "box_MultipleOR_210.Out", "box_ListGetRandom_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_161_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_161_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1591423196", "1591423196", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_161.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_MultipleOR_201_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListAddToList_202();
    l0 = self.box_MultipleOR_201;
    l1 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1305729072", "1305729072", "LT03_040_B10_Faith_Selector", "box_MultipleOR_201.Out", "box_ListAddToList_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_31_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|12469868", "12469868", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_31.Equal", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_207_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_192();
    l0 = self.box_IndexList_v2_207;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1059812108", "1059812108", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_207.Output", "box_Compare_Integers_192.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_207_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_207;
    l1 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|899906207", "899906207", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_207.Output", "box_MultipleOR_208.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_207_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_207;
    l1 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1461889582", "1461889582", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_207.Output", "box_MultipleOR_208.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1030068528", "1030068528", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_110.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1286993059", "1286993059", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_110.Out", "SpawnFaith_8", clone:GetLuaBox(), self);
    self:SpawnFaith_8();
end;

function export:f_box_MultipleAND_v2_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_95();
    l0 = self.box_MultipleAND_v2_12;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1240841648", "1240841648", "LT03_040_B10_Faith_Selector", "box_MultipleAND_v2_12.Out", "box_SetInteger_v2_95.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_58_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1046658011", "1046658011", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_58.Removed", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|353618082", "353618082", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_21.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|863226798", "863226798", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_21.Out", "SpawnFaith_9", clone:GetLuaBox(), self);
    self:SpawnFaith_9();
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1117571761", "1117571761", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_52.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1485192449", "1485192449", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_52.Out", "SpawnFaith_6", clone:GetLuaBox(), self);
    self:SpawnFaith_6();
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|926423777", "926423777", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_149.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1056093847", "1056093847", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_149.Out", "DespawnFaith_6", clone:GetLuaBox(), self);
    self:DespawnFaith_6();
end;

function export:f_box_SetBoolean_v2_4_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2021513470", "2021513470", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_4.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_111_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|744594916", "744594916", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_111.A_is_True", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_153_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_153_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|858717920", "858717920", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_153.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Compare_Entity_73_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_63();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1636478606", "1636478606", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_73.Equal", "box_SetBoolean_v2_63.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_102_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_25();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|458920801", "458920801", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_102.Equal", "box_SetBoolean_v2_25.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_65_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1335710509", "1335710509", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_65.Out", "box_OutputOrder_v2_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_152_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_154();
    l0 = self.box_Delay_v5_152;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1466397116", "1466397116", "LT03_040_B10_Faith_Selector", "box_Delay_v5_152.TimeElapsed", "box_OutputOrder_v2_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_159_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_159_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1357076563", "1357076563", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_159.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 4);
end;

function export:f_box_Compare_Entity_34_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|751083320", "751083320", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_34.Equal", "box_OutputOrder_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|409704285", "409704285", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_86.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1650300722", "1650300722", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_86.Out", "SpawnFaith_10", clone:GetLuaBox(), self);
    self:SpawnFaith_10();
end;

function export:f_box_ListWriter_v2_88_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_49();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|898688133", "898688133", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_88.Added", "box_ListWriter_v2_49.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_84_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_32();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1690211354", "1690211354", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_84.Added", "box_ListWriter_v2_32.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|5001739", "5001739", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_127.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1429711796", "1429711796", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_127.Out", "DespawnFaith_3", clone:GetLuaBox(), self);
    self:DespawnFaith_3();
end;

function export:f_box_SetBoolean_v2_11_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2000761870", "2000761870", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_11.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 5);
end;

function export:f_box_Compare_Entity_30_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1954437868", "1954437868", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_30.Equal", "box_OutputOrder_v2_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|111309838", "111309838", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_42.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|640420617", "640420617", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_42.Out", "DespawnFaith_10", clone:GetLuaBox(), self);
    self:DespawnFaith_10();
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1470617308", "1470617308", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_165.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_165_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|658302119", "658302119", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_165.Out", "SpawnFaith_7", clone:GetLuaBox(), self);
    self:SpawnFaith_7();
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1772963631", "1772963631", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_50.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1876034329", "1876034329", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_50.Out", "SpawnFaith_4", clone:GetLuaBox(), self);
    self:SpawnFaith_4();
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1099615467", "1099615467", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_131.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|20073725", "20073725", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_131.Out", "DespawnFaith_7", clone:GetLuaBox(), self);
    self:DespawnFaith_7();
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|458642597", "458642597", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_113.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1670224448", "1670224448", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_113.Out", "DespawnFaith_8", clone:GetLuaBox(), self);
    self:DespawnFaith_8();
end;

function export:f_box_MultipleOR_143_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_144();
    l0 = self.box_MultipleOR_143;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|748770256", "748770256", "LT03_040_B10_Faith_Selector", "box_MultipleOR_143.Out", "box_Compare_Boolean_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_32_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|971999557", "971999557", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_32.Removed", "box_OutputOrder_v2_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_179_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_168();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|276861252", "276861252", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_179.Equal", "box_SetBoolean_v2_168.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_178_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_178_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_172();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2091765883", "2091765883", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_178.Out", "box_OutputOrder_v2_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_199_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_199;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|840622587", "840622587", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_199.Output", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_199_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_199;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|369931201", "369931201", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_199.Output", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_199_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_199;
    l1 = self.box_MultipleOR_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2018864069", "2018864069", "LT03_040_B10_Faith_Selector", "box_IndexList_v2_199.Output", "box_MultipleOR_201.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_16_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_87();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1025338300", "1025338300", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_87.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_88();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1798269385", "1798269385", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_88.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_89();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1484587203", "1484587203", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_89.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_90();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1088939009", "1088939009", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_90.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_91();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|648678286", "648678286", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_91.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_92();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|777659984", "777659984", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_92.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_93();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1956528019", "1956528019", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_93.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_84();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|245240196", "245240196", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_84.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_120();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1570205802", "1570205802", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_120.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_106();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1197897338", "1197897338", "LT03_040_B10_Faith_Selector", "box_Random_16.Output", "box_ListWriter_v2_106.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_146_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1930784381", "1930784381", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_146.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_146_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1873416665", "1873416665", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_146.Out", "DespawnFaith_3", clone:GetLuaBox(), self);
    self:DespawnFaith_3();
end;

function export:f_box_ListGetRandom_94_Out()
    local params, l0;
    self:OnExit_box_ListGetRandom_94_Out();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_28();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|726863589", "726863589", "LT03_040_B10_Faith_Selector", "box_ListGetRandom_94.Out", "box_ListWriter_v2_28.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_37_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1123980292", "1123980292", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_37.Equal", "box_OutputOrder_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|50280399", "50280399", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_98.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1094695093", "1094695093", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_98.Out", "DespawnFaith_9", clone:GetLuaBox(), self);
    self:DespawnFaith_9();
end;

function export:f_box_Compare_Entity_186_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_178();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1775330538", "1775330538", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_186.Equal", "box_SetBoolean_v2_178.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|801150196", "801150196", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_51.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1019020726", "1019020726", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_51.Out", "SpawnFaith_5", clone:GetLuaBox(), self);
    self:SpawnFaith_5();
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1609378678", "1609378678", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_74.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|894905762", "894905762", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_74.Out", "DespawnFaith_Start", clone:GetLuaBox(), self);
    self:DespawnFaith_Start();
end;

function export:f_box_SetBoolean_v2_67_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_67_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|984506731", "984506731", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_67.Out", "box_OutputOrder_v2_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_101_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|92582011", "92582011", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_101.Equal", "box_SetBoolean_v2_4.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_92_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_61();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1585756420", "1585756420", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_92.Added", "box_ListWriter_v2_61.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_69_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_67();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1977642969", "1977642969", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_69.Equal", "box_SetBoolean_v2_67.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1601760216", "1601760216", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_3.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2066924516", "2066924516", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_3.Out", "SpawnFaith_8", clone:GetLuaBox(), self);
    self:SpawnFaith_8();
end;

function export:f_box_SetBoolean_v2_160_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_160_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|987740697", "987740697", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_160.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 5);
end;

function export:f_box_SetBoolean_v2_85_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_85_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1776575471", "1776575471", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_85.Out", "box_OutputOrder_v2_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_43_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_85();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1219192355", "1219192355", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_43.Equal", "box_SetBoolean_v2_85.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_22_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_123();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|590416070", "590416070", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_22.Equal", "box_SetBoolean_v2_123.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_138_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|426992446", "426992446", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_138.A_is_True", "box_OutputOrder_v2_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_192_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_211();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1655252180", "1655252180", "LT03_040_B10_Faith_Selector", "box_Compare_Integers_192.A_eq_B", "box_IntegerArithmetics_v2_211.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_192_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2138463690", "2138463690", "LT03_040_B10_Faith_Selector", "box_Compare_Integers_192.A_ne_B", "box_MultipleOR_208.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_155_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_155_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_156();
    l0 = self.box_MultipleAND_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1174251744", "1174251744", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_155.Out", "box_MultipleAND_v2_156.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 6);
end;

function export:f_box_SetBoolean_v2_19_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1138773840", "1138773840", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_19.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|83048712", "83048712", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_5.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1287175427", "1287175427", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_5.Out", "SpawnFaith_1", clone:GetLuaBox(), self);
    self:SpawnFaith_1();
end;

function export:f_box_ListWriter_v2_87_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_56();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|953665504", "953665504", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_87.Added", "box_ListWriter_v2_56.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_93_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_75();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|742924683", "742924683", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_93.Added", "box_ListWriter_v2_75.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_209_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_170();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|236955631", "236955631", "LT03_040_B10_Faith_Selector", "box_IsValueNil_v3_209.No", "box_SetEntity_v2_170.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_209_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1396040820", "1396040820", "LT03_040_B10_Faith_Selector", "box_IsValueNil_v3_209.Yes", "box_MultipleOR_210.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|937488333", "937488333", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_14.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 4);
end;

function export:f_box_SetBoolean_v2_63_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1870071885", "1870071885", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_63.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_66_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_65();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1010349197", "1010349197", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_66.Equal", "box_SetBoolean_v2_65.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_64_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|286450725", "286450725", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_64.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_109_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_119();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1651078437", "1651078437", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_109.Removed", "box_OutputOrder_v2_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1460547759", "1460547759", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_150.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|700424044", "700424044", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_150.Out", "DespawnFaith_7", clone:GetLuaBox(), self);
    self:DespawnFaith_7();
end;

function export:f_box_Compare_Entity_68_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_54();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|401350136", "401350136", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_68.Equal", "box_SetBoolean_v2_54.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_54_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1888367907", "1888367907", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_54.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_31();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1942153889", "1942153889", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_40();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2003268398", "2003268398", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_37();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|932841580", "932841580", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_34();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2136722614", "2136722614", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_30();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|770697888", "770697888", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_29();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|353744939", "353744939", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_33();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|318331657", "318331657", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_20();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2056885101", "2056885101", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_45();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1848508661", "1848508661", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_23();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|832250810", "832250810", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_38.Out", "box_Compare_Entity_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|786865262", "786865262", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_48.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|956394590", "956394590", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_48.Out", "SpawnFaith_3", clone:GetLuaBox(), self);
    self:SpawnFaith_3();
end;

function export:f_box_ListWriter_v2_169_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_196();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1275045189", "1275045189", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_169.Removed", "box_SetBoolean_v2_196.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_158();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|708817359", "708817359", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_158.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_153();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1239861848", "1239861848", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_153.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_157();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|836254550", "836254550", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_157.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_161();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1611021560", "1611021560", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_161.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_159();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1967262757", "1967262757", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_159.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_160();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|683324811", "683324811", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_160.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_155();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|105578151", "105578151", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_155.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_97();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1376556302", "1376556302", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_97.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_108();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|667057813", "667057813", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_108.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_105();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1955124700", "1955124700", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_105.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_213();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1594039409", "1594039409", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_154.Out", "box_SetBoolean_v2_213.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_151();
    l0 = self.box_MultipleOR_55;
    l1 = self.box_Delay_v5_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|40742109", "40742109", "LT03_040_B10_Faith_Selector", "box_MultipleOR_55.Out", "box_Delay_v5_151.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1595997513", "1595997513", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_147.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|169319961", "169319961", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_147.Out", "DespawnFaith_4", clone:GetLuaBox(), self);
    self:DespawnFaith_4();
end;

function export:f_box_SetBoolean_v2_118_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_118_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|439070567", "439070567", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_118.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 9);
end;

function export:f_box_IntegerArithmetics_v2_36_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1967329192", "1967329192", "LT03_040_B10_Faith_Selector", "box_IntegerArithmetics_v2_36.Out", "box_Delay_v5_44.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1986984449", "1986984449", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_83.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1183583925", "1183583925", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_83.Out", "DespawnFaith_8", clone:GetLuaBox(), self);
    self:DespawnFaith_8();
end;

function export:f_box_SetBoolean_v2_39_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|560338455", "560338455", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_39.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 7);
end;

function export:f_box_ListAddToList_204_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|119655242", "119655242", "LT03_040_B10_Faith_Selector", "box_ListAddToList_204.Out", "box_MultipleOR_166.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|721152920", "721152920", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_10.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1667055355", "1667055355", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_10.Out", "SpawnFaith_4", clone:GetLuaBox(), self);
    self:SpawnFaith_4();
end;

function export:f_box_ListWriter_v2_106_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_109();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1614156678", "1614156678", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_106.Added", "box_ListWriter_v2_109.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_183_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_183_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|861677769", "861677769", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_183.Out", "box_OutputOrder_v2_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|594547115", "594547115", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_115.Out", "box_MultipleOR_143.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|87295446", "87295446", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_115.Out", "DespawnFaith_9", clone:GetLuaBox(), self);
    self:DespawnFaith_9();
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1084007034", "1084007034", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_122.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1272979306", "1272979306", "LT03_040_B10_Faith_Selector", "box_OutputOrder_v2_122.Out", "SpawnFaith_9", clone:GetLuaBox(), self);
    self:SpawnFaith_9();
end;

function export:f_box_SetBoolean_v2_123_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_123_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1639276521", "1639276521", "LT03_040_B10_Faith_Selector", "box_SetBoolean_v2_123.Out", "box_OutputOrder_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_135_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1383816550", "1383816550", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_135.A_is_True", "box_OutputOrder_v2_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_132_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_148();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1416215543", "1416215543", "LT03_040_B10_Faith_Selector", "box_Compare_Boolean_132.A_is_True", "box_OutputOrder_v2_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_120_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_117();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|193981830", "193981830", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_120.Added", "box_ListWriter_v2_117.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_36();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1014983817", "1014983817", "LT03_040_B10_Faith_Selector", "box_MultipleOR_6.Out", "box_IntegerArithmetics_v2_36.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_20_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1961735916", "1961735916", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_20.Equal", "box_OutputOrder_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_181_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_173();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|632293101", "632293101", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_181.Equal", "box_SetBoolean_v2_173.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_49_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1737168320", "1737168320", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_49.Removed", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_174_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_183();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1481828919", "1481828919", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_174.Equal", "box_SetBoolean_v2_183.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_56_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2009848108", "2009848108", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_56.Removed", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_70_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_57();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|991815781", "991815781", "LT03_040_B10_Faith_Selector", "box_Compare_Entity_70.Equal", "box_SetBoolean_v2_57.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_59_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1042138348", "1042138348", "LT03_040_B10_Faith_Selector", "box_ListWriter_v2_59.Removed", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|@Despawn_Clones");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_141_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|@RealFaith");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|@Reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_77_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|@Select_Random");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_76_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|@Teleport_Faith");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_205_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|3177946");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|10169721");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_158_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|11469795");
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
                [0] = self.f_box_OutputOrder_v2_126_Out_0,
                [1] = self.f_box_OutputOrder_v2_126_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_151()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|16499504");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_190_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_4,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|19537981");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_116_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_9,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|19925020");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|22485549");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListGetRandom_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListGetRandom_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|24143234");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListGetRandom_175_Out,
    });
    params = {
        -- Input,
        [0] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|30316774");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_167_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|31692488");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_144_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.bFaithTeleport,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|42535597");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_114_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_8,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|44358182");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_28_Removed,
    });
    params = {
        -- Data,
        [0] = self.eRealFaith,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|50043481");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|72350978");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_2_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_8,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|74256600");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|80386797");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_196_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|86026933");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_71_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|104820647");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_134_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_4,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|111372138");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_89_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_3,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|146862167");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|159012444");
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

function export:OnEnter_box_Compare_Integers_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|168138966");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_35_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_35_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iFaithSpawned,
        -- B,
        [1] = Globals.LT03_040_B10.iFaithNumber,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|168197969");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_23_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_10,
    };
    return params;
end;

function export:OnEnter_box_ListAddToList_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListAddToList_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|246823762");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListAddToList_203_Out,
    });
    params = {
        -- ListA,
        [0] = Globals.LT03_040_B10.Faith_Circle,
        -- ListB,
        [1] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|265823056");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|270893827");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_61_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_6,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|281044360");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_170_Out,
    });
    params = {
        -- Entity,
        [0] = self.eRealFaith,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|292881033");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|313966794");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|320199832");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_212_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_Start,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|323527095");
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
                [0] = self.f_box_OutputOrder_v2_172_Out_0,
                [1] = self.f_box_OutputOrder_v2_172_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListReset_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|333446699");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_96_Out,
    });
    params = {
        -- List,
        [0] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|359461240");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_60_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_5,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|388712278");
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

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|396915209");
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
                [0] = self.f_box_OutputOrder_v2_124_Out_0,
                [1] = self.f_box_OutputOrder_v2_124_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|418571747");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_157_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListReader_41()
    local params;
    params = {
        -- Input,
        [1] = Globals.LT03_040_B10.Faith_Visible,
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|421326899");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = self.eRealFaith,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|424180225");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListReset_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|432665635");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_1_Out,
    });
    params = {
        -- List,
        [0] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|454486956");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_9_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|462588900");
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

function export:OnEnter_box_SetBoolean_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|473901029");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_180_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|512066063");
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
                [0] = self.f_box_OutputOrder_v2_119_Out_0,
                [1] = self.f_box_OutputOrder_v2_119_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|532872509");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_29_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|535295246");
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
                [0] = self.f_box_OutputOrder_v2_148_Out_0,
                [1] = self.f_box_OutputOrder_v2_148_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|584454748");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_33_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_7,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_156()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|611684801");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_95_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|666697437");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_140_Added,
    });
    params = {
        -- Data,
        [0] = self.eOldFaith,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|679372624");
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
                [0] = self.f_box_OutputOrder_v2_191_Out_0,
                [1] = self.f_box_OutputOrder_v2_191_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|692126626");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_213_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|693464300");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_45_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_9,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|695789038");
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
                [0] = self.f_box_OutputOrder_v2_139_Out_0,
                [1] = self.f_box_OutputOrder_v2_139_Out_1,
                [2] = self.f_box_OutputOrder_v2_139_Out_2,
                [3] = self.f_box_OutputOrder_v2_139_Out_3,
                [4] = self.f_box_OutputOrder_v2_139_Out_4,
                [5] = self.f_box_OutputOrder_v2_139_Out_5,
                [6] = self.f_box_OutputOrder_v2_139_Out_6,
                [7] = self.f_box_OutputOrder_v2_139_Out_7,
                [8] = self.f_box_OutputOrder_v2_139_Out_8,
                [9] = self.f_box_OutputOrder_v2_139_Out_9,
                [10] = self.f_box_OutputOrder_v2_139_Out_10,
            },
            count = 11,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|708070722");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
        },
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
                [5] = self.f_box_OutputOrder_v2_8_Out_5,
                [6] = self.f_box_OutputOrder_v2_8_Out_6,
                [7] = self.f_box_OutputOrder_v2_8_Out_7,
                [8] = self.f_box_OutputOrder_v2_8_Out_8,
                [9] = self.f_box_OutputOrder_v2_8_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|713171653");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_168_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|714977441");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|735001815");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_137_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|769355425");
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

function export:OnEnter_box_Compare_Entity_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|770827587");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_40_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_2,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|778284171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListReset_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|779826966");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_200_Out,
    });
    params = {
        -- List,
        [0] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|783613671");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|785248773");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_97_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|796836410");
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
                [0] = self.f_box_OutputOrder_v2_185_Out_0,
                [1] = self.f_box_OutputOrder_v2_185_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|797170356");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_173_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|797248076");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_188_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|806927022");
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

function export:OnEnter_box_Compare_Entity_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|816648558");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_99_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|858003091");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
                [5] = self.f_box_OutputOrder_v2_17_Out_5,
                [6] = self.f_box_OutputOrder_v2_17_Out_6,
                [7] = self.f_box_OutputOrder_v2_17_Out_7,
                [8] = self.f_box_OutputOrder_v2_17_Out_8,
                [9] = self.f_box_OutputOrder_v2_17_Out_9,
            },
            count = 10,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|866561558");
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

function export:OnEnter_box_Compare_Entity_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|871967156");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_189_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|882023254");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_72_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|888615530");
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
                [0] = self.f_box_OutputOrder_v2_142_Out_0,
                [1] = self.f_box_OutputOrder_v2_142_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|894852617");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|899123837");
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
                [0] = self.f_box_OutputOrder_v2_171_Out_0,
                [1] = self.f_box_OutputOrder_v2_171_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|909439565");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_133_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_1,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|922033084");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_75_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_7,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|942668254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|969528616");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|972487863");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_136_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_3,
    };
    return params;
end;

function export:OnEnter_box_ListAddToList_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListAddToList_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|982828371");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListAddToList_121_Out,
    });
    params = {
        -- ListA,
        [0] = Globals.LT03_040_B10.Faith_Circle,
        -- ListB,
        [1] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|987006777");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|994296741");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_90_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_4,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|997112148");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_117_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_9,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1014752758");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1026359933");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_100_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1030456370");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_177_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1035379730");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1036290012");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_162()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1069620247");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
                [2] = self.f_box_OutputOrder_v2_176_Out_2,
                [3] = self.f_box_OutputOrder_v2_176_Out_3,
                [4] = self.f_box_OutputOrder_v2_176_Out_4,
                [5] = self.f_box_OutputOrder_v2_176_Out_5,
                [6] = self.f_box_OutputOrder_v2_176_Out_6,
                [7] = self.f_box_OutputOrder_v2_176_Out_7,
                [8] = self.f_box_OutputOrder_v2_176_Out_8,
                [9] = self.f_box_OutputOrder_v2_176_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1076813119");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_211_Out,
    });
    params = {
        -- A,
        [0] = self.iIntroCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ListAddToList_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListAddToList_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1088853652");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListAddToList_202_Out,
    });
    params = {
        -- ListA,
        [0] = Globals.LT03_040_B10.Faith_Random,
        -- ListB,
        [1] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1100699329");
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

function export:OnEnter_box_ListWriter_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1106693416");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_91_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_5,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1125427758");
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

function export:OnEnter_box_SetBoolean_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1149014616");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_161_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1200843548");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_31_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_1,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_207()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1215049035");
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

function export:OnEnter_box_MultipleAND_v2_12()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1259371686");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_58_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_3,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1265320585");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1267722641");
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

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1277795668");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1279991110");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1286290659");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_111_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_10,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1293564281");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_153_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1318082881");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_73_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1324890924");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_102_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_9,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1344342497");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_152()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1352050203");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_159_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1364119014");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_34_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1366675223");
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

function export:OnEnter_box_ListWriter_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1375931182");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_88_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_2,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1379044252");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_84_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_8,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1381957458");
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

function export:OnEnter_box_SetBoolean_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1388000843");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1402026216");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_30_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1415573113");
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

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1415822780");
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
                [0] = self.f_box_OutputOrder_v2_165_Out_0,
                [1] = self.f_box_OutputOrder_v2_165_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1439670392");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1450987358");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
                [1] = self.f_box_OutputOrder_v2_131_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1455279240");
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
                [0] = self.f_box_OutputOrder_v2_113_Out_0,
                [1] = self.f_box_OutputOrder_v2_113_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1491300851");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_32_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_8,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1495337461");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_179_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_7,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1498568486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_178_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_199()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_Random_16()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 10,
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1511628344");
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
                [0] = self.f_box_OutputOrder_v2_146_Out_0,
                [1] = self.f_box_OutputOrder_v2_146_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListGetRandom_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListGetRandom_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1513316320");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListGetRandom_94_Out,
    });
    params = {
        -- Input,
        [0] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1513892257");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_37_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1523117818");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
                [1] = self.f_box_OutputOrder_v2_98_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1568882307");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_186_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1579884688");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1582390037");
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

function export:OnEnter_box_SetBoolean_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1595998203");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1621885128");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_101_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_9,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1638246128");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_92_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_6,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1645620576");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_69_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1654313571");
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

function export:OnEnter_box_SetBoolean_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1662080202");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_160_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1662515464");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1676867016");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_43_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_10,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1690421737");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_22_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_10,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1696660155");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_138_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_7,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1724866181");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_192_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_192_A_ne_B,
    });
    params = {
        -- A,
        [0] = self.iIntroCounter,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1726513264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_155_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1729042050");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1736307363");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1741709759");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_87_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_1,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1750642803");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_93_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_7,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1756283924");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_209_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_209_Yes,
    });
    params = {
        -- ent,
        [4] = self.eRealFaith,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1758720530");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1770516551");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1775033185");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_66_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_5,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1779280833");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1792628466");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_109_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_10,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1811919650");
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

function export:OnEnter_box_Compare_Entity_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1858951565");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_68_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_4,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1860751482");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1866272362");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
                [3] = self.f_box_OutputOrder_v2_38_Out_3,
                [4] = self.f_box_OutputOrder_v2_38_Out_4,
                [5] = self.f_box_OutputOrder_v2_38_Out_5,
                [6] = self.f_box_OutputOrder_v2_38_Out_6,
                [7] = self.f_box_OutputOrder_v2_38_Out_7,
                [8] = self.f_box_OutputOrder_v2_38_Out_8,
                [9] = self.f_box_OutputOrder_v2_38_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1874699271");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1885690998");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_169_Removed,
    });
    params = {
        -- Data,
        [0] = self.eRealFaith,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1903356332");
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
                [0] = self.f_box_OutputOrder_v2_154_Out_0,
                [1] = self.f_box_OutputOrder_v2_154_Out_1,
                [2] = self.f_box_OutputOrder_v2_154_Out_2,
                [3] = self.f_box_OutputOrder_v2_154_Out_3,
                [4] = self.f_box_OutputOrder_v2_154_Out_4,
                [5] = self.f_box_OutputOrder_v2_154_Out_5,
                [6] = self.f_box_OutputOrder_v2_154_Out_6,
                [7] = self.f_box_OutputOrder_v2_154_Out_7,
                [8] = self.f_box_OutputOrder_v2_154_Out_8,
                [9] = self.f_box_OutputOrder_v2_154_Out_9,
                [10] = self.f_box_OutputOrder_v2_154_Out_10,
            },
            count = 11,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1947369404");
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
                [0] = self.f_box_OutputOrder_v2_147_Out_0,
                [1] = self.f_box_OutputOrder_v2_147_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1952969669");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_118_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1973912925");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_36_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.iFaithSpawned,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|1983154873");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2016237279");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListAddToList_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListAddToList_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2024087694");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListAddToList_204_Out,
    });
    params = {
        -- ListA,
        [0] = Globals.LT03_040_B10.Faith_Random,
        -- ListB,
        [1] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2049301226");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2063890896");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_106_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_10,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2064406135");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_183_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2069341167");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2073491215");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2075788789");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_123_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2077502157");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_135_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_6,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2077571642");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_132_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.RealFaith_5,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2082276565");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_120_Added,
    });
    params = {
        -- Data,
        [0] = self.Faith_9,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2098112800");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_20_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eEntityKilled,
        -- Entity2,
        [1] = self.Faith_8,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2109480184");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_181_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_6,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2113042344");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_49_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_2,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2118097896");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_174_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_5,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2134012008");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_56_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_1,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2137358539");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_70_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eRealFaith,
        -- Entity2,
        [1] = self.Faith_7,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Selector|2140362516");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_59_Removed,
    });
    params = {
        -- Data,
        [0] = self.Faith_4,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_7 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_158_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_9 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListGetRandom_175_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    self.eRealFaith = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_167_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_105_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_196_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.bActivateMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_170_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eOldFaith = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_57_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_7 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_157_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListReader_41_Out()
    local l0;
    l0 = self.box_ListReader_41;
    self.eEntityKilled = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_180_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_95_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iFaithSpawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_213_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_Start = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_168_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_7 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_9 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_9 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_8 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_173_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_8 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_177_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_8 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_211_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iIntroCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_161_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_9 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_153_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_5 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_159_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_5 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_178_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListGetRandom_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    self.eRealFaith = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_160_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_155_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_7 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_5 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_118_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iFaithSpawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_8 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_183_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_5 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_123_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.LT03_040_B10.RealFaith_10 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:SpawnFaith_1()
    
end;
function export:SpawnFaith_2()
    
end;
function export:SpawnFaith_3()
    
end;
function export:SpawnFaith_4()
    
end;
function export:SpawnFaith_5()
    
end;
function export:SpawnFaith_6()
    
end;
function export:SpawnFaith_7()
    
end;
function export:DespawnFaith_1()
    
end;
function export:DespawnFaith_2()
    
end;
function export:DespawnFaith_3()
    
end;
function export:DespawnFaith_4()
    
end;
function export:DespawnFaith_5()
    
end;
function export:DespawnFaith_6()
    
end;
function export:DespawnFaith_7()
    
end;
function export:SpawnFaith_8()
    
end;
function export:SpawnFaith_9()
    
end;
function export:SpawnFaith_10()
    
end;
function export:DespawnFaith_8()
    
end;
function export:DespawnFaith_9()
    
end;
function export:DespawnFaith_10()
    
end;
function export:SpawnFaith_Start()
    
end;
function export:DespawnFaith_Start()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Despawn_AllClones" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Despawn_Faith" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Select" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="DespawnFaith_1" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_10" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_2" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_3" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_4" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_5" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_6" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_7" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_8" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_9" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DespawnFaith_Start" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_1" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_10" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_2" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_3" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_4" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_5" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_6" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_7" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_8" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_9" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SpawnFaith_Start" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Faith_1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_10" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_4" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_5" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_6" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_7" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_8" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Faith_9" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
