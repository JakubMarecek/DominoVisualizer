LUAC[ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_040/lt03_040_b10.domino
-- User graph: LT03_040_B10_Faith_Enrage
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Prefab" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListReset.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInPrefab_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListGetRandom.lua");
        cboxRes:RegisterBox("Domino/System/ListLength_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFaithTarget.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3039872136.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2488407938.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1015279647.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3818598180.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3972484245.bnk]], "CSoundResource");
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Enrage.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Start_Enrage",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Enrage_Out",
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
                name = "Prefab",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
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
            [0] = {
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GetEntityInPrefab_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NoEntity",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ObjectName",
                type = "string",
            },
            [1] = {
                name = "PrefabEntity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "ObjectEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/ListLength_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetLength",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Empty",
                delayed = false,
            },
            [1] = {
                name = "NotEmpty",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Length",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SendEvent",
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
                name = "EventName",
                type = "string",
            },
            [1] = {
                name = "IntensityModifier",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/SetFaithTarget.lua")] = {
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
                name = "Entity",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_040_B10_Faith_Enrage";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage";
    self.Enrage_Out = DummyFunction;
    self.Out = DummyFunction;
    self.fBlendTime = 0;
    self.eFaithSpawner = nil;
    self.Faith_Spawned = {
    };
    self.eFaith = nil;
    self.eDialogPoint = nil;
    self.eLevitation_FX = nil;
    self.eCape_FX = nil;
    self.eHint_FX = nil;
    self.eRing_FX = nil;
    self.eAppear_FX = nil;
    self.eImpactFX_2 = nil;
    self.eProjectileFX_2 = nil;
    self.eImpactFX_3 = nil;
    self.eFaithAttackSTP = nil;
    self.iAttackNbr = 0;
    self.eImpactFX_1 = nil;
    self.eProjectileFX_3 = nil;
    self.eStimAttack_2 = nil;
    self.eStimAttack_3 = nil;
    self.eProjectileFX_1 = nil;
    self.eStimAttack_1 = nil;
    self.eFaithDisappear = nil;
    self.iFaithProgressManipulation = 0;
    self.eLight = nil;
    self.iCounterVO = 0;
    self.eKnockback_Stim = nil;
    self.eProximityTrigger = nil;
    self.box_Random_17 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|25001844");
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
        -- Out,
        [1] = self.f_box_Random_17_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_17_Output_0,
                [1] = self.f_box_Random_17_Output_1,
                [2] = self.f_box_Random_17_Output_2,
                [3] = self.f_box_Random_17_Output_3,
            },
            count = 4,
        },
    });
    self.box_GetEntityInPrefab_v2_47 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|56893589");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_47_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_47_Out,
    });
    self.box_GetEntityInPrefab_v2_108 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|64770086");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_108_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_108_Out,
    });
    self.box_IndexList_v2_84 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|76964339");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_84_Output_0,
                [1] = self.f_box_IndexList_v2_84_Output_1,
                [2] = self.f_box_IndexList_v2_84_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|79132020");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_PositionModifier_v2_77 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|101515157");
    l0:SetConnections({
    });
    self.box_Bind_v4_80 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|183591937");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_80_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_80_UnBound,
    });
    self.box_GetEntityInPrefab_v2_53 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|196439017");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_53_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_53_Out,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|214711361");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_Bind_v4_88 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|260099928");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_88_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_88_UnBound,
    });
    self.box_GetEntityInPrefab_v2_29 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|334779910");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_29_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_29_Out,
    });
    self.box_Bind_v4_92 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|334934544");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_92_Bound,
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|380576069");
    l0:SetConnections({
    });
    self.box_GetEntityInPrefab_v2_42 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|384211454");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_42_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_42_Out,
    });
    self.box_HealthListener_v6_20 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|464821548");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_20_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_20_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_20_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_20_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_20_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_20_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_20_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_20_Revived,
    });
    self.box_GetEntityInPrefab_v2_31 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|518684960");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_31_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_31_Out,
    });
    self.box_PositionModifier_v2_78 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|533707758");
    l0:SetConnections({
    });
    self.box_GetEntityInPrefab_v2_30 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|572343686");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_30_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_30_Out,
    });
    self.box_GetEntityInPrefab_v2_11 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|626486301");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_11_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_11_Out,
    });
    self.box_ProximityTrigger_v2_112 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|634151680");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_112_Disabled,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_112_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_112_OnOccupied,
    });
    self.box_GetEntityInPrefab_v2_83 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|658417682");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_83_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_83_Out,
    });
    self.box_MultipleOR_114 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|675314009");
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
        [0] = self.f_box_MultipleOR_114_Out,
    });
    self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|693211793");
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
        [0] = self.f_box_MultipleOR_111_Out,
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|718528902");
    l0:SetConnections({
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|749973844");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_33_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_33_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_33_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_33_Success,
    });
    self.box_GetEntityInPrefab_v2_101 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|781037173");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_101_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_101_Out,
    });
    self.box_GetEntityInPrefab_v2_10 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|820848988");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_10_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_10_Out,
    });
    self.box_GetEntityInPrefab_v2_94 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|901541696");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_94_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_94_Out,
    });
    self.box_BindMarkerOverHead_v2_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|957227625");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_3_Out,
    });
    self.box_Bind_v4_45 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|970029785");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_45_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_45_UnBound,
    });
    self.box_Bind_v4_93 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|978883931");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_93_Bound,
    });
    self.box_Delay_v5_100 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|997370452");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_100_TimeElapsed,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1022692578");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_GetEntityInPrefab_v2_91 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1083149373");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_91_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_91_Out,
    });
    self.box_ListReader_35 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1108890861");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_35_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_35_Out,
    });
    self.box_PositionModifier_v2_59 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1129773266");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_59_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_59_StartOut,
    });
    self.box_Delay_v5_115 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1149762530");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_115_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_115_TimeElapsed,
    });
    self.box_GetEntityInPrefab_v2_41 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1198343233");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_41_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_41_Out,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1306251476");
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
    self.box_PlayDialog_v6_27 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1310996681");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1394028634");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_86 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1438736393");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_86_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_86_StartOut,
    });
    self.box_PositionModifier_v2_74 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1577689645");
    l0:SetConnections({
    });
    self.box_Delay_v5_113 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1581443302");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_113_TimeElapsed,
    });
    self.box_GetEntityInPrefab_v2_5 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1585202023");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_5_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_5_Out,
    });
    self.box_Bind_v4_48 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1655331074");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_48_Bound,
    });
    self.box_PositionModifier_v2_52 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1689472109");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_52_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_52_StartOut,
    });
    self.box_GetEntityInPrefab_v2_106 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1694519282");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_106_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_106_Out,
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1872321562");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_36_Started,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_36_StartedPriorityFailed,
    });
    self.box_EntityStatusListener_4 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1887223912");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_4_Loaded,
    });
    self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1900833572");
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
        [0] = self.f_box_MultipleOR_105_Out,
    });
    self.box_GetEntityInPrefab_v2_34 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1938118891");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_34_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_34_Out,
    });
    self.box_GetEntityInPrefab_v2_9 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1973011357");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_9_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_9_Out,
    });
    self.box_ContextualActionListener_79 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2088577455");
    l0:SetConnections({
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_79_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_79_Markup2,
    });
    self.box_GetEntityInPrefab_v2_23 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2138989520");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_23_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_23_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_30();
    l0 = self.box_GetEntityInPrefab_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1213607970", "1213607970", "LT03_040_B10_Faith_Enrage", "In", "box_GetEntityInPrefab_v2_30.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:Start_Enrage()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1333971603", "1333971603", "LT03_040_B10_Faith_Enrage", "Start_Enrage", "box_ParticleSystem_v3_7.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_102_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_2();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1442495999", "1442495999", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_102.Out", "box_Compare_Floats_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_FloatArithmetics_v2_1();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|548678609", "548678609", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_102.Out", "box_FloatArithmetics_v2_1.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_54();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1319395679", "1319395679", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_25.Out", "box_HealthModifier_v2_54.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1491225566", "1491225566", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_25.Out", "box_Delay_v5_18.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_ProximityTrigger_v2_112();
    l0 = self.box_ProximityTrigger_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1159906131", "1159906131", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_25.Out", "box_ProximityTrigger_v2_112.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|326427534", "326427534", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_89.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_IsValueNil_v3_96();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|333983277", "333983277", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_89.Out", "box_IsValueNil_v3_96.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_109();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1168035929", "1168035929", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_55.Out", "box_GetPlayerGroup_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GetLocalPlayer_v2_95();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1404595622", "1404595622", "LT03_040_B10_Faith_Enrage", "box_Simple_Node_55.Out", "box_GetLocalPlayer_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_32();
    l0 = self.box_Random_17;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2007276014", "2007276014", "LT03_040_B10_Faith_Enrage", "box_Random_17.Out", "box_IntegerArithmetics_v2_32.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_17_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_Random_17;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2104070062", "2104070062", "LT03_040_B10_Faith_Enrage", "box_Random_17.Output", "box_PlayDialog_v6_27.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_17_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_Random_17;
    l1 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|349050827", "349050827", "LT03_040_B10_Faith_Enrage", "box_Random_17.Output", "box_PlayDialog_v6_21.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_17_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Random_17;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1226466477", "1226466477", "LT03_040_B10_Faith_Enrage", "box_Random_17.Output", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_17_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Random_17;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2118115276", "2118115276", "LT03_040_B10_Faith_Enrage", "box_Random_17.Output", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_104_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_104_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1311511555", "1311511555", "LT03_040_B10_Faith_Enrage", "box_SetEntity_v2_104.Out", "box_MultipleOR_105.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetEntityInPrefab_v2_47_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_47_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_101();
    l0 = self.box_GetEntityInPrefab_v2_47;
    l1 = self.box_GetEntityInPrefab_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|391306864", "391306864", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_47.Out", "box_GetEntityInPrefab_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_108_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_108_Out();
    params = self:OnEnter_box_Bind_v4_93();
    l0 = self.box_GetEntityInPrefab_v2_108;
    l1 = self.box_Bind_v4_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1119449062", "1119449062", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_108.Out", "box_Bind_v4_93.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_57_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_62();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1845257380", "1845257380", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_57.Cleaned", "box_StimsEmitter_v2_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_57_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_62();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1294744290", "1294744290", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_57.Started", "box_StimsEmitter_v2_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_57_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_57();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2006458119", "2006458119", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_57.Stopped", "box_ParticleSystem_v3_57.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_43_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|246999181", "246999181", "LT03_040_B10_Faith_Enrage", "box_Compare_Integers_43.A_ge_B", "box_SetInteger_v2_28.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_84_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_80();
    l0 = self.box_IndexList_v2_84;
    l1 = self.box_Bind_v4_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|665181696", "665181696", "LT03_040_B10_Faith_Enrage", "box_IndexList_v2_84.Output", "box_Bind_v4_80.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_84_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_45();
    l0 = self.box_IndexList_v2_84;
    l1 = self.box_Bind_v4_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|766177732", "766177732", "LT03_040_B10_Faith_Enrage", "box_IndexList_v2_84.Output", "box_Bind_v4_45.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_84_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_IndexList_v2_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1812654144", "1812654144", "LT03_040_B10_Faith_Enrage", "box_IndexList_v2_84.Output", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_8_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_BindMarkerOverHead_v2_3();
    l0 = self.box_BindMarkerOverHead_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1929433562", "1929433562", "LT03_040_B10_Faith_Enrage", "box_DynamicLightModifier_8.Enabled", "box_BindMarkerOverHead_v2_3.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_17();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_Random_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|486964112", "486964112", "LT03_040_B10_Faith_Enrage", "box_Delay_v5_18.TimeElapsed", "box_Random_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_117_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_117_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_104();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|598723066", "598723066", "LT03_040_B10_Faith_Enrage", "box_GetLocalPlayer_v2_117.Out", "box_SetEntity_v2_104.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_60_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_59();
    l0 = self.box_PositionModifier_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|228418297", "228418297", "LT03_040_B10_Faith_Enrage", "box_StimsEmitter_v2_60.Enabled", "box_PositionModifier_v2_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_13_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_16();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|851691508", "851691508", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_13.Started", "box_DynamicLightModifier_16.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_80_Bound()
    local params, l0;
    params = self:OnEnter_box_Bind_v4_80();
    l0 = self.box_Bind_v4_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1464824664", "1464824664", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_80.Bound", "box_Bind_v4_80.UnBind", l0:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_80_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_70();
    l0 = self.box_Bind_v4_80;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1406361317", "1406361317", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_80.UnBound", "box_GetDistance_70.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_53_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_53_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_42();
    l0 = self.box_GetEntityInPrefab_v2_53;
    l1 = self.box_GetEntityInPrefab_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1853730521", "1853730521", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_53.Out", "box_GetEntityInPrefab_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Floats_2_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_20();
    l0 = self.box_HealthListener_v6_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|839821645", "839821645", "LT03_040_B10_Faith_Enrage", "box_Compare_Floats_2.A_le_B", "box_HealthListener_v6_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_40();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1853769163", "1853769163", "LT03_040_B10_Faith_Enrage", "box_MultipleOR_37.Out", "box_ParticleSystem_v3_40.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_88_Bound()
    local params, l0;
    params = self:OnEnter_box_Bind_v4_88();
    l0 = self.box_Bind_v4_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1488830234", "1488830234", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_88.Bound", "box_Bind_v4_88.UnBind", l0:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_88_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_72();
    l0 = self.box_Bind_v4_88;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1486509710", "1486509710", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_88.UnBound", "box_GetDistance_72.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_88();
    l0 = self.box_Bind_v4_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1911037066", "1911037066", "LT03_040_B10_Faith_Enrage", "box_OutputOrder_v2_46.Out", "box_Bind_v4_88.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_85();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|506053841", "506053841", "LT03_040_B10_Faith_Enrage", "box_OutputOrder_v2_46.Out", "box_SetInteger_v2_85.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|198170887", "198170887", "LT03_040_B10_Faith_Enrage", "box_ActivityObjectiveMarkerModifier_v3_12.Enabled", "box_Simple_Node_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_29_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_29_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_9();
    l0 = self.box_GetEntityInPrefab_v2_29;
    l1 = self.box_GetEntityInPrefab_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|131308619", "131308619", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_29.Out", "box_GetEntityInPrefab_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_92_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_48();
    l0 = self.box_Bind_v4_92;
    l1 = self.box_Bind_v4_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|440695050", "440695050", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_92.Bound", "box_Bind_v4_48.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_75_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_51();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|22527781", "22527781", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_75.Started", "box_ParticleSystem_v3_51.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_42_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_42_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_5();
    l0 = self.box_GetEntityInPrefab_v2_42;
    l1 = self.box_GetEntityInPrefab_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|43020911", "43020911", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_42.Out", "box_GetEntityInPrefab_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_8();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1238654139", "1238654139", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_6.Started", "box_DynamicLightModifier_8.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_56_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_52();
    l0 = self.box_PositionModifier_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1947831743", "1947831743", "LT03_040_B10_Faith_Enrage", "box_StimsEmitter_v2_56.Enabled", "box_PositionModifier_v2_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_20_Critical()
    self:OnExit_box_HealthListener_v6_20_Critical();
end;

function export:f_box_HealthListener_v6_20_Damaged()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_20_Damaged();
    params = self:OnEnter_box_Simple_Node_102();
    l0 = self.box_HealthListener_v6_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1601453596", "1601453596", "LT03_040_B10_Faith_Enrage", "box_HealthListener_v6_20.Damaged", "box_Simple_Node_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_20_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14();
    l0 = self.box_HealthListener_v6_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1504575137", "1504575137", "LT03_040_B10_Faith_Enrage", "box_HealthListener_v6_20.Disabled", "box_ActivityObjectiveMarkerModifier_v3_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_20_Downed()
    self:OnExit_box_HealthListener_v6_20_Downed();
end;

function export:f_box_HealthListener_v6_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_HealthListener_v6_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|228450554", "228450554", "LT03_040_B10_Faith_Enrage", "box_HealthListener_v6_20.Enabled", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_20_Healed()
    self:OnExit_box_HealthListener_v6_20_Healed();
end;

function export:f_box_HealthListener_v6_20_Killed()
    self:OnExit_box_HealthListener_v6_20_Killed();
end;

function export:f_box_HealthListener_v6_20_Revived()
    self:OnExit_box_HealthListener_v6_20_Revived();
end;

function export:f_box_GetEntityInPrefab_v2_31_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_31_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_41();
    l0 = self.box_GetEntityInPrefab_v2_31;
    l1 = self.box_GetEntityInPrefab_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1958655044", "1958655044", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_31.Out", "box_GetEntityInPrefab_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_30_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_30_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_31();
    l0 = self.box_GetEntityInPrefab_v2_30;
    l1 = self.box_GetEntityInPrefab_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|403637253", "403637253", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_30.Out", "box_GetEntityInPrefab_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_11_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_11_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_47();
    l0 = self.box_GetEntityInPrefab_v2_11;
    l1 = self.box_GetEntityInPrefab_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1292914846", "1292914846", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_11.Out", "box_GetEntityInPrefab_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_112_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_112;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|439998940", "439998940", "LT03_040_B10_Faith_Enrage", "box_ProximityTrigger_v2_112.Disabled", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_112_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_112;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|715263532", "715263532", "LT03_040_B10_Faith_Enrage", "box_ProximityTrigger_v2_112.OnEmpty", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_112_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_115();
    l0 = self.box_ProximityTrigger_v2_112;
    l1 = self.box_Delay_v5_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1698900684", "1698900684", "LT03_040_B10_Faith_Enrage", "box_ProximityTrigger_v2_112.OnOccupied", "box_Delay_v5_115.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetEntityInPrefab_v2_83_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_83_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_53();
    l0 = self.box_GetEntityInPrefab_v2_83;
    l1 = self.box_GetEntityInPrefab_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|991910604", "991910604", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_83.Out", "box_GetEntityInPrefab_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_114_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_115();
    l0 = self.box_MultipleOR_114;
    l1 = self.box_Delay_v5_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|876731784", "876731784", "LT03_040_B10_Faith_Enrage", "box_MultipleOR_114.Out", "box_Delay_v5_115.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_CameraShakeAndRumble_V2_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_75();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1097003445", "1097003445", "LT03_040_B10_Faith_Enrage", "box_CameraShakeAndRumble_V2_81.Out", "box_ParticleSystem_v3_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_110();
    l0 = self.box_MultipleOR_111;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2137308094", "2137308094", "LT03_040_B10_Faith_Enrage", "box_MultipleOR_111.Out", "box_StimsEmitter_v2_110.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CameraShakeAndRumble_V2_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_58();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|313351648", "313351648", "LT03_040_B10_Faith_Enrage", "box_CameraShakeAndRumble_V2_44.Out", "box_ParticleSystem_v3_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_62_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_86();
    l0 = self.box_PositionModifier_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|459444944", "459444944", "LT03_040_B10_Faith_Enrage", "box_StimsEmitter_v2_62.Enabled", "box_PositionModifier_v2_86.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_33_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_33_Spawned();
    params = self:OnEnter_box_ListReader_35();
    l0 = self.box_SpawnAI_33;
    l1 = self.box_ListReader_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1459067144", "1459067144", "LT03_040_B10_Faith_Enrage", "box_SpawnAI_33.Spawned", "box_ListReader_35.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_85_Out()
    self:OnExit_box_SetInteger_v2_85_Out();
end;

function export:f_box_GetEntityInPrefab_v2_101_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_101_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_106();
    l0 = self.box_GetEntityInPrefab_v2_101;
    l1 = self.box_GetEntityInPrefab_v2_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1887843104", "1887843104", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_101.Out", "box_GetEntityInPrefab_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ListReset_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1997978052", "1997978052", "LT03_040_B10_Faith_Enrage", "box_ListReset_49.Out", "box_SpawnAI_33.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_10_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_10_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_23();
    l0 = self.box_GetEntityInPrefab_v2_10;
    l1 = self.box_GetEntityInPrefab_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|874718820", "874718820", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_10.Out", "box_GetEntityInPrefab_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_32_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_43();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|350527321", "350527321", "LT03_040_B10_Faith_Enrage", "box_IntegerArithmetics_v2_32.Out", "box_Compare_Integers_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_40_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_13();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1950057466", "1950057466", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_40.Stopped", "box_ParticleSystem_v3_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_94_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_94_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_34();
    l0 = self.box_GetEntityInPrefab_v2_94;
    l1 = self.box_GetEntityInPrefab_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1280175326", "1280175326", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_94.Out", "box_GetEntityInPrefab_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthModifier_v2_15_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|129515330", "129515330", "LT03_040_B10_Faith_Enrage", "box_HealthModifier_v2_15.OnSet", "box_ParticleSystem_v3_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_82_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_82_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_71();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|830600362", "830600362", "LT03_040_B10_Faith_Enrage", "box_FloatArithmetics_v2_82.Out", "box_ParticleSystem_v3_71.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_73_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_73_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_57();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1213001732", "1213001732", "LT03_040_B10_Faith_Enrage", "box_FloatArithmetics_v2_73.Out", "box_ParticleSystem_v3_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BindMarkerOverHead_v2_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12();
    l0 = self.box_BindMarkerOverHead_v2_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2024610201", "2024610201", "LT03_040_B10_Faith_Enrage", "box_BindMarkerOverHead_v2_3.Out", "box_ActivityObjectiveMarkerModifier_v3_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_45_Bound()
    local params, l0;
    params = self:OnEnter_box_Bind_v4_45();
    l0 = self.box_Bind_v4_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|254999514", "254999514", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_45.Bound", "box_Bind_v4_45.UnBind", l0:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_45_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_87();
    l0 = self.box_Bind_v4_45;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|91373482", "91373482", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_45.UnBound", "box_GetDistance_87.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_93_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_92();
    l0 = self.box_Bind_v4_93;
    l1 = self.box_Bind_v4_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|424278140", "424278140", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_93.Bound", "box_Bind_v4_92.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_100_TimeElapsed()
    local l0;
    l0 = self.box_Delay_v5_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|86418343", "86418343", "LT03_040_B10_Faith_Enrage", "box_Delay_v5_100.TimeElapsed", "Enrage_Out", l0:GetLuaBox(), self);
    self:Enrage_Out();
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ListReset_49();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|506102571", "506102571", "LT03_040_B10_Faith_Enrage", "box_Delay_v5_19.TimeElapsed", "box_ListReset_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_17();
    l0 = self.box_Random_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|363485686", "363485686", "LT03_040_B10_Faith_Enrage", "box_SetInteger_v2_28.Out", "box_Random_17.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_CameraShakeAndRumble_V2_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_67();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2114446489", "2114446489", "LT03_040_B10_Faith_Enrage", "box_CameraShakeAndRumble_V2_61.Out", "box_ParticleSystem_v3_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_91_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_91_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_94();
    l0 = self.box_GetEntityInPrefab_v2_91;
    l1 = self.box_GetEntityInPrefab_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|652019972", "652019972", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_91.Out", "box_GetEntityInPrefab_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ListReader_35_Out()
    local params, l0, l1;
    self:OnExit_box_ListReader_35_Out();
    params = self:OnEnter_box_EntityStatusListener_4();
    l0 = self.box_ListReader_35;
    l1 = self.box_EntityStatusListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1497222597", "1497222597", "LT03_040_B10_Faith_Enrage", "box_ListReader_35.Out", "box_EntityStatusListener_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_59_Done()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_61();
    l0 = self.box_PositionModifier_v2_59;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1489832172", "1489832172", "LT03_040_B10_Faith_Enrage", "box_PositionModifier_v2_59.Done", "box_CameraShakeAndRumble_V2_61.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_59_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_74();
    l0 = self.box_PositionModifier_v2_59;
    l1 = self.box_PositionModifier_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1487049466", "1487049466", "LT03_040_B10_Faith_Enrage", "box_PositionModifier_v2_59.StartOut", "box_PositionModifier_v2_74.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_115_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_115;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|694163050", "694163050", "LT03_040_B10_Faith_Enrage", "box_Delay_v5_115.Started", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_115_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_115;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1585500659", "1585500659", "LT03_040_B10_Faith_Enrage", "box_Delay_v5_115.TimeElapsed", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FloatArithmetics_v2_1_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_39();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1005979119", "1005979119", "LT03_040_B10_Faith_Enrage", "box_FloatArithmetics_v2_1.Out", "box_SetInteger_v2_39.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_71_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_60();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2105480439", "2105480439", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_71.Cleaned", "box_StimsEmitter_v2_60.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_71_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_60();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|50729215", "50729215", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_71.Started", "box_StimsEmitter_v2_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_71_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_71();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|586423634", "586423634", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_71.Stopped", "box_ParticleSystem_v3_71.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_41_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_41_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_83();
    l0 = self.box_GetEntityInPrefab_v2_41;
    l1 = self.box_GetEntityInPrefab_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|347793104", "347793104", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_41.Out", "box_GetEntityInPrefab_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_39_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|765790093", "765790093", "LT03_040_B10_Faith_Enrage", "box_SetInteger_v2_39.Out", "box_SetActivityObjectiveProgress_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListGetRandom_103_Out()
    local l0;
    self:OnExit_box_ListGetRandom_103_Out();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|279475311", "279475311", "LT03_040_B10_Faith_Enrage", "box_ListGetRandom_103.Out", "box_MultipleOR_105.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_79();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_ContextualActionListener_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|959159865", "959159865", "LT03_040_B10_Faith_Enrage", "box_MultipleOR_98.Out", "box_ContextualActionListener_79.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_107();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|747849414", "747849414", "LT03_040_B10_Faith_Enrage", "box_DynamicLightModifier_16.Disabled", "box_StimsEmitter_v2_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_109_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_109_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_112();
    l0 = self.box_ProximityTrigger_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|471036874", "471036874", "LT03_040_B10_Faith_Enrage", "box_GetPlayerGroup_v2_109.Out", "box_ProximityTrigger_v2_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_50_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_84();
    l0 = self.box_IndexList_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|21947321", "21947321", "LT03_040_B10_Faith_Enrage", "box_IntegerArithmetics_v2_50.Out", "box_IndexList_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_86_Done()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_44();
    l0 = self.box_PositionModifier_v2_86;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|672095785", "672095785", "LT03_040_B10_Faith_Enrage", "box_PositionModifier_v2_86.Done", "box_CameraShakeAndRumble_V2_44.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_86_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_78();
    l0 = self.box_PositionModifier_v2_86;
    l1 = self.box_PositionModifier_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1395263799", "1395263799", "LT03_040_B10_Faith_Enrage", "box_PositionModifier_v2_86.StartOut", "box_PositionModifier_v2_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_110_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1242062048", "1242062048", "LT03_040_B10_Faith_Enrage", "box_StimsEmitter_v2_110.Enabled", "box_Delay_v5_113.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_51_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_56();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|873744772", "873744772", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_51.Cleaned", "box_StimsEmitter_v2_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_51_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_56();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1560409622", "1560409622", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_51.Started", "box_StimsEmitter_v2_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_51_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_51();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1973601852", "1973601852", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_51.Stopped", "box_ParticleSystem_v3_51.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_76_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_76_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_51();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1445638037", "1445638037", "LT03_040_B10_Faith_Enrage", "box_FloatArithmetics_v2_76.Out", "box_ParticleSystem_v3_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_113_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_110();
    l0 = self.box_Delay_v5_113;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|904259911", "904259911", "LT03_040_B10_Faith_Enrage", "box_Delay_v5_113.TimeElapsed", "box_StimsEmitter_v2_110.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_5_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_5_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_91();
    l0 = self.box_GetEntityInPrefab_v2_5;
    l1 = self.box_GetEntityInPrefab_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1324164978", "1324164978", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_5.Out", "box_GetEntityInPrefab_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|903373083", "903373083", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_7.Started", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetDistance_70_Out()
    local params, l0;
    self:OnExit_box_GetDistance_70_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_73();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1688362834", "1688362834", "LT03_040_B10_Faith_Enrage", "box_GetDistance_70.Out", "box_FloatArithmetics_v2_73.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_54_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_99();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1536142376", "1536142376", "LT03_040_B10_Faith_Enrage", "box_HealthModifier_v2_54.Damaged", "box_HealthModifier_v2_99.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_97_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_97_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1725407513", "1725407513", "LT03_040_B10_Faith_Enrage", "box_GetLocalPlayer_v2_97.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_48_Bound()
    local l0;
    l0 = self.box_Bind_v4_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|362864803", "362864803", "LT03_040_B10_Faith_Enrage", "box_Bind_v4_48.Bound", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_PositionModifier_v2_52_Done()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_81();
    l0 = self.box_PositionModifier_v2_52;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1184485768", "1184485768", "LT03_040_B10_Faith_Enrage", "box_PositionModifier_v2_52.Done", "box_CameraShakeAndRumble_V2_81.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_52_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_77();
    l0 = self.box_PositionModifier_v2_52;
    l1 = self.box_PositionModifier_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|783638914", "783638914", "LT03_040_B10_Faith_Enrage", "box_PositionModifier_v2_52.StartOut", "box_PositionModifier_v2_77.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_106_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_106_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_108();
    l0 = self.box_GetEntityInPrefab_v2_106;
    l1 = self.box_GetEntityInPrefab_v2_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|400456483", "400456483", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_106.Out", "box_GetEntityInPrefab_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_107_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_100();
    l0 = self.box_Delay_v5_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1654113747", "1654113747", "LT03_040_B10_Faith_Enrage", "box_StimsEmitter_v2_107.Disabled", "box_Delay_v5_100.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsValueNil_v3_96_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1055749584", "1055749584", "LT03_040_B10_Faith_Enrage", "box_IsValueNil_v3_96.No", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsValueNil_v3_96_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_97();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|652639886", "652639886", "LT03_040_B10_Faith_Enrage", "box_IsValueNil_v3_96.Yes", "box_GetLocalPlayer_v2_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_58_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_57();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1477680892", "1477680892", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_58.Started", "box_ParticleSystem_v3_57.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_99_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|564328941", "564328941", "LT03_040_B10_Faith_Enrage", "box_HealthModifier_v2_99.Damaged", "box_PlayDialog_v6_36.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1916808354", "1916808354", "LT03_040_B10_Faith_Enrage", "box_ActivityObjectiveMarkerModifier_v3_14.Disabled", "box_Simple_Node_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_36_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_36;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1545231331", "1545231331", "LT03_040_B10_Faith_Enrage", "box_PlayDialog_v6_36.Started", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_36_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_36;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1845067873", "1845067873", "LT03_040_B10_Faith_Enrage", "box_PlayDialog_v6_36.StartedPriorityFailed", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetDistance_87_Out()
    local params, l0;
    self:OnExit_box_GetDistance_87_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_76();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1213225128", "1213225128", "LT03_040_B10_Faith_Enrage", "box_GetDistance_87.Out", "box_FloatArithmetics_v2_76.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_4_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_15();
    l0 = self.box_EntityStatusListener_4;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|455262872", "455262872", "LT03_040_B10_Faith_Enrage", "box_EntityStatusListener_4.Loaded", "box_HealthModifier_v2_15.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetFaithTarget_26();
    l0 = self.box_MultipleOR_105;
    l1 = Boxes[GetPathID("Domino/System/SetFaithTarget.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1068646328", "1068646328", "LT03_040_B10_Faith_Enrage", "box_MultipleOR_105.Out", "box_SetFaithTarget_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListLength_v2_116_Empty()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_117();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2008680718", "2008680718", "LT03_040_B10_Faith_Enrage", "box_ListLength_v2_116.Empty", "box_GetLocalPlayer_v2_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListLength_v2_116_NotEmpty()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListGetRandom_103();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1919791886", "1919791886", "LT03_040_B10_Faith_Enrage", "box_ListLength_v2_116.NotEmpty", "box_ListGetRandom_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_34_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_34_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_29();
    l0 = self.box_GetEntityInPrefab_v2_34;
    l1 = self.box_GetEntityInPrefab_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1050710839", "1050710839", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_34.Out", "box_GetEntityInPrefab_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_9_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_9_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_10();
    l0 = self.box_GetEntityInPrefab_v2_9;
    l1 = self.box_GetEntityInPrefab_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|420668122", "420668122", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_9.Out", "box_GetEntityInPrefab_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_67_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_71();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1925945598", "1925945598", "LT03_040_B10_Faith_Enrage", "box_ParticleSystem_v3_67.Started", "box_ParticleSystem_v3_71.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_79_Markup1()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_50();
    l0 = self.box_ContextualActionListener_79;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|63615047", "63615047", "LT03_040_B10_Faith_Enrage", "box_ContextualActionListener_79.Markup1", "box_IntegerArithmetics_v2_50.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_79_Markup2()
    local params, l0, l1;
    params = self:OnEnter_box_ListLength_v2_116();
    l0 = self.box_ContextualActionListener_79;
    l1 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1004320114", "1004320114", "LT03_040_B10_Faith_Enrage", "box_ContextualActionListener_79.Markup2", "box_ListLength_v2_116.GetLength", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetLength
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_95_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_95_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_20();
    l0 = self.box_HealthListener_v6_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1353228386", "1353228386", "LT03_040_B10_Faith_Enrage", "box_GetLocalPlayer_v2_95.Out", "box_HealthListener_v6_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetDistance_72_Out()
    local params, l0;
    self:OnExit_box_GetDistance_72_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_82();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|726471323", "726471323", "LT03_040_B10_Faith_Enrage", "box_GetDistance_72.Out", "box_FloatArithmetics_v2_82.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_23_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_23_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_11();
    l0 = self.box_GetEntityInPrefab_v2_23;
    l1 = self.box_GetEntityInPrefab_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|649757357", "649757357", "LT03_040_B10_Faith_Enrage", "box_GetEntityInPrefab_v2_23.Out", "box_GetEntityInPrefab_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|@Damaged");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_102_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|@Enrage_Completed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|@Start_Attacking");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_89_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|@Start_HealthListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_17()
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

function export:OnEnter_box_SetEntity_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|38199559");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_104_Out,
    });
    params = {
        -- Entity,
        [0] = self._sld_LocalPlayer_box_GetLocalPlayer_v2_117,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_47()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithAttack_STP",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_108()
    local params;
    params = {
        -- ObjectName,
        [0] = "Proximity_Trigger",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|72676536");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_57_Cleaned,
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_57_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_57_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eProjectileFX_1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|75296716");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_43_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iCounterVO,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_84()
    local params;
    params = {
        -- Index,
        [0] = self.iAttackNbr,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|77525217");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_8_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eLight,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|96978140");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_117_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_77()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.LT03_040_B10.ePlayerAttacking,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eImpactFX_2,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|127996193");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_60_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimAttack_3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|132356388");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_13_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithDisappear,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_80()
    local params;
    params = {
        -- BoneName,
        [0] = "RightHand",
        -- EntityA,
        [1] = self.eFaith,
        -- EntityB,
        [2] = self.eProjectileFX_1,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_53()
    local params;
    params = {
        -- ObjectName,
        [0] = "AttackStim_2",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|203349684");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_2_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.fCurrentHealth,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_88()
    local params;
    params = {
        -- BoneName,
        [0] = "RightHand",
        -- EntityA,
        [1] = self.eFaith,
        -- EntityB,
        [2] = self.eProjectileFX_3,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|299625794");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|315071325");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_12_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104189010569101364",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_29()
    local params;
    params = {
        -- ObjectName,
        [0] = "DialogPoint_Enrage",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_92()
    local params;
    params = {
        -- EntityA,
        [1] = self.eProjectileFX_2,
        -- EntityB,
        [2] = self.eStimAttack_2,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = self.eFaith,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3039872136",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|382693774");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_75_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eImpactFX_2,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_42()
    local params;
    params = {
        -- ObjectName,
        [0] = "AttackStim_3",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|402364141");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eAppear_FX,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|428161630");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_56_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimAttack_2,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_20()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eFaith,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_31()
    local params;
    params = {
        -- ObjectName,
        [0] = "Attack_FX_2",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_78()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.LT03_040_B10.ePlayerAttacking,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eImpactFX_1,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_30()
    local params;
    params = {
        -- ObjectName,
        [0] = "Attack_FX_1",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_11()
    local params;
    params = {
        -- ObjectName,
        [0] = "EnrageCape_FX",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = l0:GetDataOutValue(0),
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = self.eProximityTrigger,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_83()
    local params;
    params = {
        -- ObjectName,
        [0] = "AttackStim_1",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|688589182");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_81_Out,
    });
    params = {
        -- EventName,
        [0] = "weaponprojectileShoot",
        -- IntensityModifier,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|700984221");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_44_Out,
    });
    params = {
        -- EventName,
        [0] = "weaponprojectileShoot",
        -- IntensityModifier,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|705186764");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_62_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimAttack_1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    params = {
        -- Group,
        [0] = self.eFaith,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2488407938",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eFaithSpawner,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|753297052");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_85_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_101()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithDeath_FX",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_ListReset_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|794705495");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_49_Out,
    });
    params = {
        -- List,
        [0] = self.Faith_Spawned,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_10()
    local params;
    params = {
        -- ObjectName,
        [0] = "EnrageAppear_FX",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|823198898");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_32_Out,
    });
    params = {
        -- A,
        [0] = self.iCounterVO,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|887203450");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_40_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eCape_FX,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_94()
    local params;
    params = {
        -- ObjectName,
        [0] = "Impact_FX_3",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|917717510");
    l0:SetConnections({
        -- OnSet,
        [3] = self.f_box_HealthModifier_v2_15_OnSet,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eFaith,
        -- value,
        [3] = 75,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|919625005");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_82_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_72,
        -- B,
        [1] = Globals.LT03_040_B10.fProjectileSpeed,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|955051658");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_73_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_70,
        -- B,
        [1] = Globals.LT03_040_B10.fProjectileSpeed,
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_3()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2104189010569101364",
        -- eNPC,
        [2] = self.eFaith,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_45()
    local params;
    params = {
        -- BoneName,
        [0] = "LeftHand",
        -- EntityA,
        [1] = self.eFaith,
        -- EntityB,
        [2] = self.eProjectileFX_2,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_93()
    local params;
    params = {
        -- EntityA,
        [1] = self.eProjectileFX_1,
        -- EntityB,
        [2] = self.eStimAttack_1,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_100()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1030394929");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_28_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1043344375");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_61_Out,
    });
    params = {
        -- EventName,
        [0] = "weaponprojectileShoot",
        -- IntensityModifier,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_91()
    local params;
    params = {
        -- ObjectName,
        [0] = "Impact_FX_2",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_ListReader_35()
    local params;
    params = {
        -- Index,
        [0] = 1,
        -- Input,
        [1] = self.Faith_Spawned,
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_59()
    local params;
    params = {
        -- blendTime,
        [1] = self.fBlendTime,
        -- endTarget,
        [4] = Globals.LT03_040_B10.ePlayerAttacking,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eProjectileFX_3,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_115()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1174361641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_1_Out,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.fCurrentHealth,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1194134811");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_71_Cleaned,
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_71_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_71_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eProjectileFX_3,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_41()
    local params;
    params = {
        -- ObjectName,
        [0] = "Attack_FX_3",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1210521759");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_39_Out,
    });
    params = {
        -- Float,
        [0] = self.iFaithProgressManipulation,
        -- UseFloor,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_ListGetRandom_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListGetRandom_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1225986759");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListGetRandom_103_Out,
    });
    params = {
        -- Input,
        [0] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_27()
    local params;
    params = {
        -- Group,
        [0] = self.eFaith,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3818598180",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1360125685");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_16_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eLight,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1368434212");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    params = {
        -- Group,
        [0] = self.eFaith,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1015279647",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1424088794");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_50_Out,
    });
    params = {
        -- A,
        [0] = self.iAttackNbr,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_86()
    local params;
    params = {
        -- blendTime,
        [1] = self.fBlendTime,
        -- endTarget,
        [4] = Globals.LT03_040_B10.ePlayerAttacking,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eProjectileFX_1,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1517033628");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_110_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eKnockback_Stim,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1523162587");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_51_Cleaned,
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_51_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_51_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eProjectileFX_2,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_74()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.LT03_040_B10.ePlayerAttacking,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eImpactFX_3,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1578845755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_76_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_87,
        -- B,
        [1] = Globals.LT03_040_B10.fProjectileSpeed,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_113()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_5()
    local params;
    params = {
        -- ObjectName,
        [0] = "Impact_FX_1",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1588286088");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eCape_FX,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1601359506");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_70_Out,
    });
    params = {
        -- Entity1,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
        -- Entity2,
        [1] = self.eProjectileFX_1,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1613024798");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_54_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eFaith,
        -- pawns,
        [2] = self.eFaith,
        -- value,
        [3] = 100,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1617258820");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
        -- Progress,
        [1] = self._sld_Target_box_SetInteger_v2_39,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetFaithTarget_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFaithTarget.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFaithTarget_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1623852497");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1625894654");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_97_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_48()
    local params;
    params = {
        -- EntityA,
        [1] = self.eProjectileFX_3,
        -- EntityB,
        [2] = self.eStimAttack_3,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_52()
    local params;
    params = {
        -- blendTime,
        [1] = self.fBlendTime,
        -- endTarget,
        [4] = Globals.LT03_040_B10.ePlayerAttacking,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eProjectileFX_2,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_106()
    local params;
    params = {
        -- ObjectName,
        [0] = "Knockback_Stim",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1731105332");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_107_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eKnockback_Stim,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1752980255");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_96_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_96_Yes,
    });
    params = {
        -- ent,
        [4] = Globals.LT03_040_B10.ePlayerAttacking,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1766975151");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_58_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eImpactFX_1,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1795886052");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_99_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#8ACCBCD8",
        -- value,
        [3] = 105,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1868966455");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_14_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2104189010569101364",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_36()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3972484245",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1880710844");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_87_Out,
    });
    params = {
        -- Entity1,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
        -- Entity2,
        [1] = self.eProjectileFX_2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eFaith,
    };
    return params;
end;

function export:OnEnter_box_ListLength_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLength_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|1923813740");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_ListLength_v2_116_Empty,
        -- NotEmpty,
        [1] = self.f_box_ListLength_v2_116_NotEmpty,
    });
    params = {
        -- Input,
        [0] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_34()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_Faith_Enrage",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_9()
    local params;
    params = {
        -- ObjectName,
        [0] = "EnrageHint_FX",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2070762393");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_67_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eImpactFX_3,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_79()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.eFaithAttackSTP,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2095105931");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetDistance_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Faith_Enrage|2106921832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_72_Out,
    });
    params = {
        -- Entity1,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
        -- Entity2,
        [1] = self.eProjectileFX_3,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_23()
    local params;
    params = {
        -- ObjectName,
        [0] = "LT_Spot",
        -- PrefabEntity,
        [1] = self.Prefab,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_104_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_47_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_47;
    self.eFaithAttackSTP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_108_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_108;
    self.eProximityTrigger = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self._sld_LocalPlayer_box_GetLocalPlayer_v2_117 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_53_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_53;
    self.eStimAttack_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_29_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_29;
    self.eDialogPoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_42_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_42;
    self.eStimAttack_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_20_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_20;
    Globals.LT03_040_B10.fCurrentHealth = l0:GetDataOutValue(0);
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_20_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_20;
    Globals.LT03_040_B10.fCurrentHealth = l0:GetDataOutValue(0);
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_20_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_20;
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_20_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_20;
    Globals.LT03_040_B10.fCurrentHealth = l0:GetDataOutValue(0);
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_20_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_20;
    Globals.LT03_040_B10.fCurrentHealth = l0:GetDataOutValue(0);
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_20_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_20;
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(4);
end;

function export:OnExit_box_GetEntityInPrefab_v2_31_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_31;
    self.eProjectileFX_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_30_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_30;
    self.eProjectileFX_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_11_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_11;
    self.eCape_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_83_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_83;
    self.eStimAttack_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_33_Spawned()
    local l0;
    l0 = self.box_SpawnAI_33;
    self.Faith_Spawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iAttackNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_101_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_101;
    self.eFaithDisappear = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_10_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_10;
    self.eAppear_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iCounterVO = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_94_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_94;
    self.eImpactFX_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.fBlendTime = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.fBlendTime = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iCounterVO = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_91_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_91;
    self.eImpactFX_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListReader_35_Out()
    local l0;
    l0 = self.box_ListReader_35;
    self.eFaith = l0:GetDataOutValue(1);
end;

function export:OnExit_box_FloatArithmetics_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.iFaithProgressManipulation = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_41_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_41;
    self.eProjectileFX_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self._sld_Target_box_SetInteger_v2_39 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListGetRandom_103_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_109_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityTrigger_v2_112;
    l1:GetLuaBox().colliderFilterId = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iAttackNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.fBlendTime = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_5_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_5;
    self.eImpactFX_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_70 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_106_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_106;
    self.eKnockback_Stim = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_87_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_87 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_34_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_34;
    self.eFaithSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_9_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_9;
    self.eHint_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_95_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_72 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_23_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_23;
    self.eLight = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Enrage_Out()
    
end;
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_Enrage" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enrage_Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Prefab" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
