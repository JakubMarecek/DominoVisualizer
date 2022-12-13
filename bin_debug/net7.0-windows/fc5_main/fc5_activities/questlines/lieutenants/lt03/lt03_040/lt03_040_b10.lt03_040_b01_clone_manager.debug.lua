LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_040/lt03_040_b10.domino
-- User graph: LT03_040_B01_Clone_Manager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="FaithPrefab" Type="Nomad|entity{}" />
    <DataIn Name="isRealFaith" Type="Core|bool" />
    <DataIn Name="List" Type="Core|list" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListReset.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInPrefab_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListGetRandom.lua");
        cboxRes:RegisterBox("Domino/System/ListLength_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFaithTarget.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetValueNil.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1781693482.bnk]], "CSoundResource");
        cboxRes:LoadResource([[322004611.bnk]], "CSoundResource");
        cboxRes:LoadResource([[169647007.bnk]], "CSoundResource");
        cboxRes:LoadResource([[574171265.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1757125149.bnk]], "CSoundResource");
        cboxRes:LoadResource([[964087501.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2894264686.bnk]], "CSoundResource");
        cboxRes:LoadResource([[543820611.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2344280107.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3663275787.bnk]], "CSoundResource");
        cboxRes:LoadResource([[129724585.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3659821558.bnk]], "CSoundResource");
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate_Faith",
            },
            [1] = {
                name = "Desactivate_Faith",
            },
            [2] = {
                name = "Faith_Attack",
            },
            [3] = {
                name = "Initialize",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Clone_Killed_OUT",
                delayed = false,
            },
            [1] = {
                name = "Faith_Activated",
                delayed = true,
            },
            [2] = {
                name = "Faith_Desactivated",
                delayed = true,
            },
            [3] = {
                name = "Initialized",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "FaithPrefab",
                type = "entity",
            },
            [1] = {
                name = "isRealFaith",
                type = "bool",
            },
            [2] = {
                name = "List",
                type = "list",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetValueNil.lua")] = {
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
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "bool",
                type = "bool",
            },
            [2] = {
                name = "ent",
                type = "entity",
            },
            [3] = {
                name = "float",
                type = "float",
            },
            [4] = {
                name = "group",
                type = "group",
            },
            [5] = {
                name = "int",
                type = "int",
            },
            [6] = {
                name = "oasis",
                type = "oasis",
            },
            [7] = {
                name = "sound",
                type = "Sound",
            },
            [8] = {
                name = "str",
                type = "string",
            },
        },
        dataOutCount = 9,
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
    self._name = "LT03_040_B01_Clone_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager";
    self.Faith_Activated = DummyFunction;
    self.Faith_Desactivated = DummyFunction;
    self.Clone_Killed_OUT = DummyFunction;
    self.Initialized = DummyFunction;
    self.bIsRealFaith = false;
    self.eCloneFaith = nil;
    self.Faith_Spawned = {
    };
    self.fBlendTime = 0;
    self.eDialogPoint = nil;
    self.eFaithSpawner = nil;
    self.eCloneSpawner = nil;
    self.eAngel_Respawner_1 = nil;
    self.eAngel_Respawner_2 = nil;
    self.Clone_Spawned = {
    };
    self.bProjectileReady = true;
    self.eBuildup_FX = nil;
    self.eStimStun = nil;
    self.eKnockback_FX = nil;
    self.eProximityTrigger = nil;
    self.eAttackPoint = nil;
    self.eFaithSpawner_Attacking = nil;
    self.iAttackNbr = 0;
    self.eStimAttack_1 = nil;
    self.eProjectileFX_1 = nil;
    self.eProjectileFX_2 = nil;
    self.eProjectileFX_3 = nil;
    self.eStimAttack_2 = nil;
    self.eStimAttack_3 = nil;
    self.eFaithAttackSTP = nil;
    self.eImpactFX_1 = nil;
    self.eImpactFX_2 = nil;
    self.eImpactFX_3 = nil;
    self.eFaithApparition_FX = nil;
    self.eFaithDisparition_FX = nil;
    self.eAngelApparition_FX_1 = nil;
    self.eAngelApparition_FX_2 = nil;
    self.eFaithCape_FX = nil;
    self.eCloneCape_FX = nil;
    self.eFaithRing_FX = nil;
    self.eFaithIdleSTP = nil;
    self.bTauntPlaying = false;
    self.eFaithEndRound_FX = nil;
    self.eFaithLight = nil;
    self.iCounterVO = 0;
    self.eAngel_Respawner_3 = nil;
    self.eAngel_Respawner_4 = nil;
    self.eAngel_Respawner_5 = nil;
    self.iAngelCount = 1;
    self.players = {
    };
    self.ePlayerTarget = nil;
    self.box_GetEntityInPrefab_v2_32 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|3233069");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_32_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_32_Out,
    });
    self.box_GetEntityInPrefab_v2_50 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|47873424");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_50_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_50_Out,
    });
    self.box_SpawnAI_36 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|53442021");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_36_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_36_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_36_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_36_Success,
    });
    self.box_GetEntityInPrefab_v2_4 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|99132850");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_4_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_4_Out,
    });
    self.box_Random_119 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|112423487");
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
                [0] = self.f_box_Random_119_Output_0,
                [1] = self.f_box_Random_119_Output_1,
                [2] = self.f_box_Random_119_Output_2,
                [3] = self.f_box_Random_119_Output_3,
                [4] = self.f_box_Random_119_Output_4,
                [5] = self.f_box_Random_119_Output_5,
                [6] = self.f_box_Random_119_Output_6,
                [7] = self.f_box_Random_119_Output_7,
                [8] = self.f_box_Random_119_Output_8,
                [9] = self.f_box_Random_119_Output_9,
            },
            count = 10,
        },
    });
    self.box_Bind_v4_143 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|114160660");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_143_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_143_UnBound,
    });
    self.box_MultipleOR_112 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|114543923");
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
    self.box_HealthListener_v6_2 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|116966417");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_2_Disabled,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_2_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_2_Killed,
    });
    self.box_GetEntityInPrefab_v2_59 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|129849505");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_59_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_59_Out,
    });
    self.box_IndexList_v2_83 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|238589071");
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
                [0] = self.f_box_IndexList_v2_83_Output_0,
                [1] = self.f_box_IndexList_v2_83_Output_1,
                [2] = self.f_box_IndexList_v2_83_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_155 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|241112927");
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
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_155_ResetOut,
    });
    self.box_ContextualActionListener_97 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|241257985");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_97_Disabled,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_97_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_97_Markup2,
    });
    self.box_MultipleOR_183 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|254655589");
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
        [0] = self.f_box_MultipleOR_183_Out,
    });
    self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|260185588");
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
    self.box_MultipleOR_168 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|279463432");
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
        [0] = self.f_box_MultipleOR_168_Out,
    });
    self.box_GetEntityInPrefab_v2_102 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|283060114");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_102_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_102_Out,
    });
    self.box_PlayDialog_v6_117 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|314696416");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_117_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_117_FinishedInterrupted,
    });
    self.box_GetEntityInPrefab_v2_90 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|317932028");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_90_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_90_Out,
    });
    self.box_OnceOnly_v3_3 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|321476518");
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
                [0] = self.f_box_OnceOnly_v3_3_Out_0,
            },
            count = 2,
        },
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_3_ResetOut,
    });
    self.box_GetEntityInPrefab_v2_21 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|375155258");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_21_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_21_Out,
    });
    self.box_BindMarkerOverHead_v2_122 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|396405132");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_122_Out,
    });
    self.box_PositionModifier_v2_138 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|413718995");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_138_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_138_StartOut,
    });
    self.box_PlayDialog_v6_120 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|419092055");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_120_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_120_FinishedInterrupted,
    });
    self.box_GetEntityInPrefab_v2_53 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|432685792");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_53_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_53_Out,
    });
    self.box_Delay_v5_173 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|435952357");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_173_TimeElapsed,
    });
    self.box_GetEntityInPrefab_v2_123 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|451641849");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_123_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_123_Out,
    });
    self.box_PlayDialog_v6_175 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|563408413");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_175_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_175_FinishedInterrupted,
    });
    self.box_GetEntityInPrefab_v2_87 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|564685605");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_87_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_87_Out,
    });
    self.box_PositionModifier_v2_113 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|575886806");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_113_Done,
    });
    self.box_EntityStatusListener_128 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|579359384");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_128_Loaded,
    });
    self.box_Delay_v5_210 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|604407650");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_210_TimeElapsed,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|624921194");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_GetEntityInPrefab_v2_82 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|647439608");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_82_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_82_Out,
    });
    self.box_GetEntityInPrefab_v2_106 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|685016481");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_106_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_106_Out,
    });
    self.box_SpawnAI_65 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|686994973");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_65_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_65_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_65_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_65_Success,
    });
    self.box_GetEntityInPrefab_v2_58 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|696537590");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_58_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_58_Out,
    });
    self.box_Bind_v4_51 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|700868387");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_51_Bound,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|706272716");
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|735864084");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 20,
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
    self.box_GetEntityInPrefab_v2_94 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|744088646");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_94_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_94_Out,
    });
    self.box_ListReader_129 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|745241107");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_129_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_129_Out,
    });
    self.box_BindMarkerOverHead_v2_110 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|777765680");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_110_Out,
    });
    self.box_GetEntityInPrefab_v2_27 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|779123696");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_27_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_27_Out,
    });
    self.box_MultipleOR_222 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|781133312");
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
        [0] = self.f_box_MultipleOR_222_Out,
    });
    self.box_EntityStatusListener_55 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|797953234");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_55_Loaded,
    });
    self.box_Bind_v4_154 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|835870512");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_154_Bound,
    });
    self.box_PlayDialog_v6_118 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|847531156");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_118_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_118_FinishedInterrupted,
    });
    self.box_IndexList_v2_46 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|907592293");
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
                [0] = self.f_box_IndexList_v2_46_Output_0,
                [1] = self.f_box_IndexList_v2_46_Output_1,
                [2] = self.f_box_IndexList_v2_46_Output_2,
                [3] = self.f_box_IndexList_v2_46_Output_3,
            },
            count = 5,
        },
    });
    self.box_GetEntityInPrefab_v2_125 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|917053829");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_125_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_125_Out,
    });
    self.box_MultipleOR_218 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|926402088");
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
        [0] = self.f_box_MultipleOR_218_Out,
    });
    self.box_SpawnAI_164 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|946656740");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_164_Out,
    });
    self.box_GetEntityInPrefab_v2_67 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|961531213");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_67_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_67_Out,
    });
    self.box_ListReader_63 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|990816410");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_63_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_63_Out,
    });
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1021219426");
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
    self.box_OnceOnly_v3_174 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1033469577");
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
    self.box_Delay_v5_214 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1036991934");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_214_TimeElapsed,
    });
    self.box_IndexList_v2_208 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1116040896");
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
        -- Output,
        [0] = {
            connections = {
                [1] = self.f_box_IndexList_v2_208_Output_1,
                [2] = self.f_box_IndexList_v2_208_Output_2,
            },
            count = 4,
        },
    });
    self.box_GetEntityInPrefab_v2_7 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1118231094");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_7_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_7_Out,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1133420827");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_34_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_Delay_v5_216 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1139848042");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_216_TimeElapsed,
    });
    self.box_SpawnAI_162 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1153378995");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_162_Out,
    });
    self.box_GetEntityInPrefab_v2_99 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1183410211");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_99_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_99_Out,
    });
    self.box_PositionModifier_v2_146 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1193612478");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_146_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_146_StartOut,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1206651281");
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
    self.box_PositionModifier_v2_79 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1237008773");
    l0:SetConnections({
    });
    self.box_GetEntityInPrefab_v2_86 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1252391980");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_86_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_86_Out,
    });
    self.box_GetEntityInPrefab_v2_189 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1258263745");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_189_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_189_Out,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1260783240");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_Bind_v4_23 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1268485667");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_23_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_23_UnBound,
    });
    self.box_GetEntityInPrefab_v2_31 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1335802688");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_31_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_31_Out,
    });
    self.box_GetEntityInPrefab_v2_61 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1343161372");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_61_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_61_Out,
    });
    self.box_SpawnAI_1 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1394554515");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_1_Out,
    });
    self.box_GetEntityInPrefab_v2_18 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1399713796");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_18_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_18_Out,
    });
    self.box_PositionModifier_v2_135 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1408966261");
    l0:SetConnections({
    });
    self.box_MultipleOR_188 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1451373496");
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
    self.box_SoundModifier_v2_6 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1455220809");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_84 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1535356457");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_84_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_84_Enabled,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_84_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_84_OnOccupied,
    });
    self.box_Bind_v4_14 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1569731704");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_14_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_14_UnBound,
    });
    self.box_PlayDialog_v6_116 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1570480661");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_116_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_116_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_176 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1595234321");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_176_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_176_FinishedInterrupted,
    });
    self.box_SoundModifier_v2_5 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1610736384");
    l0:SetConnections({
    });
    self.box_ListReader_62 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1642017559");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_62_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_62_Out,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1655358666");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_GetEntityInPrefab_v2_101 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1671433887");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_101_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_101_Out,
    });
    self.box_Random_126 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1694902060");
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
                [0] = self.f_box_Random_126_Output_0,
                [1] = self.f_box_Random_126_Output_1,
                [2] = self.f_box_Random_126_Output_2,
                [3] = self.f_box_Random_126_Output_3,
                [4] = self.f_box_Random_126_Output_4,
            },
            count = 5,
        },
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1705027629");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_80_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_PlayDialog_v6_163 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1748924148");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_163_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_163_FinishedInterrupted,
    });
    self.box_PositionModifier_v2_133 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1777684231");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_133_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_133_StartOut,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1805412955");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_115_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_115_FinishedInterrupted,
    });
    self.box_PositionModifier_v2_108 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1806845831");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_108_Done,
    });
    self.box_GetEntityInPrefab_v2_52 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1816468263");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_52_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_52_Out,
    });
    self.box_ContextualActionListener_104 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1824090665");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_104_Disabled,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_104_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_104_Markup2,
    });
    self.box_Bind_v4_153 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1827981867");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_153_Bound,
    });
    self.box_GetEntityInPrefab_v2_45 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1840178218");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_45_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_45_Out,
    });
    self.box_SpawnAI_38 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1910885777");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_38_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_38_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_38_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_38_Success,
    });
    self.box_PlayDialog_v6_178 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1930228301");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_178_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_178_FinishedInterrupted,
    });
    self.box_GetEntityInPrefab_v2_44 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2002966014");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_44_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_44_Out,
    });
    self.box_MultipleOR_209 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2007937259");
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
        [0] = self.f_box_MultipleOR_209_Out,
    });
    self.box_GetEntityInPrefab_v2_93 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2015784065");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_93_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_93_Out,
    });
    self.box_PositionModifier_v2_11 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2017314901");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_92 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2036477688");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_92_Loaded,
    });
    self.box_GetEntityInPrefab_v2_109 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2043358959");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_109_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_109_Out,
    });
    self.box_SpawnAI_161 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2052536322");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_161_Out,
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2073764734");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2079172266");
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
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2089558549");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_9_Out,
    });
    self.box_PlayDialog_v6_177 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2108078670");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_177_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_177_FinishedInterrupted,
    });
    self.box_Delay_v5_215 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2120669025");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_215_TimeElapsed,
    });
end;

function export:Activate_Faith()
    local params, l0;
    params = self:OnEnter_box_SetBoolean_v2_40();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|846916525", "846916525", "LT03_040_B01_Clone_Manager", "Activate_Faith", "box_SetBoolean_v2_40.FromBool", self, l0:GetLuaBox());
    -- FromBool
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:Desactivate_Faith()
    local params, l0;
    params = self:OnEnter_box_StimsEmitter_v2_64();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2124019960", "2124019960", "LT03_040_B01_Clone_Manager", "Desactivate_Faith", "box_StimsEmitter_v2_64.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Faith_Attack()
    local params, l0;
    params = self:OnEnter_box_Compare_Boolean_26();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1562682216", "1562682216", "LT03_040_B01_Clone_Manager", "Faith_Attack", "box_Compare_Boolean_26.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Initialize()
    local params, l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_4();
    l0 = self.box_GetEntityInPrefab_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2085334429", "2085334429", "LT03_040_B01_Clone_Manager", "Initialize", "box_GetEntityInPrefab_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|514875565", "514875565", "LT03_040_B01_Clone_Manager", "box_Simple_Node_73.Out", "Faith_Activated", clone:GetLuaBox(), self);
    self:Faith_Activated();
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_29();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|288000666", "288000666", "LT03_040_B01_Clone_Manager", "box_Simple_Node_39.Out", "box_ListWriter_v2_29.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1126562866", "1126562866", "LT03_040_B01_Clone_Manager", "box_Simple_Node_39.Out", "Clone_Killed_OUT", clone:GetLuaBox(), self);
    self:Clone_Killed_OUT();
    params = self:OnEnter_box_SoundModifier_v2_6();
    l0 = self.box_SoundModifier_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|343838031", "343838031", "LT03_040_B01_Clone_Manager", "box_Simple_Node_39.Out", "box_SoundModifier_v2_6.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|919002616", "919002616", "LT03_040_B01_Clone_Manager", "box_Simple_Node_39.Out", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|748334546", "748334546", "LT03_040_B01_Clone_Manager", "box_Simple_Node_72.Out", "Faith_Desactivated", clone:GetLuaBox(), self);
    self:Faith_Desactivated();
    l0 = self.box_OnceOnly_v3_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1606718989", "1606718989", "LT03_040_B01_Clone_Manager", "box_Simple_Node_72.Out", "box_OnceOnly_v3_155.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    l0 = self.box_OnceOnly_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1666701218", "1666701218", "LT03_040_B01_Clone_Manager", "box_Simple_Node_72.Out", "box_OnceOnly_v3_3.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_2();
    l0 = self.box_HealthListener_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1608305365", "1608305365", "LT03_040_B01_Clone_Manager", "box_Simple_Node_12.Out", "box_HealthListener_v6_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_89();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1101137198", "1101137198", "LT03_040_B01_Clone_Manager", "box_Simple_Node_71.Out", "box_IsValueNil_v3_89.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1478668773", "1478668773", "LT03_040_B01_Clone_Manager", "box_Simple_Node_71.Out", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|300427291", "300427291", "LT03_040_B01_Clone_Manager", "box_Simple_Node_70.Out", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_IsValueNil_v3_96();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1447106874", "1447106874", "LT03_040_B01_Clone_Manager", "box_Simple_Node_70.Out", "box_IsValueNil_v3_96.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_88_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_54();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|754665703", "754665703", "LT03_040_B01_Clone_Manager", "box_Simple_Node_88.Out", "box_GetPlayerGroup_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_180_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_145();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|175221979", "175221979", "LT03_040_B01_Clone_Manager", "box_Simple_Node_180.Out", "box_IntegerArithmetics_v2_145.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    l0 = self.box_OnceOnly_v3_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1876589709", "1876589709", "LT03_040_B01_Clone_Manager", "box_Simple_Node_180.Out", "box_OnceOnly_v3_174.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReset_68();
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|820693300", "820693300", "LT03_040_B01_Clone_Manager", "box_Simple_Node_75.Out", "box_ListReset_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReset_66();
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|715219445", "715219445", "LT03_040_B01_Clone_Manager", "box_Simple_Node_74.Out", "box_ListReset_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_172_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|314330151", "314330151", "LT03_040_B01_Clone_Manager", "box_Simple_Node_172.Out", "box_OnceOnly_v3_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_181_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_208();
    l0 = self.box_IndexList_v2_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|635654573", "635654573", "LT03_040_B01_Clone_Manager", "box_Simple_Node_181.Out", "box_IndexList_v2_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_5();
    l0 = self.box_SoundModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1334720089", "1334720089", "LT03_040_B01_Clone_Manager", "box_Simple_Node_91.Out", "box_SoundModifier_v2_5.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_32_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_32_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_21();
    l0 = self.box_GetEntityInPrefab_v2_32;
    l1 = self.box_GetEntityInPrefab_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|297927071", "297927071", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_32.Out", "box_GetEntityInPrefab_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_167_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_167_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1205964338", "1205964338", "LT03_040_B01_Clone_Manager", "box_IntegerArithmetics_v2_167.Out", "box_MultipleOR_168.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_81_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_113();
    l0 = self.box_PositionModifier_v2_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2082419855", "2082419855", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_81.A_is_False", "box_PositionModifier_v2_113.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_81_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|562585840", "562585840", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_81.A_is_True", "box_OutputOrder_v2_156.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_50_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_50_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_59();
    l0 = self.box_GetEntityInPrefab_v2_50;
    l1 = self.box_GetEntityInPrefab_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1320942684", "1320942684", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_50.Out", "box_GetEntityInPrefab_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_36_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_36_Spawned();
    params = self:OnEnter_box_ListReader_129();
    l0 = self.box_SpawnAI_36;
    l1 = self.box_ListReader_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1736082362", "1736082362", "LT03_040_B01_Clone_Manager", "box_SpawnAI_36.Spawned", "box_ListReader_129.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_69_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_76();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|917787569", "917787569", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_69.Stopped", "box_StimsEmitter_v2_76.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_4_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_4_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_86();
    l0 = self.box_GetEntityInPrefab_v2_4;
    l1 = self.box_GetEntityInPrefab_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1891821704", "1891821704", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_4.Out", "box_GetEntityInPrefab_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_119_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_163();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|957776187", "957776187", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_163.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_176();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|864539543", "864539543", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_176.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_120();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|517111733", "517111733", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_120.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_116();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|879889815", "879889815", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_116.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_117();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1971536455", "1971536455", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_117.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_175();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|63754783", "63754783", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_175.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|150091942", "150091942", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_115.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_178();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|12683990", "12683990", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_178.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_177();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1900354690", "1900354690", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_177.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_119_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_118();
    l0 = self.box_Random_119;
    l1 = self.box_PlayDialog_v6_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|148730651", "148730651", "LT03_040_B01_Clone_Manager", "box_Random_119.Output", "box_PlayDialog_v6_118.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_145_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_145_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_158();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|121293692", "121293692", "LT03_040_B01_Clone_Manager", "box_IntegerArithmetics_v2_145.Out", "box_Compare_Integers_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_143_Bound()
    local params, l0;
    params = self:OnEnter_box_Bind_v4_143();
    l0 = self.box_Bind_v4_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1485553836", "1485553836", "LT03_040_B01_Clone_Manager", "box_Bind_v4_143.Bound", "box_Bind_v4_143.UnBind", l0:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_143_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_140();
    l0 = self.box_Bind_v4_143;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1217993009", "1217993009", "LT03_040_B01_Clone_Manager", "box_Bind_v4_143.UnBound", "box_GetDistance_140.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = self.box_MultipleOR_112;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|920767675", "920767675", "LT03_040_B01_Clone_Manager", "box_MultipleOR_112.Out", "box_Simple_Node_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_2_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = self.box_HealthListener_v6_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1817820822", "1817820822", "LT03_040_B01_Clone_Manager", "box_HealthListener_v6_2.Disabled", "box_Simple_Node_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = self.box_HealthListener_v6_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1352858167", "1352858167", "LT03_040_B01_Clone_Manager", "box_HealthListener_v6_2.Enabled", "box_Simple_Node_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_2_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = self.box_HealthListener_v6_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|682273894", "682273894", "LT03_040_B01_Clone_Manager", "box_HealthListener_v6_2.Killed", "box_Simple_Node_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_89_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_124();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|828360746", "828360746", "LT03_040_B01_Clone_Manager", "box_IsValueNil_v3_89.No", "box_ParticleSystem_v3_124.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_59_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_59_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_82();
    l0 = self.box_GetEntityInPrefab_v2_59;
    l1 = self.box_GetEntityInPrefab_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1899615968", "1899615968", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_59.Out", "box_GetEntityInPrefab_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetPosition_207_Out()
    local params, l0;
    self:OnExit_box_GetPosition_207_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_206();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1537329161", "1537329161", "LT03_040_B01_Clone_Manager", "box_GetPosition_207.Out", "box_FloatArithmetics_v2_206.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_33_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_217();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|140554092", "140554092", "LT03_040_B01_Clone_Manager", "box_DynamicLightModifier_33.Disabled", "box_ParticleSystem_v3_217.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_169_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1012417979", "1012417979", "LT03_040_B01_Clone_Manager", "box_OutputOrder_v2_169.Out", "box_MultipleOR_168.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_169_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1790017654", "1790017654", "LT03_040_B01_Clone_Manager", "box_OutputOrder_v2_169.Out", "box_Simple_Node_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetFromGroup_195_Out()
    local params, l0;
    self:OnExit_box_GetFromGroup_195_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListGetRandom_193();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|946383653", "946383653", "LT03_040_B01_Clone_Manager", "box_GetFromGroup_195.Out", "box_ListGetRandom_193.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_83_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_23();
    l0 = self.box_IndexList_v2_83;
    l1 = self.box_Bind_v4_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1995344088", "1995344088", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_83.Output", "box_Bind_v4_23.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_83_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_143();
    l0 = self.box_IndexList_v2_83;
    l1 = self.box_Bind_v4_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1306881841", "1306881841", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_83.Output", "box_Bind_v4_143.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_83_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_IndexList_v2_83;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1613278254", "1613278254", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_83.Output", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_155_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_97();
    l0 = self.box_OnceOnly_v3_155;
    l1 = self.box_ContextualActionListener_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|397333950", "397333950", "LT03_040_B01_Clone_Manager", "box_OnceOnly_v3_155.Out", "box_ContextualActionListener_97.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_155_ResetOut()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_97();
    l0 = self.box_OnceOnly_v3_155;
    l1 = self.box_ContextualActionListener_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1378460604", "1378460604", "LT03_040_B01_Clone_Manager", "box_OnceOnly_v3_155.ResetOut", "box_ContextualActionListener_97.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_97_Disabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_97;
    l1 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|679341625", "679341625", "LT03_040_B01_Clone_Manager", "box_ContextualActionListener_97.Disabled", "box_MultipleOR_105.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_97_Markup1()
    local l0, l1;
    l0 = self.box_ContextualActionListener_97;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|309911095", "309911095", "LT03_040_B01_Clone_Manager", "box_ContextualActionListener_97.Markup1", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_97_Markup2()
    local l0, l1;
    l0 = self.box_ContextualActionListener_97;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|494016895", "494016895", "LT03_040_B01_Clone_Manager", "box_ContextualActionListener_97.Markup2", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_183_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_166();
    l0 = self.box_MultipleOR_183;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1769529655", "1769529655", "LT03_040_B01_Clone_Manager", "box_MultipleOR_183.Out", "box_Compare_Integers_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_159();
    l0 = self.box_MultipleOR_105;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1069385056", "1069385056", "LT03_040_B01_Clone_Manager", "box_MultipleOR_105.Out", "box_SetInteger_v2_159.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_168_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_126();
    l0 = self.box_MultipleOR_168;
    l1 = self.box_Random_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|729166460", "729166460", "LT03_040_B01_Clone_Manager", "box_MultipleOR_168.Out", "box_Random_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_102_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_102_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_125();
    l0 = self.box_GetEntityInPrefab_v2_102;
    l1 = self.box_GetEntityInPrefab_v2_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|359325947", "359325947", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_102.Out", "box_GetEntityInPrefab_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_FloatArithmetics_v2_149_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_149_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_144();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|684941838", "684941838", "LT03_040_B01_Clone_Manager", "box_FloatArithmetics_v2_149.Out", "box_ParticleSystem_v3_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_117_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_117;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2059179644", "2059179644", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_117.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_PlayDialog_v6_117_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_117;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1426367639", "1426367639", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_117.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_GetEntityInPrefab_v2_90_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_90_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_27();
    l0 = self.box_GetEntityInPrefab_v2_90;
    l1 = self.box_GetEntityInPrefab_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|367051817", "367051817", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_90.Out", "box_GetEntityInPrefab_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_3_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_104();
    l0 = self.box_OnceOnly_v3_3;
    l1 = self.box_ContextualActionListener_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|12378988", "12378988", "LT03_040_B01_Clone_Manager", "box_OnceOnly_v3_3.Out", "box_ContextualActionListener_104.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_3_ResetOut()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_104();
    l0 = self.box_OnceOnly_v3_3;
    l1 = self.box_ContextualActionListener_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|768893163", "768893163", "LT03_040_B01_Clone_Manager", "box_OnceOnly_v3_3.ResetOut", "box_ContextualActionListener_104.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_8_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_144();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|188677043", "188677043", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_8.Started", "box_ParticleSystem_v3_144.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_21_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_21_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_52();
    l0 = self.box_GetEntityInPrefab_v2_21;
    l1 = self.box_GetEntityInPrefab_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|84417472", "84417472", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_21.Out", "box_GetEntityInPrefab_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_BindMarkerOverHead_v2_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_111();
    l0 = self.box_BindMarkerOverHead_v2_122;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|258531214", "258531214", "LT03_040_B01_Clone_Manager", "box_BindMarkerOverHead_v2_122.Out", "box_ActivityObjectiveMarkerModifier_v3_111.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CameraShakeAndRumble_V2_134_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1278977997", "1278977997", "LT03_040_B01_Clone_Manager", "box_CameraShakeAndRumble_V2_134.Out", "box_ParticleSystem_v3_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_196_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetFromGroup_195();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1887251512", "1887251512", "LT03_040_B01_Clone_Manager", "box_Compare_Integers_196.A_ge_B", "box_GetFromGroup_195.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_196_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|600223490", "600223490", "LT03_040_B01_Clone_Manager", "box_Compare_Integers_196.A_lt_B", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_41_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_185();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1623640292", "1623640292", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_41.A_is_False", "box_ParticleSystem_v3_185.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_41_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_25();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1868005923", "1868005923", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_41.A_is_True", "box_ParticleSystem_v3_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_138_Done()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_139();
    l0 = self.box_PositionModifier_v2_138;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2118824300", "2118824300", "LT03_040_B01_Clone_Manager", "box_PositionModifier_v2_138.Done", "box_CameraShakeAndRumble_V2_139.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_138_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_79();
    l0 = self.box_PositionModifier_v2_138;
    l1 = self.box_PositionModifier_v2_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|24329031", "24329031", "LT03_040_B01_Clone_Manager", "box_PositionModifier_v2_138.StartOut", "box_PositionModifier_v2_79.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_201_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_201_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_200();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|748823328", "748823328", "LT03_040_B01_Clone_Manager", "box_FloatArithmetics_v2_201.Out", "box_CreateVector3_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_120_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_120;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|906285420", "906285420", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_120.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_120_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_120;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|807684245", "807684245", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_120.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_GetEntityInPrefab_v2_53_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_53_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_58();
    l0 = self.box_GetEntityInPrefab_v2_53;
    l1 = self.box_GetEntityInPrefab_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|766976401", "766976401", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_53.Out", "box_GetEntityInPrefab_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_173_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_180();
    l0 = self.box_Delay_v5_173;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1880366105", "1880366105", "LT03_040_B01_Clone_Manager", "box_Delay_v5_173.TimeElapsed", "box_Simple_Node_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_123_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_123_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_31();
    l0 = self.box_GetEntityInPrefab_v2_123;
    l1 = self.box_GetEntityInPrefab_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|609350462", "609350462", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_123.Out", "box_GetEntityInPrefab_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_14();
    l0 = self.box_Bind_v4_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1650176973", "1650176973", "LT03_040_B01_Clone_Manager", "box_OutputOrder_v2_13.Out", "box_Bind_v4_14.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_152();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1404278937", "1404278937", "LT03_040_B01_Clone_Manager", "box_OutputOrder_v2_13.Out", "box_SetInteger_v2_152.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_15_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|18952605", "18952605", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_15.Started", "box_MultipleOR_188.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ListReset_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_212();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2057938363", "2057938363", "LT03_040_B01_Clone_Manager", "box_ListReset_68.Out", "box_ParticleSystem_v3_212.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_185_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_210();
    l0 = self.box_Delay_v5_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|206837372", "206837372", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_185.Started", "box_Delay_v5_210.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_175_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_175;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|774568136", "774568136", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_175.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_PlayDialog_v6_175_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_175;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|73778119", "73778119", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_175.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_ParticleSystem_v3_217_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_35();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|613816748", "613816748", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_217.Started", "box_HealthModifier_v2_35.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_87_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_87_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_67();
    l0 = self.box_GetEntityInPrefab_v2_87;
    l1 = self.box_GetEntityInPrefab_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1301124707", "1301124707", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_87.Out", "box_GetEntityInPrefab_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_FloatArithmetics_v2_141_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_141_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_137();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1521560782", "1521560782", "LT03_040_B01_Clone_Manager", "box_FloatArithmetics_v2_141.Out", "box_ParticleSystem_v3_137.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_113_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_211();
    l0 = self.box_PositionModifier_v2_113;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|874722454", "874722454", "LT03_040_B01_Clone_Manager", "box_PositionModifier_v2_113.Done", "box_ParticleSystem_v3_211.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_220_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_220_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1487715207", "1487715207", "LT03_040_B01_Clone_Manager", "box_SetEntity_v2_220.Out", "box_MultipleOR_222.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_128_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_BindMarkerOverHead_v2_122();
    l0 = self.box_EntityStatusListener_128;
    l1 = self.box_BindMarkerOverHead_v2_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1649302518", "1649302518", "LT03_040_B01_Clone_Manager", "box_EntityStatusListener_128.Loaded", "box_BindMarkerOverHead_v2_122.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_60_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_43();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|114425821", "114425821", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_60.Stopped", "box_DynamicLightModifier_43.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_210_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = self.box_Delay_v5_210;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2049964814", "2049964814", "LT03_040_B01_Clone_Manager", "box_Delay_v5_210.TimeElapsed", "box_Simple_Node_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_150_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_207();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|775369963", "775369963", "LT03_040_B01_Clone_Manager", "box_StimsEmitter_v2_150.Enabled", "box_GetPosition_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_57();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1069946628", "1069946628", "LT03_040_B01_Clone_Manager", "box_MultipleOR_37.Out", "box_StimsEmitter_v2_57.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_127_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_131();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1191639017", "1191639017", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_127.Cleaned", "box_StimsEmitter_v2_131.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_127_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_131();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|217254312", "217254312", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_127.Started", "box_StimsEmitter_v2_131.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_127_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_127();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|512612006", "512612006", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_127.Stopped", "box_ParticleSystem_v3_127.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_77_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_41();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1277540278", "1277540278", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_77.A_is_False", "box_Compare_Boolean_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_77_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_184();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|238954148", "238954148", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_77.A_is_True", "box_ParticleSystem_v3_184.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_211_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_100();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|389301416", "389301416", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_211.Started", "box_DynamicLightModifier_100.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_82_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_82_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_109();
    l0 = self.box_GetEntityInPrefab_v2_82;
    l1 = self.box_GetEntityInPrefab_v2_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|353536110", "353536110", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_82.Out", "box_GetEntityInPrefab_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_54_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_84();
    l0 = self.box_ProximityTrigger_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|864911969", "864911969", "LT03_040_B01_Clone_Manager", "box_GetPlayerGroup_v2_54.Out", "box_ProximityTrigger_v2_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_106_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_106_Out();
    params = self:OnEnter_box_Bind_v4_51();
    l0 = self.box_GetEntityInPrefab_v2_106;
    l1 = self.box_Bind_v4_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|465029445", "465029445", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_106.Out", "box_Bind_v4_51.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_65_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_65_Spawned();
    params = self:OnEnter_box_ListReader_63();
    l0 = self.box_SpawnAI_65;
    l1 = self.box_ListReader_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|42838987", "42838987", "LT03_040_B01_Clone_Manager", "box_SpawnAI_65.Spawned", "box_ListReader_63.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_131_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_199();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|948576430", "948576430", "LT03_040_B01_Clone_Manager", "box_StimsEmitter_v2_131.Enabled", "box_GetPosition_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_144_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_150();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1334921119", "1334921119", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_144.Cleaned", "box_StimsEmitter_v2_150.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_144_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_150();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|480024022", "480024022", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_144.Started", "box_StimsEmitter_v2_150.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_144_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_144();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|803438867", "803438867", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_144.Stopped", "box_ParticleSystem_v3_144.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_58_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_58_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_44();
    l0 = self.box_GetEntityInPrefab_v2_58;
    l1 = self.box_GetEntityInPrefab_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|654746678", "654746678", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_58.Out", "box_GetEntityInPrefab_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_51_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_153();
    l0 = self.box_Bind_v4_51;
    l1 = self.box_Bind_v4_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|765210503", "765210503", "LT03_040_B01_Clone_Manager", "box_Bind_v4_51.Bound", "box_Bind_v4_153.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_84();
    l0 = self.box_MultipleOR_78;
    l1 = self.box_ProximityTrigger_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|620546338", "620546338", "LT03_040_B01_Clone_Manager", "box_MultipleOR_78.Out", "box_ProximityTrigger_v2_84.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_159_Out()
    self:OnExit_box_SetInteger_v2_159_Out();
end;

function export:f_box_MultipleOR_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_173();
    l0 = self.box_MultipleOR_121;
    l1 = self.box_Delay_v5_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|100865804", "100865804", "LT03_040_B01_Clone_Manager", "box_MultipleOR_121.Out", "box_Delay_v5_173.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetEntityInPrefab_v2_94_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_94_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_50();
    l0 = self.box_GetEntityInPrefab_v2_94;
    l1 = self.box_GetEntityInPrefab_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|279859683", "279859683", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_94.Out", "box_GetEntityInPrefab_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ListReader_129_Out()
    local params, l0, l1;
    self:OnExit_box_ListReader_129_Out();
    params = self:OnEnter_box_EntityStatusListener_128();
    l0 = self.box_ListReader_129;
    l1 = self.box_EntityStatusListener_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1508717742", "1508717742", "LT03_040_B01_Clone_Manager", "box_ListReader_129.Out", "box_EntityStatusListener_128.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_158_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_160();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1337722727", "1337722727", "LT03_040_B01_Clone_Manager", "box_Compare_Integers_158.A_ge_B", "box_SetInteger_v2_160.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_107_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_108();
    l0 = self.box_PositionModifier_v2_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|139547660", "139547660", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_107.Started", "box_PositionModifier_v2_108.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_107_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_157();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1189534062", "1189534062", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_107.Stopped", "box_ParticleSystem_v3_157.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_160_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_160_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_119();
    l0 = self.box_Random_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|935216952", "935216952", "LT03_040_B01_Clone_Manager", "box_SetInteger_v2_160.Out", "box_Random_119.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_BindMarkerOverHead_v2_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_30();
    l0 = self.box_BindMarkerOverHead_v2_110;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1932964735", "1932964735", "LT03_040_B01_Clone_Manager", "box_BindMarkerOverHead_v2_110.Out", "box_HealthModifier_v2_30.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_27_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_27_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_53();
    l0 = self.box_GetEntityInPrefab_v2_27;
    l1 = self.box_GetEntityInPrefab_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1958479834", "1958479834", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_27.Out", "box_GetEntityInPrefab_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_222_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetFaithTarget_221();
    l0 = self.box_MultipleOR_222;
    l1 = Boxes[GetPathID("Domino/System/SetFaithTarget.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|618512146", "618512146", "LT03_040_B01_Clone_Manager", "box_MultipleOR_222.Out", "box_SetFaithTarget_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetValueNil_98_Out()
    local params, l0;
    self:OnExit_box_SetValueNil_98_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|64174059", "64174059", "LT03_040_B01_Clone_Manager", "box_SetValueNil_98.Out", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetValueNil_98();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1274794597", "1274794597", "LT03_040_B01_Clone_Manager", "box_SetBoolean_v2_28.Out", "box_SetValueNil_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_55_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_2();
    l0 = self.box_EntityStatusListener_55;
    l1 = self.box_HealthListener_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1011937018", "1011937018", "LT03_040_B01_Clone_Manager", "box_EntityStatusListener_55.Loaded", "box_HealthListener_v6_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_57_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|513959638", "513959638", "LT03_040_B01_Clone_Manager", "box_StimsEmitter_v2_57.Enabled", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetDistance_140_Out()
    local params, l0;
    self:OnExit_box_GetDistance_140_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_141();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1242380972", "1242380972", "LT03_040_B01_Clone_Manager", "box_GetDistance_140.Out", "box_FloatArithmetics_v2_141.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_154_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_114();
    l0 = self.box_Bind_v4_154;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2076676325", "2076676325", "LT03_040_B01_Clone_Manager", "box_Bind_v4_154.Bound", "box_DynamicLightModifier_114.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_40_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_77();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1205085666", "1205085666", "LT03_040_B01_Clone_Manager", "box_SetBoolean_v2_40.Out", "box_Compare_Boolean_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_118_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_118;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1761449567", "1761449567", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_118.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 18);
end;

function export:f_box_PlayDialog_v6_118_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_118;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|983631437", "983631437", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_118.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 19);
end;

function export:f_box_GetDistance_148_Out()
    local params, l0;
    self:OnExit_box_GetDistance_148_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_149();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1624497015", "1624497015", "LT03_040_B01_Clone_Manager", "box_GetDistance_148.Out", "box_FloatArithmetics_v2_149.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_206_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_206_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_205();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1820525369", "1820525369", "LT03_040_B01_Clone_Manager", "box_FloatArithmetics_v2_206.Out", "box_CreateVector3_205.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_22_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_137();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1924511574", "1924511574", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_22.Started", "box_ParticleSystem_v3_137.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_46_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_46;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2038264693", "2038264693", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_46.Output", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_46_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_46;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|961145516", "961145516", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_46.Output", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_46_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_46;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|490454130", "490454130", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_46.Output", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IndexList_v2_46_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_46;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1157911360", "1157911360", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_46.Output", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetEntityInPrefab_v2_125_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_125_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_61();
    l0 = self.box_GetEntityInPrefab_v2_125;
    l1 = self.box_GetEntityInPrefab_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2029027275", "2029027275", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_125.Out", "box_GetEntityInPrefab_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_137_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_142();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1599352571", "1599352571", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_137.Cleaned", "box_StimsEmitter_v2_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_137_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_142();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1357974198", "1357974198", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_137.Started", "box_StimsEmitter_v2_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_137_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_137();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|470597169", "470597169", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_137.Stopped", "box_ParticleSystem_v3_137.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_218_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListLength_v2_219();
    l0 = self.box_MultipleOR_218;
    l1 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|453508041", "453508041", "LT03_040_B01_Clone_Manager", "box_MultipleOR_218.Out", "box_ListLength_v2_219.GetLength", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetLength
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_100_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_215();
    l0 = self.box_Delay_v5_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1330647071", "1330647071", "LT03_040_B01_Clone_Manager", "box_DynamicLightModifier_100.Enabled", "box_Delay_v5_215.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_164_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_164;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1990360783", "1990360783", "LT03_040_B01_Clone_Manager", "box_SpawnAI_164.Out", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetEntityInPrefab_v2_67_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_67_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_123();
    l0 = self.box_GetEntityInPrefab_v2_67;
    l1 = self.box_GetEntityInPrefab_v2_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1048303851", "1048303851", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_67.Out", "box_GetEntityInPrefab_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_DynamicLightModifier_56_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_169();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1967646391", "1967646391", "LT03_040_B01_Clone_Manager", "box_DynamicLightModifier_56.Disabled", "box_OutputOrder_v2_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_194_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|733460964", "733460964", "LT03_040_B01_Clone_Manager", "box_HealthModifier_v2_194.Damaged", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ListReader_63_Out()
    local params, l0, l1;
    self:OnExit_box_ListReader_63_Out();
    params = self:OnEnter_box_EntityStatusListener_55();
    l0 = self.box_ListReader_63;
    l1 = self.box_EntityStatusListener_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1868113288", "1868113288", "LT03_040_B01_Clone_Manager", "box_ListReader_63.Out", "box_EntityStatusListener_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CreateVector3_200_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_200_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_133();
    l0 = self.box_PositionModifier_v2_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|601762978", "601762978", "LT03_040_B01_Clone_Manager", "box_CreateVector3_200.Out", "box_PositionModifier_v2_133.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ListWriter_v2_17_Added()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1109169120", "1109169120", "LT03_040_B01_Clone_Manager", "box_ListWriter_v2_17.Added", "Initialized", clone:GetLuaBox(), self);
    self:Initialized();
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_151();
    l0 = self.box_MultipleOR_103;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1884162653", "1884162653", "LT03_040_B01_Clone_Manager", "box_MultipleOR_103.Out", "box_IntegerArithmetics_v2_151.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_186_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_187();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|88431530", "88431530", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_186.A_is_False", "box_ParticleSystem_v3_187.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_186_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_15();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|44863605", "44863605", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_186.A_is_True", "box_ParticleSystem_v3_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_174_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Random_119();
    l0 = self.box_OnceOnly_v3_174;
    l1 = self.box_Random_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1692833409", "1692833409", "LT03_040_B01_Clone_Manager", "box_OnceOnly_v3_174.Out", "box_Random_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_214_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_36();
    l0 = self.box_Delay_v5_214;
    l1 = self.box_SpawnAI_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1093788361", "1093788361", "LT03_040_B01_Clone_Manager", "box_Delay_v5_214.TimeElapsed", "box_SpawnAI_36.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_107();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|803978856", "803978856", "LT03_040_B01_Clone_Manager", "box_OutputOrder_v2_156.Out", "box_ParticleSystem_v3_107.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_172();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1225409975", "1225409975", "LT03_040_B01_Clone_Manager", "box_OutputOrder_v2_156.Out", "box_Simple_Node_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_204_Out()
    local params, l0;
    self:OnExit_box_GetPosition_204_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_203();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1423007420", "1423007420", "LT03_040_B01_Clone_Manager", "box_GetPosition_204.Out", "box_FloatArithmetics_v2_203.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_208_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_208;
    l1 = self.box_MultipleOR_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|727651572", "727651572", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_208.Output", "box_MultipleOR_209.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_208_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_208;
    l1 = self.box_MultipleOR_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|176900151", "176900151", "LT03_040_B01_Clone_Manager", "box_IndexList_v2_208.Output", "box_MultipleOR_209.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetEntityInPrefab_v2_7_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_7_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_18();
    l0 = self.box_GetEntityInPrefab_v2_7;
    l1 = self.box_GetEntityInPrefab_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|982801909", "982801909", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_7.Out", "box_GetEntityInPrefab_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_76_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_46();
    l0 = self.box_IndexList_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|172942615", "172942615", "LT03_040_B01_Clone_Manager", "box_StimsEmitter_v2_76.Disabled", "box_IndexList_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetFromGroup_191_Out()
    local params, l0;
    self:OnExit_box_GetFromGroup_191_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListGetRandom_192();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|248942160", "248942160", "LT03_040_B01_Clone_Manager", "box_GetFromGroup_191.Out", "box_ListGetRandom_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_171_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_170();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1809156519", "1809156519", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_171.Started", "box_Compare_Integers_170.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_181();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|665705916", "665705916", "LT03_040_B01_Clone_Manager", "box_Delay_v5_34.Started", "box_Simple_Node_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_57();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1531808404", "1531808404", "LT03_040_B01_Clone_Manager", "box_Delay_v5_34.TimeElapsed", "box_StimsEmitter_v2_57.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetDistance_130_Out()
    local params, l0;
    self:OnExit_box_GetDistance_130_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_132();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1053333381", "1053333381", "LT03_040_B01_Clone_Manager", "box_GetDistance_130.Out", "box_FloatArithmetics_v2_132.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_216_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_65();
    l0 = self.box_Delay_v5_216;
    l1 = self.box_SpawnAI_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1971361325", "1971361325", "LT03_040_B01_Clone_Manager", "box_Delay_v5_216.TimeElapsed", "box_SpawnAI_65.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_162_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_162;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|27913846", "27913846", "LT03_040_B01_Clone_Manager", "box_SpawnAI_162.Out", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_CreateVector3_205_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_205_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_146();
    l0 = self.box_PositionModifier_v2_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1073089999", "1073089999", "LT03_040_B01_Clone_Manager", "box_CreateVector3_205.Out", "box_PositionModifier_v2_146.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_99_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_99_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_106();
    l0 = self.box_GetEntityInPrefab_v2_99;
    l1 = self.box_GetEntityInPrefab_v2_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1331537138", "1331537138", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_99.Out", "box_GetEntityInPrefab_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_146_Done()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_147();
    l0 = self.box_PositionModifier_v2_146;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1379301623", "1379301623", "LT03_040_B01_Clone_Manager", "box_PositionModifier_v2_146.Done", "box_CameraShakeAndRumble_V2_147.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_146_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_11();
    l0 = self.box_PositionModifier_v2_146;
    l1 = self.box_PositionModifier_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1401323526", "1401323526", "LT03_040_B01_Clone_Manager", "box_PositionModifier_v2_146.StartOut", "box_PositionModifier_v2_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_56();
    l0 = self.box_MultipleOR_198;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|535217582", "535217582", "LT03_040_B01_Clone_Manager", "box_MultipleOR_198.Out", "box_DynamicLightModifier_56.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_96_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_95();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1488432726", "1488432726", "LT03_040_B01_Clone_Manager", "box_IsValueNil_v3_96.No", "box_ActivityObjectiveMarkerModifier_v3_95.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_165_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_165_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_126();
    l0 = self.box_Random_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1587466803", "1587466803", "LT03_040_B01_Clone_Manager", "box_SetInteger_v2_165.Out", "box_Random_126.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_86_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_86_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_90();
    l0 = self.box_GetEntityInPrefab_v2_86;
    l1 = self.box_GetEntityInPrefab_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1805504142", "1805504142", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_86.Out", "box_GetEntityInPrefab_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_189_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_189_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_32();
    l0 = self.box_GetEntityInPrefab_v2_189;
    l1 = self.box_GetEntityInPrefab_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1302742439", "1302742439", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_189.Out", "box_GetEntityInPrefab_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_142_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_204();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|962732278", "962732278", "LT03_040_B01_Clone_Manager", "box_StimsEmitter_v2_142.Enabled", "box_GetPosition_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_171();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|235647384", "235647384", "LT03_040_B01_Clone_Manager", "box_MultipleOR_47.Out", "box_ParticleSystem_v3_171.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_23_Bound()
    local params, l0;
    params = self:OnEnter_box_Bind_v4_23();
    l0 = self.box_Bind_v4_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1898257265", "1898257265", "LT03_040_B01_Clone_Manager", "box_Bind_v4_23.Bound", "box_Bind_v4_23.UnBind", l0:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_23_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_130();
    l0 = self.box_Bind_v4_23;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|514378726", "514378726", "LT03_040_B01_Clone_Manager", "box_Bind_v4_23.UnBound", "box_GetDistance_130.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_157_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_16();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|925996668", "925996668", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_157.Started", "box_DynamicLightModifier_16.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_212_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_213();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|560233812", "560233812", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_212.Started", "box_DynamicLightModifier_213.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_203_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_203_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_202();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1370694355", "1370694355", "LT03_040_B01_Clone_Manager", "box_FloatArithmetics_v2_203.Out", "box_CreateVector3_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_182_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1530136038", "1530136038", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_182.A_is_True", "box_Simple_Node_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_31_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_31_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_99();
    l0 = self.box_GetEntityInPrefab_v2_31;
    l1 = self.box_GetEntityInPrefab_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|889414366", "889414366", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_31.Out", "box_GetEntityInPrefab_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_61_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_61_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_87();
    l0 = self.box_GetEntityInPrefab_v2_61;
    l1 = self.box_GetEntityInPrefab_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|221992784", "221992784", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_61.Out", "box_GetEntityInPrefab_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_1_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_1;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1863495591", "1863495591", "LT03_040_B01_Clone_Manager", "box_SpawnAI_1.Out", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetEntityInPrefab_v2_18_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_18_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_101();
    l0 = self.box_GetEntityInPrefab_v2_18;
    l1 = self.box_GetEntityInPrefab_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|330843677", "330843677", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_18.Out", "box_GetEntityInPrefab_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_DynamicLightModifier_213_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_216();
    l0 = self.box_Delay_v5_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1746399862", "1746399862", "LT03_040_B01_Clone_Manager", "box_DynamicLightModifier_213.Enabled", "box_Delay_v5_216.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_188_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = self.box_MultipleOR_188;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1275999053", "1275999053", "LT03_040_B01_Clone_Manager", "box_MultipleOR_188.Out", "box_SetBoolean_v2_28.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListGetRandom_192_Out()
    local params, l0;
    self:OnExit_box_ListGetRandom_192_Out();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_190();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|335882599", "335882599", "LT03_040_B01_Clone_Manager", "box_ListGetRandom_192.Out", "box_HealthModifier_v2_190.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_111_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|397614797", "397614797", "LT03_040_B01_Clone_Manager", "box_ActivityObjectiveMarkerModifier_v3_111.Enabled", "box_MultipleOR_112.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_20_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_42();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|16609953", "16609953", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_20.A_is_False", "box_IsValueNil_v3_42.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_20_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_70();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2140774568", "2140774568", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_20.A_is_True", "box_Simple_Node_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_84_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_84;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|696809015", "696809015", "LT03_040_B01_Clone_Manager", "box_ProximityTrigger_v2_84.Disabled", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_84_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_182();
    l0 = self.box_ProximityTrigger_v2_84;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1738512478", "1738512478", "LT03_040_B01_Clone_Manager", "box_ProximityTrigger_v2_84.Enabled", "box_Compare_Boolean_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_84_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_84;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|716913612", "716913612", "LT03_040_B01_Clone_Manager", "box_ProximityTrigger_v2_84.OnEmpty", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_84_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_ProximityTrigger_v2_84;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1358914606", "1358914606", "LT03_040_B01_Clone_Manager", "box_ProximityTrigger_v2_84.OnOccupied", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_170_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetFromGroup_191();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1035925774", "1035925774", "LT03_040_B01_Clone_Manager", "box_Compare_Integers_170.A_ge_B", "box_GetFromGroup_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_170_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1121372584", "1121372584", "LT03_040_B01_Clone_Manager", "box_Compare_Integers_170.A_lt_B", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_187_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1356067960", "1356067960", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_187.Started", "box_MultipleOR_188.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_14_Bound()
    local params, l0;
    params = self:OnEnter_box_Bind_v4_14();
    l0 = self.box_Bind_v4_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|205667920", "205667920", "LT03_040_B01_Clone_Manager", "box_Bind_v4_14.Bound", "box_Bind_v4_14.UnBind", l0:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_14_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_148();
    l0 = self.box_Bind_v4_14;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|567407453", "567407453", "LT03_040_B01_Clone_Manager", "box_Bind_v4_14.UnBound", "box_GetDistance_148.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_116_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_116;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|309355024", "309355024", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_116.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_PlayDialog_v6_116_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_116;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1933574164", "1933574164", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_116.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_StimsEmitter_v2_64_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_20();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1865738510", "1865738510", "LT03_040_B01_Clone_Manager", "box_StimsEmitter_v2_64.Disabled", "box_Compare_Boolean_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_95_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_BindMarkerOverHead_v2_110();
    l0 = self.box_BindMarkerOverHead_v2_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2076495214", "2076495214", "LT03_040_B01_Clone_Manager", "box_ActivityObjectiveMarkerModifier_v3_95.Disabled", "box_BindMarkerOverHead_v2_110.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_176_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_176;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|862218339", "862218339", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_176.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_176_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_176;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1089722542", "1089722542", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_176.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_HealthModifier_v2_190_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|133114268", "133114268", "LT03_040_B01_Clone_Manager", "box_HealthModifier_v2_190.Damaged", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DynamicLightModifier_114_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_17();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1589568029", "1589568029", "LT03_040_B01_Clone_Manager", "box_DynamicLightModifier_114.Disabled", "box_ListWriter_v2_17.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_152_Out()
    self:OnExit_box_SetInteger_v2_152_Out();
end;

function export:f_box_ListReader_62_Out()
    local params, l0, l1;
    self:OnExit_box_ListReader_62_Out();
    params = self:OnEnter_box_EntityStatusListener_92();
    l0 = self.box_ListReader_62;
    l1 = self.box_EntityStatusListener_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1288749217", "1288749217", "LT03_040_B01_Clone_Manager", "box_ListReader_62.Out", "box_EntityStatusListener_92.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = self.box_Delay_v5_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1399885807", "1399885807", "LT03_040_B01_Clone_Manager", "box_Delay_v5_48.TimeElapsed", "box_Simple_Node_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_101_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_101_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_102();
    l0 = self.box_GetEntityInPrefab_v2_101;
    l1 = self.box_GetEntityInPrefab_v2_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1576869305", "1576869305", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_101.Out", "box_GetEntityInPrefab_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_25_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1756312389", "1756312389", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_25.Started", "box_Delay_v5_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ListGetRandom_223_Out()
    local l0;
    self:OnExit_box_ListGetRandom_223_Out();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2033281672", "2033281672", "LT03_040_B01_Clone_Manager", "box_ListGetRandom_223.Out", "box_MultipleOR_222.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_126_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_1();
    l0 = self.box_Random_126;
    l1 = self.box_SpawnAI_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1526034385", "1526034385", "LT03_040_B01_Clone_Manager", "box_Random_126.Output", "box_SpawnAI_1.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_126_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_Random_126;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|209939992", "209939992", "LT03_040_B01_Clone_Manager", "box_Random_126.Output", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_126_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_161();
    l0 = self.box_Random_126;
    l1 = self.box_SpawnAI_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1228769113", "1228769113", "LT03_040_B01_Clone_Manager", "box_Random_126.Output", "box_SpawnAI_161.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_126_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_162();
    l0 = self.box_Random_126;
    l1 = self.box_SpawnAI_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|343728004", "343728004", "LT03_040_B01_Clone_Manager", "box_Random_126.Output", "box_SpawnAI_162.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_126_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_164();
    l0 = self.box_Random_126;
    l1 = self.box_SpawnAI_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|755961221", "755961221", "LT03_040_B01_Clone_Manager", "box_Random_126.Output", "box_SpawnAI_164.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_80_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_80;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|273549303", "273549303", "LT03_040_B01_Clone_Manager", "box_Delay_v5_80.Started", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_80;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|448654816", "448654816", "LT03_040_B01_Clone_Manager", "box_Delay_v5_80.TimeElapsed", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DynamicLightModifier_43_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_186();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1694429304", "1694429304", "LT03_040_B01_Clone_Manager", "box_DynamicLightModifier_43.Disabled", "box_Compare_Boolean_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_151_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_151_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_83();
    l0 = self.box_IndexList_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|821020101", "821020101", "LT03_040_B01_Clone_Manager", "box_IntegerArithmetics_v2_151.Out", "box_IndexList_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ListWriter_v2_29_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|486881941", "486881941", "LT03_040_B01_Clone_Manager", "box_ListWriter_v2_29.Removed", "box_ListWriter_v2_24.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_163_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_163;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1847954471", "1847954471", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_163.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_163_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_163;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|934415685", "934415685", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_163.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CameraShakeAndRumble_V2_147_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_8();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1577320910", "1577320910", "LT03_040_B01_Clone_Manager", "box_CameraShakeAndRumble_V2_147.Out", "box_ParticleSystem_v3_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_24_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_69();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1242997120", "1242997120", "LT03_040_B01_Clone_Manager", "box_ListWriter_v2_24.Added", "box_ParticleSystem_v3_69.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_224_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_224_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_220();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|599361413", "599361413", "LT03_040_B01_Clone_Manager", "box_GetLocalPlayer_v2_224.Out", "box_SetEntity_v2_220.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_214();
    l0 = self.box_Delay_v5_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|84161", "84161", "LT03_040_B01_Clone_Manager", "box_DynamicLightModifier_16.Enabled", "box_Delay_v5_214.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_133_Done()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_134();
    l0 = self.box_PositionModifier_v2_133;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1247734844", "1247734844", "LT03_040_B01_Clone_Manager", "box_PositionModifier_v2_133.Done", "box_CameraShakeAndRumble_V2_134.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_133_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_135();
    l0 = self.box_PositionModifier_v2_133;
    l1 = self.box_PositionModifier_v2_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1538266909", "1538266909", "LT03_040_B01_Clone_Manager", "box_PositionModifier_v2_133.StartOut", "box_PositionModifier_v2_135.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_184_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1032989919", "1032989919", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_184.Started", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CameraShakeAndRumble_V2_139_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_22();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1146515501", "1146515501", "LT03_040_B01_Clone_Manager", "box_CameraShakeAndRumble_V2_139.Out", "box_ParticleSystem_v3_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListLength_v2_219_Empty()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_224();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|507446547", "507446547", "LT03_040_B01_Clone_Manager", "box_ListLength_v2_219.Empty", "box_GetLocalPlayer_v2_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListLength_v2_219_NotEmpty()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListGetRandom_223();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|591815716", "591815716", "LT03_040_B01_Clone_Manager", "box_ListLength_v2_219.NotEmpty", "box_ListGetRandom_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_136_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_127();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2066884148", "2066884148", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_136.Started", "box_ParticleSystem_v3_127.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_115_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1742108154", "1742108154", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_115.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_PlayDialog_v6_115_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1938359846", "1938359846", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_115.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 13);
end;

function export:f_box_PositionModifier_v2_108_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_107();
    l0 = self.box_PositionModifier_v2_108;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1148011688", "1148011688", "LT03_040_B01_Clone_Manager", "box_PositionModifier_v2_108.Done", "box_ParticleSystem_v3_107.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_52_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_52_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_93();
    l0 = self.box_GetEntityInPrefab_v2_52;
    l1 = self.box_GetEntityInPrefab_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|272482099", "272482099", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_52.Out", "box_GetEntityInPrefab_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_104_Disabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_104;
    l1 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|971604954", "971604954", "LT03_040_B01_Clone_Manager", "box_ContextualActionListener_104.Disabled", "box_MultipleOR_105.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_104_Markup1()
    local l0, l1;
    l0 = self.box_ContextualActionListener_104;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|855477560", "855477560", "LT03_040_B01_Clone_Manager", "box_ContextualActionListener_104.Markup1", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_104_Markup2()
    local l0, l1;
    l0 = self.box_ContextualActionListener_104;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|321045545", "321045545", "LT03_040_B01_Clone_Manager", "box_ContextualActionListener_104.Markup2", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_153_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_154();
    l0 = self.box_Bind_v4_153;
    l1 = self.box_Bind_v4_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1023173899", "1023173899", "LT03_040_B01_Clone_Manager", "box_Bind_v4_153.Bound", "box_Bind_v4_154.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_45_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_45_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_189();
    l0 = self.box_GetEntityInPrefab_v2_45;
    l1 = self.box_GetEntityInPrefab_v2_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|874252681", "874252681", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_45.Out", "box_GetEntityInPrefab_v2_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthModifier_v2_30_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_60();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1288940840", "1288940840", "LT03_040_B01_Clone_Manager", "box_HealthModifier_v2_30.Damaged", "box_ParticleSystem_v3_60.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_42_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1330755953", "1330755953", "LT03_040_B01_Clone_Manager", "box_IsValueNil_v3_42.No", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListReset_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_81();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1175791490", "1175791490", "LT03_040_B01_Clone_Manager", "box_ListReset_66.Out", "box_Compare_Boolean_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_38_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_38_Spawned();
    params = self:OnEnter_box_ListReader_62();
    l0 = self.box_SpawnAI_38;
    l1 = self.box_ListReader_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|346606519", "346606519", "LT03_040_B01_Clone_Manager", "box_SpawnAI_38.Spawned", "box_ListReader_62.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_178_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|519058364", "519058364", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_178.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 14);
end;

function export:f_box_PlayDialog_v6_178_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1590489652", "1590489652", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_178.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 15);
end;

function export:f_box_GetPosition_199_Out()
    local params, l0;
    self:OnExit_box_GetPosition_199_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_201();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|81197985", "81197985", "LT03_040_B01_Clone_Manager", "box_GetPosition_199.Out", "box_FloatArithmetics_v2_201.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_166_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_165();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1514085353", "1514085353", "LT03_040_B01_Clone_Manager", "box_Compare_Integers_166.A_ge_B", "box_SetInteger_v2_165.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_166_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_167();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1093812899", "1093812899", "LT03_040_B01_Clone_Manager", "box_Compare_Integers_166.A_lt_B", "box_IntegerArithmetics_v2_167.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListGetRandom_193_Out()
    local params, l0;
    self:OnExit_box_ListGetRandom_193_Out();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_194();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|381083774", "381083774", "LT03_040_B01_Clone_Manager", "box_ListGetRandom_193.Out", "box_HealthModifier_v2_194.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_44_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_44_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_45();
    l0 = self.box_GetEntityInPrefab_v2_44;
    l1 = self.box_GetEntityInPrefab_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|471755276", "471755276", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_44.Out", "box_GetEntityInPrefab_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_209_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_209;
    l1 = self.box_OnceOnly_v3_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2120487304", "2120487304", "LT03_040_B01_Clone_Manager", "box_MultipleOR_209.Out", "box_OnceOnly_v3_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetEntityInPrefab_v2_93_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_93_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_94();
    l0 = self.box_GetEntityInPrefab_v2_93;
    l1 = self.box_GetEntityInPrefab_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1064401364", "1064401364", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_93.Out", "box_GetEntityInPrefab_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_92_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_92;
    l1 = self.box_MultipleOR_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1142006582", "1142006582", "LT03_040_B01_Clone_Manager", "box_EntityStatusListener_92.Loaded", "box_MultipleOR_112.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_26_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|476729770", "476729770", "LT03_040_B01_Clone_Manager", "box_Compare_Boolean_26.A_is_True", "box_OnceOnly_v3_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetEntityInPrefab_v2_109_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_109_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_7();
    l0 = self.box_GetEntityInPrefab_v2_109;
    l1 = self.box_GetEntityInPrefab_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|493195591", "493195591", "LT03_040_B01_Clone_Manager", "box_GetEntityInPrefab_v2_109.Out", "box_GetEntityInPrefab_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_161_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_161;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|624847547", "624847547", "LT03_040_B01_Clone_Manager", "box_SpawnAI_161.Out", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_CreateVector3_202_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_202_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_138();
    l0 = self.box_PositionModifier_v2_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1033087694", "1033087694", "LT03_040_B01_Clone_Manager", "box_CreateVector3_202.Out", "box_PositionModifier_v2_138.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_132_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_132_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_127();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1047774853", "1047774853", "LT03_040_B01_Clone_Manager", "box_FloatArithmetics_v2_132.Out", "box_ParticleSystem_v3_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_MultipleOR_85;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|363099298", "363099298", "LT03_040_B01_Clone_Manager", "box_MultipleOR_85.Out", "box_Delay_v5_80.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_196();
    l0 = self.box_MultipleOR_197;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|189641279", "189641279", "LT03_040_B01_Clone_Manager", "box_MultipleOR_197.Out", "box_Compare_Integers_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_9_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_9;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|158714034", "158714034", "LT03_040_B01_Clone_Manager", "box_SpawnAI_9.Out", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_124_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_33();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1585412912", "1585412912", "LT03_040_B01_Clone_Manager", "box_ParticleSystem_v3_124.Stopped", "box_DynamicLightModifier_33.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_177_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_177;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1294960996", "1294960996", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_177.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 16);
end;

function export:f_box_PlayDialog_v6_177_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_177;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1362445794", "1362445794", "LT03_040_B01_Clone_Manager", "box_PlayDialog_v6_177.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 17);
end;

function export:f_box_Delay_v5_215_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_38();
    l0 = self.box_Delay_v5_215;
    l1 = self.box_SpawnAI_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|597808852", "597808852", "LT03_040_B01_Clone_Manager", "box_Delay_v5_215.TimeElapsed", "box_SpawnAI_38.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Activated_Exit");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Clone_Killed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Desactivated_Exit");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Disable_HealthListener_Clone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Kill_Clone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Kill_Faith");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Proximity_Trigger");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Reset_KB_VO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_180_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Spawn_Clone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Spawn_RealFaith");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Start_Attacking");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_172_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Start_Knockback_VO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_181_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|@Stop_Hallucination_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_32()
    local params;
    params = {
        -- ObjectName,
        [0] = "LT_Spot",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|18474002");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_167_Out,
    });
    params = {
        -- A,
        [0] = self.iAngelCount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|28019472");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_81_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_81_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.bActivateMarker,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_50()
    local params;
    params = {
        -- ObjectName,
        [0] = "Stim_Stun",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_36()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eFaithSpawner_Attacking,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|60143963");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_69_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eCloneCape_FX,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_4()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithAttack_FX_1",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_Random_119()
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

function export:OnEnter_box_IntegerArithmetics_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|112470645");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_145_Out,
    });
    params = {
        -- A,
        [0] = self.iCounterVO,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_143()
    local params;
    params = {
        -- BoneName,
        [0] = "LeftHand",
        -- EntityA,
        [1] = Globals.LT03_040_B10.eRealFaith,
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

function export:OnEnter_box_HealthListener_v6_2()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eCloneFaith,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|121167910");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_89_No,
    });
    params = {
        -- ent,
        [4] = self.eCloneFaith,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_59()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_RealFaith",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|153737460");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_207_Out,
    });
    params = {
        -- id,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|183004077");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_33_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eFaithLight,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|227382758");
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
                [0] = self.f_box_OutputOrder_v2_169_Out_0,
                [1] = self.f_box_OutputOrder_v2_169_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetFromGroup_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetFromGroup_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|227787808");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetFromGroup_195_Out,
    });
    params = {
        -- Group,
        [0] = "#8ACCBCD8",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_83()
    local params;
    params = {
        -- Index,
        [0] = self.iAttackNbr,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_97()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.eFaithIdleSTP,
        -- UserFilter,
        [1] = Globals.LT03_040_B10.eRealFaith,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_102()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_Angels_4",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|292763353");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_149_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_148,
        -- B,
        [1] = Globals.LT03_040_B10.fProjectileSpeed,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_117()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "129724585",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_90()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithAttack_FX_3",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|322360183");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_8_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eImpactFX_3,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_21()
    local params;
    params = {
        -- ObjectName,
        [0] = "Buildup_FX",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_122()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2104189010569101364",
        -- eNPC,
        [2] = Globals.LT03_040_B10.eRealFaith,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|400244587");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_134_Out,
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

function export:OnEnter_box_Compare_Integers_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|401725453");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_196_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_196_A_lt_B,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.iAngelNbr,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|407449767");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_41_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_41_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bIsRealFaith,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = self.fBlendTime,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eProjectileFX_2,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|417933246");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_201_Out,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_199,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_120()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1757125149",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_53()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithAttackImpact_FX_2",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_173()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|445807532");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eCloneFaith,
        -- pawns,
        [2] = self.eCloneFaith,
        -- value,
        [3] = 150,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_123()
    local params;
    params = {
        -- ObjectName,
        [0] = "CloneCape_FX",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|466961064");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|504112508");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_15_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithDisparition_FX,
    };
    return params;
end;

function export:OnEnter_box_SetFaithTarget_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFaithTarget.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFaithTarget_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|510579940");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
    };
    return params;
end;

function export:OnEnter_box_ListReset_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|535850545");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_68_Out,
    });
    params = {
        -- List,
        [0] = self.Clone_Spawned,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|544556355");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_185_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eCloneCape_FX,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_175()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "543820611",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|564397905");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_217_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithDisparition_FX,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_87()
    local params;
    params = {
        -- ObjectName,
        [0] = "Attack_Point",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|574495065");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_141_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_140,
        -- B,
        [1] = Globals.LT03_040_B10.fProjectileSpeed,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_113()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.eAttackPoint,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = Globals.LT03_040_B10.eFaithTeleport_FX,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|578250658");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_220_Out,
    });
    params = {
        -- Entity,
        [0] = self._sld_LocalPlayer_box_GetLocalPlayer_v2_224,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_128()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = Globals.LT03_040_B10.eRealFaith,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|595665099");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_60_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithCape_FX,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_210()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = Globals.LT03_040_B10.bFaithHintTimer,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|612754382");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_150_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimAttack_3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|630937986");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_127_Cleaned,
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_127_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_127_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eProjectileFX_1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|643430681");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_77_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_77_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.bFaithTeleport,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|644381719");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_211_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithApparition_FX,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_82()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_FaithClone",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|653879624");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_106()
    local params;
    params = {
        -- ObjectName,
        [0] = "STP_FaithIdle",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_65()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eCloneSpawner,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|692982547");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_131_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimAttack_1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|694183661");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_144_Cleaned,
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_144_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_144_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eProjectileFX_3,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_58()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithAttackImpact_FX_3",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_51()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
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

function export:OnEnter_box_SetInteger_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|722145904");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_159_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_94()
    local params;
    params = {
        -- ObjectName,
        [0] = "Stim_Attack_3",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_ListReader_129()
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

function export:OnEnter_box_Compare_Integers_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|753560459");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_158_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iCounterVO,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|754220195");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_107_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_107_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = Globals.LT03_040_B10.eFaithTeleport_FX,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|768926337");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_160_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_110()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2104189010569101364",
        -- eNPC,
        [2] = Globals.LT03_040_B10.eRealFaith,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_27()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithAttackImpact_FX_1",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_SetValueNil_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|784231867");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|788233272");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eCloneFaith,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|807733457");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_57_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimStun,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|832782956");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_140_Out,
    });
    params = {
        -- Entity1,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
        -- Entity2,
        [1] = self.eProjectileFX_2,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_154()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
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

function export:OnEnter_box_SetBoolean_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|840288753");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_40_Out,
    });
    params = {
        -- Bool,
        [0] = self.isRealFaith,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_118()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2894264686",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|851225530");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_148_Out,
    });
    params = {
        -- Entity1,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
        -- Entity2,
        [1] = self.eProjectileFX_3,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|866180974");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_206_Out,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_207,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|866833780");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_22_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eImpactFX_2,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_46()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_125()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_Angels_5",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|923612889");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_137_Cleaned,
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_137_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_137_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eProjectileFX_2,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|932616746");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_100_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eFaithLight,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_164()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eAngel_Respawner_5,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_67()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithCape_FX",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|986299408");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_56_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eFaithLight,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|986860376");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_194_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self._sld_Data_box_ListGetRandom_193,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_ListReader_63()
    local params;
    params = {
        -- Index,
        [0] = 1,
        -- Input,
        [1] = self.Clone_Spawned,
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1016983453");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_200_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_199,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_199,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_201,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1017411248");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_17_Added,
    });
    params = {
        -- Data,
        [0] = self.FaithPrefab,
        -- Input,
        [2] = self.List,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1030209533");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_186_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_186_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.bFaithTeleport,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_214()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1061023187");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPosition_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1099985806");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_204_Out,
    });
    params = {
        -- id,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_208()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_7()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_Angels_1",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1125828865");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_76_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimStun,
    };
    return params;
end;

function export:OnEnter_box_GetFromGroup_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetFromGroup_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1131789211");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetFromGroup_191_Out,
    });
    params = {
        -- Group,
        [0] = "#8ACCBCD8",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1132903723");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_171_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithDisparition_FX,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1137509814");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_130_Out,
    });
    params = {
        -- Entity1,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
        -- Entity2,
        [1] = self.eProjectileFX_1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_216()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_162()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eAngel_Respawner_4,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1162906169");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_205_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_207,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_207,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_206,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_99()
    local params;
    params = {
        -- ObjectName,
        [0] = "STP_FaithAttacking",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = self.fBlendTime,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eProjectileFX_3,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1213690186");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_96_No,
    });
    params = {
        -- ent,
        [4] = Globals.LT03_040_B10.eRealFaith,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1228185012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_165_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_79()
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

function export:OnEnter_box_GetEntityInPrefab_v2_86()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithAttack_FX_2",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_189()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithDisparitionRound_FX",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1259519236");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_142_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimAttack_2,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_23()
    local params;
    params = {
        -- BoneName,
        [0] = "RightHand",
        -- EntityA,
        [1] = Globals.LT03_040_B10.eRealFaith,
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

function export:OnEnter_box_ParticleSystem_v3_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1274273698");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_157_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithApparition_FX,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1275091639");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_212_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithApparition_FX,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1294387660");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_203_Out,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_204,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1331523468");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_182_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bIsRealFaith,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_31()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_RealFaith_Attacking",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_61()
    local params;
    params = {
        -- ObjectName,
        [0] = "ProximityTrigger",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_1()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eAngel_Respawner_1,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_18()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_Angels_2",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_135()
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

function export:OnEnter_box_DynamicLightModifier_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1447967911");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_213_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eFaithLight,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_6()
    local params;
    params = {
        -- Pawns,
        [0] = self.eProjectileFX_1,
        -- SoundId,
        [1] = "3659821558",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ListGetRandom_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListGetRandom_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1457536753");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListGetRandom_192_Out,
    });
    params = {
        -- Input,
        [0] = self._sld_Pawns_box_GetFromGroup_191,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1461457771");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_111_Enabled,
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

function export:OnEnter_box_Compare_Boolean_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1470673973");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_20_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_20_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bIsRealFaith,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_84()
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

function export:OnEnter_box_Compare_Integers_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1554815369");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_170_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_170_A_lt_B,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.iAngelNbr,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1563478859");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_187_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithEndRound_FX,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_14()
    local params;
    params = {
        -- BoneName,
        [0] = "RightHand",
        -- EntityA,
        [1] = Globals.LT03_040_B10.eRealFaith,
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

function export:OnEnter_box_PlayDialog_v6_116()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2344280107",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1575747175");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_64_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = self.eStimStun,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1580768387");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_95_Disabled,
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

function export:OnEnter_box_PlayDialog_v6_176()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "169647007",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1599909327");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_190_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self._sld_Data_box_ListGetRandom_192,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_5()
    local params;
    params = {
        -- Pawns,
        [0] = self.eProjectileFX_1,
        -- SoundId,
        [1] = "964087501",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1613026830");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_114_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eFaithLight,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1616381388");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_152_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ListReader_62()
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

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = Globals.LT03_040_B10.bFaithHintTimer,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_101()
    local params;
    params = {
        -- ObjectName,
        [0] = "AIRespawner_Angels_3",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1671494126");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_25_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithCape_FX,
    };
    return params;
end;

function export:OnEnter_box_ListGetRandom_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListGetRandom_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1672448416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListGetRandom_223_Out,
    });
    params = {
        -- Input,
        [0] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_Random_126()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1724075499");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_43_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eFaithLight,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1730271692");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_151_Out,
    });
    params = {
        -- A,
        [0] = self.iAttackNbr,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1748077056");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_29_Removed,
    });
    params = {
        -- Data,
        [0] = self.FaithPrefab,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Visible,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_163()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "574171265",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1756806559");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_147_Out,
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

function export:OnEnter_box_ListWriter_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1757909041");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_24_Added,
    });
    params = {
        -- Data,
        [0] = self.FaithPrefab,
        -- Input,
        [2] = Globals.LT03_040_B10.Faith_Invisible,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1761102233");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_224_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1768770481");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_16_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eFaithLight,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = self.fBlendTime,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eProjectileFX_1,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1784361554");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_184_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eFaithCape_FX,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1789712919");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_139_Out,
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

function export:OnEnter_box_ListLength_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLength_v2_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1796617281");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_ListLength_v2_219_Empty,
        -- NotEmpty,
        [1] = self.f_box_ListLength_v2_219_NotEmpty,
    });
    params = {
        -- Input,
        [0] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1798715502");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_136_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.eImpactFX_1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1781693482",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_108()
    local params;
    params = {
        -- blendTime,
        [1] = Globals.LT03_040_B10.fTeleportDuration,
        -- endTarget,
        [4] = self.eAttackPoint,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = Globals.LT03_040_B10.eFaithTeleport_FX,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_52()
    local params;
    params = {
        -- ObjectName,
        [0] = "Stim_Attack_1",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_104()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.eFaithAttackSTP,
        -- UserFilter,
        [1] = Globals.LT03_040_B10.eRealFaith,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_153()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
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

function export:OnEnter_box_GetEntityInPrefab_v2_45()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithDisparition_FX",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1872460417");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_30_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = Globals.LT03_040_B10.eRealFaith,
        -- pawns,
        [2] = Globals.LT03_040_B10.eRealFaith,
        -- value,
        [3] = 150,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1888148954");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_42_No,
    });
    params = {
        -- ent,
        [4] = self.eCloneFaith,
    };
    return params;
end;

function export:OnEnter_box_ListReset_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1894273763");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_66_Out,
    });
    params = {
        -- List,
        [0] = self.Faith_Spawned,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_38()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eFaithSpawner,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_178()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "322004611",
    };
    return params;
end;

function export:OnEnter_box_GetPosition_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1942820067");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_199_Out,
    });
    params = {
        -- id,
        [0] = Globals.LT03_040_B10.ePlayerAttacking,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1954268524");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_166_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_166_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iAngelCount,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_ListGetRandom_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListGetRandom_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|1996712714");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListGetRandom_193_Out,
    });
    params = {
        -- Input,
        [0] = self._sld_Pawns_box_GetFromGroup_195,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_44()
    local params;
    params = {
        -- ObjectName,
        [0] = "FaithApparition_FX",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_93()
    local params;
    params = {
        -- ObjectName,
        [0] = "Stim_Attack_2",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_11()
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

function export:OnEnter_box_EntityStatusListener_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = Globals.LT03_040_B10.eRealFaith,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2041633874");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_26_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bIsRealFaith,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_109()
    local params;
    params = {
        -- ObjectName,
        [0] = "DialogPoint",
        -- PrefabEntity,
        [1] = self.FaithPrefab,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_161()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eAngel_Respawner_3,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2064914068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_202_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_204,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_204,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_203,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2065559576");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_132_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_130,
        -- B,
        [1] = Globals.LT03_040_B10.fProjectileSpeed,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eAngel_Respawner_2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B01_Clone_Manager|2093000903");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_124_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eCloneCape_FX,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_177()
    local params;
    params = {
        -- Group,
        [0] = self.eDialogPoint,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3663275787",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_215()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnExit_box_GetEntityInPrefab_v2_32_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_32;
    self.eFaithLight = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_167_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iAngelCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_50_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_50;
    self.eStimStun = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_36_Spawned()
    local l0;
    l0 = self.box_SpawnAI_36;
    self.Faith_Spawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_4_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_4;
    self.eProjectileFX_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_145_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iCounterVO = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_59_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_59;
    self.eFaithSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_207_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_207 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_207 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_207 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_GetFromGroup_195_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    self._sld_Pawns_box_GetFromGroup_195 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_102_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_102;
    self.eAngel_Respawner_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_149_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.fBlendTime = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_90_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_90;
    self.eProjectileFX_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_21_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_21;
    self.eBuildup_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_201_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_201 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_53_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_53;
    self.eImpactFX_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_123_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_123;
    self.eCloneCape_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_87_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_87;
    self.eAttackPoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_141_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.fBlendTime = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_220_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_82_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_82;
    self.eCloneSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_54_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityTrigger_v2_84;
    l1:GetLuaBox().colliderFilterId = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_106_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_106;
    self.eFaithIdleSTP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_65_Spawned()
    local l0;
    l0 = self.box_SpawnAI_65;
    self.Clone_Spawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_58_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_58;
    self.eImpactFX_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_159_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iAttackNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_94_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_94;
    self.eStimAttack_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListReader_129_Out()
    local l0;
    l0 = self.box_ListReader_129;
    Globals.LT03_040_B10.eRealFaith = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetInteger_v2_160_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iCounterVO = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_27_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_27;
    self.eImpactFX_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetValueNil_98_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    Globals.LT03_040_B10.eRealFaith = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetBoolean_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bIsRealFaith = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_140_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_140 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bIsRealFaith = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_148_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_148 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_206_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_206 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_125_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_125;
    self.eAngel_Respawner_5 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_67_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_67;
    self.eFaithCape_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListReader_63_Out()
    local l0;
    l0 = self.box_ListReader_63;
    self.eCloneFaith = l0:GetDataOutValue(1);
end;

function export:OnExit_box_CreateVector3_200_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_133;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_204_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_204 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_204 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_204 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_GetEntityInPrefab_v2_7_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_7;
    self.eAngel_Respawner_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetFromGroup_191_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    self._sld_Pawns_box_GetFromGroup_191 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_130_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_130 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_205_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_146;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_99_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_99;
    self.eFaithAttackSTP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_165_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iAngelCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_86_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_86;
    self.eProjectileFX_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_189_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_189;
    self.eFaithEndRound_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_203_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_203 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_31_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_31;
    self.eFaithSpawner_Attacking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_61_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_61;
    self.eProximityTrigger = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_18_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_18;
    self.eAngel_Respawner_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListGetRandom_192_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    self._sld_Data_box_ListGetRandom_192 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_152_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iAttackNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListReader_62_Out()
    local l0;
    l0 = self.box_ListReader_62;
    Globals.LT03_040_B10.eRealFaith = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetEntityInPrefab_v2_101_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_101;
    self.eAngel_Respawner_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListGetRandom_223_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    Globals.LT03_040_B10.ePlayerAttacking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_151_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iAttackNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_224_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self._sld_LocalPlayer_box_GetLocalPlayer_v2_224 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_52_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_52;
    self.eStimAttack_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_45_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_45;
    self.eFaithDisparition_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_38_Spawned()
    local l0;
    l0 = self.box_SpawnAI_38;
    self.Faith_Spawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_199_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_199 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_199 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_199 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_ListGetRandom_193_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    self._sld_Data_box_ListGetRandom_193 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_44_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_44;
    self.eFaithApparition_FX = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_93_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_93;
    self.eStimAttack_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_109_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_109;
    self.eDialogPoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_202_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_138;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_132_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.fBlendTime = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Faith_Activated()
    
end;
function export:Faith_Desactivated()
    
end;
function export:Clone_Killed_OUT()
    
end;
function export:Initialized()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Activate_Faith" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Desactivate_Faith" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Faith_Attack" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Initialize" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Clone_Killed_OUT" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Faith_Activated" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Faith_Desactivated" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Initialized" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="FaithPrefab" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="isRealFaith" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="List" AnchorDynType="0" DataTypeID="list" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
