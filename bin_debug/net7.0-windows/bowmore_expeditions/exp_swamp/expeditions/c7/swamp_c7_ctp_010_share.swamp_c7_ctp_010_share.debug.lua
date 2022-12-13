LUAC�7 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c7/swamp_c7_ctp_010_share.domino
-- User graph: Swamp_C7_CTP_010_Share
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_EliteReinforcement_Expert.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_FlareSTP.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_PickRandomNPC.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Sp/Lib_Expeditions_Gameplay.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Main.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Swamp_C7_CTP_010_Share = nil;
    Globals.Swamp_C7_CTP_010_Share = {
        b_ReinforcementElitSpawned = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_CTP_010_Share.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "EnemyHelicopterLoaded",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "EnemyHelicopter",
                type = "entity",
            },
            [1] = {
                name = "EnemyHelicopterGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
                delayed = true,
            },
            [1] = {
                name = "Detected_BothPlayers",
                delayed = false,
            },
            [2] = {
                name = "Detected_ClientOnly",
                delayed = false,
            },
            [3] = {
                name = "Detected_HostOnly",
                delayed = false,
            },
            [4] = {
                name = "Disabled",
                delayed = false,
            },
            [5] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "EnemyGroup",
                type = "group",
            },
            [1] = {
                name = "OnceOnly",
                type = "bool",
            },
            [2] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "DetectedPlayer_Client",
                type = "entity",
            },
            [1] = {
                name = "DetectedPlayer_Host",
                type = "entity",
            },
            [2] = {
                name = "DetectedPlayer_Latest",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "CleanupOnly",
            },
            [2] = {
                name = "In",
            },
            [3] = {
                name = "UpdateAllowedRemainingNPCForNextCheck",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "AllowedRemainingNPCUpdated",
                delayed = false,
            },
            [1] = {
                name = "Cancelled",
                delayed = false,
            },
            [2] = {
                name = "NextWave",
                delayed = false,
            },
            [3] = {
                name = "ToStartFailSafeSetup",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AllowedRemainingNPC",
                type = "int",
            },
            [1] = {
                name = "EnemyGroup",
                type = "group",
            },
            [2] = {
                name = "HardDelayBeforeNextWave",
                type = "float",
            },
            [3] = {
                name = "MaxWaveDuration",
                type = "float",
            },
            [4] = {
                name = "MinWaveDuration",
                type = "float",
            },
            [5] = {
                name = "NextWaveWaitUntilCombat",
                type = "bool",
            },
            [6] = {
                name = "opt_Spawner_2",
                type = "entity",
            },
            [7] = {
                name = "opt_Spawner_3",
                type = "entity",
            },
            [8] = {
                name = "opt_Spawner_4",
                type = "entity",
            },
            [9] = {
                name = "opt_Spawner_5",
                type = "entity",
            },
            [10] = {
                name = "Spawner_1",
                type = "entity",
            },
        },
        dataInCount = 11,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PackagePicked",
            },
            [1] = {
                name = "PackageStolenDetected",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ActualPackageSpawner",
                type = "entity",
            },
            [1] = {
                name = "EnemyGroup_PackageGuard",
                type = "group",
            },
            [2] = {
                name = "EnemyGroupAll",
                type = "group",
            },
            [3] = {
                name = "PackageGuardPositionCS_A",
                type = "entity",
            },
            [4] = {
                name = "PackageGuardPositionCS_B",
                type = "entity",
            },
            [5] = {
                name = "PackageGuardPositionCS_C",
                type = "entity",
            },
            [6] = {
                name = "PackageGuardPositionCS_D",
                type = "entity",
            },
            [7] = {
                name = "PackageGuardPositionCS_E",
                type = "entity",
            },
            [8] = {
                name = "PackageGuardPositionCS_F",
                type = "entity",
            },
            [9] = {
                name = "PackageSpawner_A",
                type = "entity",
            },
            [10] = {
                name = "PackageSpawner_B",
                type = "entity",
            },
            [11] = {
                name = "PackageSpawner_C",
                type = "entity",
            },
            [12] = {
                name = "PackageSpawner_D",
                type = "entity",
            },
            [13] = {
                name = "PackageSpawner_E",
                type = "entity",
            },
            [14] = {
                name = "PackageSpawner_F",
                type = "entity",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_EliteReinforcement_Expert.debug.lua")] = {
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
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "NextWave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "e_SpawnEliteGroup",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_FlareSTP.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "flarestp_used_once",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_PickRandomNPC.debug.lua")] = {
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
                name = "b_RemoveFromPreviousGroup",
                type = "bool",
            },
            [1] = {
                name = "e_CS_End",
                type = "entity",
            },
            [2] = {
                name = "Group_begin",
                type = "group",
            },
            [3] = {
                name = "Group_end",
                type = "group",
            },
            [4] = {
                name = "i_GroupSize_end_MAX",
                type = "int",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_C7_CTP_010_Share";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share";
    self.e_InfiniteWave_A_1 = "2108896753206984181";
    self.e_InfiniteWave_A_2 = "2108896746747755778";
    self.e_InfiniteWave_B_1 = "2108896720617241609";
    self.e_InfiniteWave_B_2 = "2108896885457585740";
    self.e_InfiniteWave_C_1 = "2108896703456246240";
    self.e_InfiniteWave_C_2 = "2108896700249700691";
    self.e_PlayerBeDected = nil;
    self.e_Wave_1_A = "2108220084259400763";
    self.e_Wave_1_B = "2108497431126613964";
    self.e_Wave_2_A = "2108895833270274510";
    self.e_Wave_2_B = "2108895833253497277";
    self.i_Wavebefore_Index = 1;
    self.i_GroupSize_S = 0;
    self.e_Wave_0_A = "2108235150727851218";
    self.e_InfiniteWave_B_S = "2108896730060717202";
    self.f_RespawnDuration_S = 0;
    self.e_InfiniteWave_C_S = "2108896707224828536";
    self.i_WaveAfter_Index = 1;
    self.e_Wave_0_B = "2108894587178198030";
    self.i_InfiniteWave_ID = 0;
    self.e_InfiniteWave_A_S = "2108896870559417747";
    self.box_Gate_v3_124 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|7088461");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_124_Out,
    });
    self.box_Delay_v5_62 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|29107824");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_62_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_62_TimeElapsed,
    });
    self.box_Swamp_C7_EliteReinforcement_Expert_82 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_EliteReinforcement_Expert.debug.lua");
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C7_EliteReinforcement_Expert_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|49451294");
    l0:SetConnections({
        -- NextWave,
        [1] = self.f_box_Swamp_C7_EliteReinforcement_Expert_82_NextWave,
    });
    self.box_StateListener_v2_65 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|58879065");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_65_StateStart,
        -- StateStop,
        [4] = self.f_box_StateListener_v2_65_StateStop,
    });
    self.box_Gate_v3_107 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|80481357");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_107_Out,
    });
    self.box_Gate_v3_165 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|98764427");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_165_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|115318725");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_8_NextWave,
    });
    self.box_VehicleDamageListener_v2_57 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|122451446");
    l0:SetConnections({
        -- BoxDisabled,
        [0] = self.f_box_VehicleDamageListener_v2_57_BoxDisabled,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_57_Destroyed,
    });
    self.box_Swamp_C7_PickRandomNPC_39 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_PickRandomNPC.debug.lua");
    l0 = self.box_Swamp_C7_PickRandomNPC_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C7_PickRandomNPC_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|156455976");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|177000612");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_25_NextWave,
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|204604412");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_ProximityTrigger_v3_201 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|209933818");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_201_Enter,
    });
    self.box_EntityStatusListener_99 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|210625709");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_99_Loaded,
    });
    self.box_ProximityTrigger_v3_133 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|213306929");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_133_Enter,
    });
    self.box_Swamp_C7_EliteReinforcement_Expert_127 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_EliteReinforcement_Expert.debug.lua");
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C7_EliteReinforcement_Expert_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|291235996");
    l0:SetConnections({
        -- NextWave,
        [1] = self.f_box_Swamp_C7_EliteReinforcement_Expert_127_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_38 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|360858933");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_38_NextWave,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|374427560");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_11_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_218 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|374914790");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_218_Enter,
    });
    self.box_ProximityTrigger_v3_226 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|375577314");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_226_Enter,
    });
    self.box_Brick_Exp_Common_WaveSpawner_222 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|412129090");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_222_NextWave,
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_233 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|461314893");
    l0:SetConnections({
    });
    self.box_MultipleOR_69 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|463288106");
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
        [0] = self.f_box_MultipleOR_69_Out,
    });
    self.box_IndexList_v2_94 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|465880329");
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
                [0] = self.f_box_IndexList_v2_94_Output_0,
                [1] = self.f_box_IndexList_v2_94_Output_1,
                [2] = self.f_box_IndexList_v2_94_Output_2,
            },
            count = 3,
        },
    });
    self.box_ProximityTrigger_v3_93 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|489241321");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_93_Enter,
    });
    self.box_Gate_v3_132 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|536596487");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_132_Out,
    });
    self.box_SpawnAI_223 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|586622529");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_223_Out,
    });
    self.box_IndexList_v2_32 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|586802901");
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
                [0] = self.f_box_IndexList_v2_32_Output_0,
                [1] = self.f_box_IndexList_v2_32_Output_1,
                [2] = self.f_box_IndexList_v2_32_Output_2,
                [3] = self.f_box_IndexList_v2_32_Output_3,
                [4] = self.f_box_IndexList_v2_32_Output_4,
            },
            count = 5,
        },
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|594855415");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_SpawnAI_87 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|597489536");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_87_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|644485475");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_46_NextWave,
    });
    self.box_SpawnAI_105 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|768853800");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_105_Out,
    });
    self.box_SpawnAI_77 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|772768682");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_PlayerFullyDetected_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_PlayerFullyDetected_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|788752214");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected,
        -- Detected_BothPlayers,
        [1] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_BothPlayers,
        -- Detected_ClientOnly,
        [2] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_ClientOnly,
        -- Detected_HostOnly,
        [3] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_HostOnly,
        -- Disabled,
        [4] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_36_Disabled,
        -- Enabled,
        [5] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_36_Enabled,
    });
    self.box_EntityStatusListener_151 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|823611625");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_151_Loaded,
    });
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|863697066");
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 2,
        },
    });
    self.box_IndexList_v2_205 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|879908197");
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
                [0] = self.f_box_IndexList_v2_205_Output_0,
                [1] = self.f_box_IndexList_v2_205_Output_1,
                [2] = self.f_box_IndexList_v2_205_Output_2,
            },
            count = 3,
        },
    });
    self.box_Swamp_C7_FlareSTP_5 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_FlareSTP.debug.lua");
    l0 = self.box_Swamp_C7_FlareSTP_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C7_FlareSTP_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|887093040");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_230 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|898258255");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_230_NextWave,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|978913328");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_IndexList_v2_204 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1052352063");
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
                [0] = self.f_box_IndexList_v2_204_Output_0,
                [1] = self.f_box_IndexList_v2_204_Output_1,
                [2] = self.f_box_IndexList_v2_204_Output_2,
            },
            count = 3,
        },
    });
    self.box_MessageListener_v3_23 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1057779659");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_23_Received,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1099289345");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_ProximityTrigger_v3_104 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1102158300");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_104_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_104_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_104_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_104_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_104_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_104_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_104_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_104_Use,
    });
    self.box_Gate_v3_6 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1112576902");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_6_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_6_Out,
    });
    self.box_MultipleOR_155 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1157187633");
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
        [0] = self.f_box_MultipleOR_155_Out,
    });
    self.box_SpawnAI_198 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1173523835");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_198_Out,
    });
    self.box_Brick_Exp_Enemy_PackageGuardNearest_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuardNearest_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1175941500");
    l0:SetConnections({
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1188589084");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_EntityStatusListener_58 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1190466860");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_58_Loaded,
    });
    self.box_ProximityTrigger_v3_152 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1220869565");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_152_Enter,
    });
    self.box_SpawnAI_208 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1239395117");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_208_Out,
    });
    self.box_ProximityTrigger_v3_143 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1243664272");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_143_Enter,
    });
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1276246449");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_SpawnAI_196 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1335597750");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_196_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_199 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1357542662");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_199_NextWave,
    });
    self.box_ProximityTrigger_v3_183 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1378114916");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_183_Enter,
    });
    self.box_Delay_v5_197 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1429959273");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_197_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_197_TimeElapsed,
    });
    self.box_IndexList_v2_150 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1441213953");
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
                [1] = self.f_box_IndexList_v2_150_Output_1,
                [2] = self.f_box_IndexList_v2_150_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_144 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1493121752");
    l0:SetConnections({
    });
    self.box_Delay_v5_103 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1529327614");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_103_TimeElapsed,
    });
    self.box_MessageListener_v3_186 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1568198266");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_186_Received,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1624678374");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_DisplayCustomUIMsg_v5_12 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1637237932");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_157 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1658160924");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_157_Enter,
    });
    self.box_Brick_Exp_Common_WaveSpawner_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1698011930");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_44_NextWave,
    });
    self.box_IndexList_v2_128 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1701130739");
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
                [0] = self.f_box_IndexList_v2_128_Output_0,
                [1] = self.f_box_IndexList_v2_128_Output_1,
                [2] = self.f_box_IndexList_v2_128_Output_2,
                [3] = self.f_box_IndexList_v2_128_Output_3,
                [4] = self.f_box_IndexList_v2_128_Output_4,
            },
            count = 5,
        },
    });
    self.box_Swamp_C7_PickRandomNPC_15 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_PickRandomNPC.debug.lua");
    l0 = self.box_Swamp_C7_PickRandomNPC_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C7_PickRandomNPC_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1717635997");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v6_228 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1729751478");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_228_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_228_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_228_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_228_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_228_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_228_MemberSpawned,
    });
    self.box_MessageListener_v3_51 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1737829590");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_51_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_154 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1754852435");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_154_NextWave,
    });
    self.box_ProximityTrigger_v3_181 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1786279812");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_181_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_181_Enter,
    });
    self.box_Swamp_C7_EliteReinforcement_Expert_214 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_EliteReinforcement_Expert.debug.lua");
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C7_EliteReinforcement_Expert_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1808960326");
    l0:SetConnections({
        -- NextWave,
        [1] = self.f_box_Swamp_C7_EliteReinforcement_Expert_214_NextWave,
    });
    self.box_SpawnAI_217 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1826978656");
    l0:SetConnections({
    });
    self.box_Gate_v3_231 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1877371414");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_231_Out,
    });
    self.box_Swamp_C7_EliteReinforcement_Expert_207 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_EliteReinforcement_Expert.debug.lua");
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C7_EliteReinforcement_Expert_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1887108388");
    l0:SetConnections({
        -- NextWave,
        [1] = self.f_box_Swamp_C7_EliteReinforcement_Expert_207_NextWave,
    });
    self.box_SpawnAI_86 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1919180756");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_86_Out,
    });
    self.box_SpawnAI_123 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1921103252");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_123_Out,
    });
    self.box_Swamp_C7_EliteReinforcement_Expert_122 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_EliteReinforcement_Expert.debug.lua");
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C7_EliteReinforcement_Expert_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1931459872");
    l0:SetConnections({
        -- NextWave,
        [1] = self.f_box_Swamp_C7_EliteReinforcement_Expert_122_NextWave,
    });
    self.box_SpawnAI_171 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1942420730");
    l0:SetConnections({
    });
    self.box_SpawnAI_129 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1951463720");
    l0:SetConnections({
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1992385322");
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
    self.box_ProximityTrigger_v3_55 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1995743780");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_55_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_55_Leave,
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2023649397");
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
    self.box_Brick_Exp_Common_WaveSpawner_160 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2038622795");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_160_NextWave,
    });
    self.box_IndexList_v2_210 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2137022207");
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
                [0] = self.f_box_IndexList_v2_210_Output_0,
                [1] = self.f_box_IndexList_v2_210_Output_1,
                [2] = self.f_box_IndexList_v2_210_Output_2,
            },
            count = 3,
        },
    });
    self.box_ProximityTrigger_v3_98 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2144692202");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_98_Enter,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1545040995", "1545040995", "Swamp_C7_CTP_010_Share", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_93();
    l0 = self.box_ProximityTrigger_v3_93;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|428257350", "428257350", "Swamp_C7_CTP_010_Share", "box_Simple_Node_61.Out", "box_ProximityTrigger_v3_93.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_197();
    l0 = self.box_Delay_v5_197;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|449747068", "449747068", "Swamp_C7_CTP_010_Share", "box_Simple_Node_61.Out", "box_Delay_v5_197.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_ProximityTrigger_v3_133();
    l0 = self.box_ProximityTrigger_v3_133;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1633270294", "1633270294", "Swamp_C7_CTP_010_Share", "box_Simple_Node_61.Out", "box_ProximityTrigger_v3_133.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_98();
    l0 = self.box_ProximityTrigger_v3_98;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|586170335", "586170335", "Swamp_C7_CTP_010_Share", "box_Simple_Node_61.Out", "box_ProximityTrigger_v3_98.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_152();
    l0 = self.box_ProximityTrigger_v3_152;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|538236441", "538236441", "Swamp_C7_CTP_010_Share", "box_Simple_Node_61.Out", "box_ProximityTrigger_v3_152.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_128();
    l0 = self.box_IndexList_v2_128;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|670260567", "670260567", "Swamp_C7_CTP_010_Share", "box_Simple_Node_61.Out", "box_IndexList_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_183();
    l0 = self.box_ProximityTrigger_v3_183;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1234217673", "1234217673", "Swamp_C7_CTP_010_Share", "box_Simple_Node_61.Out", "box_ProximityTrigger_v3_183.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_240_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_36();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1636465642", "1636465642", "Swamp_C7_CTP_010_Share", "box_Simple_Node_240.Out", "box_Brick_Exp_Common_PlayerFullyDetected_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|80564057", "80564057", "Swamp_C7_CTP_010_Share", "box_Simple_Node_240.Out", "box_MultipleOR_67.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1683104116", "1683104116", "Swamp_C7_CTP_010_Share", "box_Simple_Node_240.Out", "box_Gate_v3_6.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1373773484", "1373773484", "Swamp_C7_CTP_010_Share", "box_Simple_Node_240.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_VehicleDamageListener_v2_57();
    l0 = self.box_VehicleDamageListener_v2_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1123978662", "1123978662", "Swamp_C7_CTP_010_Share", "box_Simple_Node_240.Out", "box_VehicleDamageListener_v2_57.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_32();
    l0 = self.box_IndexList_v2_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|113565990", "113565990", "Swamp_C7_CTP_010_Share", "box_Simple_Node_240.Out", "box_IndexList_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_55();
    l0 = self.box_ProximityTrigger_v3_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|951511593", "951511593", "Swamp_C7_CTP_010_Share", "box_Simple_Node_240.Out", "box_ProximityTrigger_v3_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_232_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_124();
    l0 = self.box_Gate_v3_124;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1708075998", "1708075998", "Swamp_C7_CTP_010_Share", "box_Simple_Node_232.Out", "box_Gate_v3_124.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_165();
    l0 = self.box_Gate_v3_165;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1341131659", "1341131659", "Swamp_C7_CTP_010_Share", "box_Simple_Node_232.Out", "box_Gate_v3_165.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_107();
    l0 = self.box_Gate_v3_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1783564682", "1783564682", "Swamp_C7_CTP_010_Share", "box_Simple_Node_232.Out", "box_Gate_v3_107.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_132();
    l0 = self.box_Gate_v3_132;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|497180571", "497180571", "Swamp_C7_CTP_010_Share", "box_Simple_Node_232.Out", "box_Gate_v3_132.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_231();
    l0 = self.box_Gate_v3_231;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2070316229", "2070316229", "Swamp_C7_CTP_010_Share", "box_Simple_Node_232.Out", "box_Gate_v3_231.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_Gate_v3_124;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|216606790", "216606790", "Swamp_C7_CTP_010_Share", "box_Gate_v3_124.Out", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|138386077", "138386077", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_24.Out", "box_Gate_v3_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1518445382", "1518445382", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_24.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_110();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|928327098", "928327098", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_75.Out", "box_SetEntity_v2_110.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_106();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|975441967", "975441967", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_75.Out", "box_SetEntity_v2_106.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_117();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|217408455", "217408455", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_75.Out", "box_SetEntity_v2_117.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_173();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2116436036", "2116436036", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_75.Out", "box_SetEntity_v2_173.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_200();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2140346476", "2140346476", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_75.Out", "box_SetEntity_v2_200.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_62_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_62;
    l1 = self.box_Swamp_C7_FlareSTP_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|368315753", "368315753", "Swamp_C7_CTP_010_Share", "box_Delay_v5_62.Started", "box_Swamp_C7_FlareSTP_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_62_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_62;
    l1 = self.box_Swamp_C7_FlareSTP_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1471514043", "1471514043", "Swamp_C7_CTP_010_Share", "box_Delay_v5_62.TimeElapsed", "box_Swamp_C7_FlareSTP_5.Cleanup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cleanup
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_240();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|360009351", "360009351", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_4.Out", "box_Simple_Node_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_50();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1664389315", "1664389315", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_4.Out", "box_SetActivityFact_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_187();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|977450114", "977450114", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_4.Out", "box_OutputOrder_v2_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_180_Out()
    self:OnExit_box_SetEntity_v2_180_Out();
end;

function export:f_box_Swamp_C7_EliteReinforcement_Expert_82_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_115();
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_82;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2124588554", "2124588554", "Swamp_C7_CTP_010_Share", "box_Swamp_C7_EliteReinforcement_Expert_82.NextWave", "box_SetInteger_v2_115.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_65_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_StateListener_v2_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1043891970", "1043891970", "Swamp_C7_CTP_010_Share", "box_StateListener_v2_65.StateStart", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_65_StateStop()
    local l0, l1;
    l0 = self.box_StateListener_v2_65;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|295321787", "295321787", "Swamp_C7_CTP_010_Share", "box_StateListener_v2_65.StateStop", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetFloat_v2_178_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_178_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_229();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2061649421", "2061649421", "Swamp_C7_CTP_010_Share", "box_SetFloat_v2_178.Out", "box_SetInteger_v2_229.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = self.box_Gate_v3_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1008554217", "1008554217", "Swamp_C7_CTP_010_Share", "box_Gate_v3_107.Out", "box_OutputOrder_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_135_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_135_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_120();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|322964071", "322964071", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_135.Out", "box_SetEntity_v2_120.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_165_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = self.box_Gate_v3_165;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1273898738", "1273898738", "Swamp_C7_CTP_010_Share", "box_Gate_v3_165.Out", "box_OutputOrder_v2_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_164_Out()
    self:OnExit_box_SetInteger_v2_164_Out();
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_8_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_48();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_8;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1052478654", "1052478654", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_8.NextWave", "box_SetInteger_v2_48.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_172_Out()
    self:OnExit_box_SetEntity_v2_172_Out();
end;

function export:f_box_VehicleDamageListener_v2_57_BoxDisabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_59();
    l0 = self.box_VehicleDamageListener_v2_57;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1475371156", "1475371156", "Swamp_C7_CTP_010_Share", "box_VehicleDamageListener_v2_57.BoxDisabled", "box_SetContextualStrategy_59.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_57_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_60();
    l0 = self.box_VehicleDamageListener_v2_57;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1280878140", "1280878140", "Swamp_C7_CTP_010_Share", "box_VehicleDamageListener_v2_57.Destroyed", "box_SetContextualStrategy_60.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_237_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_238();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1986589159", "1986589159", "Swamp_C7_CTP_010_Share", "box_RadioModifier_v3_237.Out", "box_RadioModifier_v3_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Swamp_C7_PickRandomNPC_39();
    l0 = self.box_Swamp_C7_PickRandomNPC_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|578573306", "578573306", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_63.Out", "box_Swamp_C7_PickRandomNPC_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Swamp_C7_PickRandomNPC_15();
    l0 = self.box_Swamp_C7_PickRandomNPC_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1199010403", "1199010403", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_63.Out", "box_Swamp_C7_PickRandomNPC_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_179_Out()
    self:OnExit_box_SetEntity_v2_179_Out();
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_25_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_25;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1346720458", "1346720458", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_25.NextWave", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_174_Out()
    self:OnExit_box_SetEntity_v2_174_Out();
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_184();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1861003541", "1861003541", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_188.Out", "box_SetContextualStrategy_184.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_232();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|452847628", "452847628", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_188.Out", "box_Simple_Node_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_107();
    l0 = self.box_Gate_v3_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1546006488", "1546006488", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_188.Out", "box_Gate_v3_107.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_213_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_213_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_146();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|227646356", "227646356", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_213.Out", "box_SetEntity_v2_146.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_163_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_163_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_159();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|980320898", "980320898", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_163.Out", "box_SetEntity_v2_159.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_182_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_182_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_220();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1802225831", "1802225831", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_182.Out", "box_SetEntity_v2_220.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_90_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_90_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_206();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|141165158", "141165158", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_90.Out", "box_SetEntity_v2_206.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_71();
    l0 = self.box_MultipleOR_177;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|229870470", "229870470", "Swamp_C7_CTP_010_Share", "box_MultipleOR_177.Out", "box_SetInteger_v2_71.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_170_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_170_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_199();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_199;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|719473098", "719473098", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_170.Out", "box_Brick_Exp_Common_WaveSpawner_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetInteger_v2_7_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_25();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1238357075", "1238357075", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_7.Out", "box_Brick_Exp_Common_WaveSpawner_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_201_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_88();
    l0 = self.box_ProximityTrigger_v3_201;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|819671362", "819671362", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_201.Enter", "box_SetContextualStrategy_88.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_99_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_196();
    l0 = self.box_EntityStatusListener_99;
    l1 = self.box_SpawnAI_196;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1697514037", "1697514037", "Swamp_C7_CTP_010_Share", "box_EntityStatusListener_99.Loaded", "box_SpawnAI_196.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_133_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_124();
    l0 = self.box_ProximityTrigger_v3_133;
    l1 = self.box_Gate_v3_124;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1029214729", "1029214729", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_133.Enter", "box_Gate_v3_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_138_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_138_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_179();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|617643458", "617643458", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_138.Out", "box_SetEntity_v2_179.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_195_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_195_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_164();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1288573750", "1288573750", "Swamp_C7_CTP_010_Share", "box_SetFloat_v2_195.Out", "box_SetInteger_v2_164.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_167_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_167_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_191();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|567479979", "567479979", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_167.Out", "box_SetEntity_v2_191.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_71_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_154();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_154;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|892214362", "892214362", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_71.Out", "box_Brick_Exp_Common_WaveSpawner_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_116_Out()
    self:OnExit_box_SetEntity_v2_116_Out();
end;

function export:f_box_Swamp_C7_EliteReinforcement_Expert_127_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_92();
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_127;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|283861322", "283861322", "Swamp_C7_CTP_010_Share", "box_Swamp_C7_EliteReinforcement_Expert_127.NextWave", "box_SetInteger_v2_92.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_136_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_136_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_83();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2110601183", "2110601183", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_136.Out", "box_SetEntity_v2_83.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_114();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1377418943", "1377418943", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_149.Out", "box_SetEntity_v2_114.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_209();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2080489090", "2080489090", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_149.Out", "box_SetEntity_v2_209.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_176();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|712219368", "712219368", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_149.Out", "box_SetEntity_v2_176.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_90();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2039522469", "2039522469", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_149.Out", "box_SetEntity_v2_90.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_163();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1611444358", "1611444358", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_149.Out", "box_SetEntity_v2_163.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_38_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_7();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_38;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1645167031", "1645167031", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_38.NextWave", "box_SetInteger_v2_7.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_12();
    l0 = self.box_Delay_v5_11;
    l1 = self.box_DisplayCustomUIMsg_v5_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|530558173", "530558173", "Swamp_C7_CTP_010_Share", "box_Delay_v5_11.Started", "box_DisplayCustomUIMsg_v5_12.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_12();
    l0 = self.box_Delay_v5_11;
    l1 = self.box_DisplayCustomUIMsg_v5_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|131640725", "131640725", "Swamp_C7_CTP_010_Share", "box_Delay_v5_11.TimeElapsed", "box_DisplayCustomUIMsg_v5_12.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_218_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_223();
    l0 = self.box_ProximityTrigger_v3_218;
    l1 = self.box_SpawnAI_223;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|352234844", "352234844", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_218.Enter", "box_SpawnAI_223.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_226_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_87();
    l0 = self.box_ProximityTrigger_v3_226;
    l1 = self.box_SpawnAI_87;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|313288230", "313288230", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_226.Enter", "box_SpawnAI_87.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_229_Out()
    self:OnExit_box_SetInteger_v2_229_Out();
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_222_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_127();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_222;
    l1 = self.box_Swamp_C7_EliteReinforcement_Expert_127;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1095165350", "1095165350", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_222.NextWave", "box_Swamp_C7_EliteReinforcement_Expert_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_45_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1478805204", "1478805204", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_45.Out", "box_SetEntity_v2_10.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_166();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1951330577", "1951330577", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_108.Out", "box_SetContextualStrategy_166.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_232();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1811835340", "1811835340", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_108.Out", "box_Simple_Node_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_124();
    l0 = self.box_Gate_v3_124;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1455833590", "1455833590", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_108.Out", "box_Gate_v3_124.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_35_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_21();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1685465840", "1685465840", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_35.Out", "box_SetEntity_v2_21.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|582260976", "582260976", "Swamp_C7_CTP_010_Share", "box_SetActivityFact_19.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_102_Out()
    self:OnExit_box_SetEntity_v2_102_Out();
end;

function export:f_box_MultipleOR_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = self.box_MultipleOR_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1540119444", "1540119444", "Swamp_C7_CTP_010_Share", "box_MultipleOR_69.Out", "box_OutputOrder_v2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_94_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_144();
    l0 = self.box_IndexList_v2_94;
    l1 = self.box_SpawnAI_144;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|170632101", "170632101", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_94.Output", "box_SpawnAI_144.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_94_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_217();
    l0 = self.box_IndexList_v2_94;
    l1 = self.box_SpawnAI_217;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2109636695", "2109636695", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_94.Output", "box_SpawnAI_217.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_94_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_171();
    l0 = self.box_IndexList_v2_94;
    l1 = self.box_SpawnAI_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1875750767", "1875750767", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_94.Output", "box_SpawnAI_171.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|177636595", "177636595", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_78.Out", "box_Delay_v5_103.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_104();
    l0 = self.box_ProximityTrigger_v3_104;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|950206348", "950206348", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_78.Out", "box_ProximityTrigger_v3_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_150();
    l0 = self.box_IndexList_v2_150;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|931590800", "931590800", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_78.Out", "box_IndexList_v2_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_93_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_107();
    l0 = self.box_ProximityTrigger_v3_93;
    l1 = self.box_Gate_v3_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1548773663", "1548773663", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_93.Enter", "box_Gate_v3_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_220_Out()
    self:OnExit_box_SetEntity_v2_220_Out();
end;

function export:f_box_SetEntity_v2_216_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_216_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_182();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1988082335", "1988082335", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_216.Out", "box_SetEntity_v2_182.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_221_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_221_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_230();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_230;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1419370606", "1419370606", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_221.Out", "box_Brick_Exp_Common_WaveSpawner_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_185_Out()
    self:OnExit_box_SetEntity_v2_185_Out();
end;

function export:f_box_SetEntity_v2_193_Out()
    self:OnExit_box_SetEntity_v2_193_Out();
end;

function export:f_box_Gate_v3_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_134();
    l0 = self.box_Gate_v3_132;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|784938960", "784938960", "Swamp_C7_CTP_010_Share", "box_Gate_v3_132.Out", "box_OutputOrder_v2_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_223_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_129();
    l0 = self.box_SpawnAI_223;
    l1 = self.box_SpawnAI_129;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1757760092", "1757760092", "Swamp_C7_CTP_010_Share", "box_SpawnAI_223.Out", "box_SpawnAI_129.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_32_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_38();
    l0 = self.box_IndexList_v2_32;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1669863765", "1669863765", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_32.Output", "box_Brick_Exp_Common_WaveSpawner_38.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_32_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_25();
    l0 = self.box_IndexList_v2_32;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|365745658", "365745658", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_32.Output", "box_Brick_Exp_Common_WaveSpawner_25.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_32_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_8();
    l0 = self.box_IndexList_v2_32;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1962868854", "1962868854", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_32.Output", "box_Brick_Exp_Common_WaveSpawner_8.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_32_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_46();
    l0 = self.box_IndexList_v2_32;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2015940810", "2015940810", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_32.Output", "box_Brick_Exp_Common_WaveSpawner_46.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_32_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_44();
    l0 = self.box_IndexList_v2_32;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1619041909", "1619041909", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_32.Output", "box_Brick_Exp_Common_WaveSpawner_44.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_227_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_227_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_70();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1893407634", "1893407634", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_227.Out", "box_SetEntity_v2_70.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_190_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_93();
    l0 = self.box_ProximityTrigger_v3_93;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1631963675", "1631963675", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_190.Out", "box_ProximityTrigger_v3_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_190_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_98();
    l0 = self.box_ProximityTrigger_v3_98;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1734449090", "1734449090", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_190.Out", "box_ProximityTrigger_v3_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_190_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_152();
    l0 = self.box_ProximityTrigger_v3_152;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1556874738", "1556874738", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_190.Out", "box_ProximityTrigger_v3_152.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_190_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_183();
    l0 = self.box_ProximityTrigger_v3_183;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2008487236", "2008487236", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_190.Out", "box_ProximityTrigger_v3_183.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_190_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_133();
    l0 = self.box_ProximityTrigger_v3_133;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|878629969", "878629969", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_190.Out", "box_ProximityTrigger_v3_133.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|124540951", "124540951", "Swamp_C7_CTP_010_Share", "box_ActivityInitialized_3.Out", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_166_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|36125634", "36125634", "Swamp_C7_CTP_010_Share", "box_SetContextualStrategy_166.Out", "box_OutputOrder_v2_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_77();
    l0 = self.box_SpawnAI_87;
    l1 = self.box_SpawnAI_77;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|764221749", "764221749", "Swamp_C7_CTP_010_Share", "box_SpawnAI_87.Out", "box_SpawnAI_77.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_76_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_76_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_222();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_222;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|459198254", "459198254", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_76.Out", "box_Brick_Exp_Common_WaveSpawner_222.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_99();
    l0 = self.box_EntityStatusListener_99;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|484784617", "484784617", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_147.Out", "box_EntityStatusListener_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_151();
    l0 = self.box_EntityStatusListener_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|983861660", "983861660", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_147.Out", "box_EntityStatusListener_151.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_176_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_176_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_95();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|202614380", "202614380", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_176.Out", "box_SetEntity_v2_95.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_184_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_194();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|465443624", "465443624", "Swamp_C7_CTP_010_Share", "box_SetContextualStrategy_184.Out", "box_OutputOrder_v2_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_27_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_26();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1864487987", "1864487987", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_27.Out", "box_SetEntity_v2_26.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_89_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_89_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_85();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1626027065", "1626027065", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_89.Out", "box_SetEntity_v2_85.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_46_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_28();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_46;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1623375981", "1623375981", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_46.NextWave", "box_SetInteger_v2_28.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_109_Out()
    self:OnExit_box_SetEntity_v2_109_Out();
end;

function export:f_box_SetInteger_v2_113_Out()
    self:OnExit_box_SetInteger_v2_113_Out();
end;

function export:f_box_SetEntity_v2_52_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|749176292", "749176292", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_52.Out", "box_SetEntity_v2_27.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_42_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_42_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1877838213", "1877838213", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_42.Out", "box_SetEntity_v2_37.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_22();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1433011930", "1433011930", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_10.Out", "box_SetEntity_v2_22.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_142_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1762346674", "1762346674", "Swamp_C7_CTP_010_Share", "box_SetContextualStrategy_142.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_20_Out()
    self:OnExit_box_SetEntity_v2_20_Out();
end;

function export:f_box_SetEntity_v2_211_Out()
    self:OnExit_box_SetEntity_v2_211_Out();
end;

function export:f_box_OutputOrder_v2_203_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1994513411", "1994513411", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_203.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_203_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_204();
    l0 = self.box_IndexList_v2_204;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|196483269", "196483269", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_203.Out", "box_IndexList_v2_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_197();
    l0 = self.box_Delay_v5_197;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1139650116", "1139650116", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_203.Out", "box_Delay_v5_197.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_194_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_202();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1887205976", "1887205976", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_194.Out", "box_SetEntity_v2_202.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_175();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1859401104", "1859401104", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_194.Out", "box_SetEntity_v2_175.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_211();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1632721545", "1632721545", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_194.Out", "box_SetEntity_v2_211.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_169();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|403902082", "403902082", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_194.Out", "box_SetEntity_v2_169.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_213();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1256295708", "1256295708", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_194.Out", "box_SetEntity_v2_213.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_194_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_216();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|541388328", "541388328", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_194.Out", "box_SetEntity_v2_216.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_187_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|213629747", "213629747", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_187.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_187_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_186();
    l0 = self.box_MessageListener_v3_186;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1997188763", "1997188763", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_187.Out", "box_MessageListener_v3_186.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_187_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_205();
    l0 = self.box_IndexList_v2_205;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|824089821", "824089821", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_187.Out", "box_IndexList_v2_205.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_198();
    l0 = self.box_SpawnAI_105;
    l1 = self.box_SpawnAI_198;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|249560985", "249560985", "Swamp_C7_CTP_010_Share", "box_SpawnAI_105.Out", "box_SpawnAI_198.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_134_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_145();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|285736453", "285736453", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_134.Out", "box_SetContextualStrategy_145.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_232();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|744268080", "744268080", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_134.Out", "box_Simple_Node_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_132();
    l0 = self.box_Gate_v3_132;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|686969821", "686969821", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_134.Out", "box_Gate_v3_132.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_74_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_74_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_212();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|319951838", "319951838", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_74.Out", "box_SetEntity_v2_212.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    l1 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|349489437", "349489437", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_PlayerFullyDetected_36.Detected", "box_OnceOnly_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_BothPlayers()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_BothPlayers();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_ClientOnly()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_ClientOnly();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_HostOnly()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_HostOnly();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_36_Disabled()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Disabled();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_36_Enabled()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Enabled();
end;

function export:f_box_SetEntity_v2_26_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_49();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1804432177", "1804432177", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_26.Out", "box_SetEntity_v2_49.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_191_Out()
    self:OnExit_box_SetEntity_v2_191_Out();
end;

function export:f_box_EntityStatusListener_151_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_208();
    l0 = self.box_EntityStatusListener_151;
    l1 = self.box_SpawnAI_208;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|128139354", "128139354", "Swamp_C7_CTP_010_Share", "box_EntityStatusListener_151.Loaded", "box_SpawnAI_208.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_202_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_202_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_215();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|791922613", "791922613", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_202.Out", "box_SetEntity_v2_215.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_110_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_110_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_193();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|658346188", "658346188", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_110.Out", "box_SetEntity_v2_193.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_131_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_131_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_121();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1958335132", "1958335132", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_131.Out", "box_SetEntity_v2_121.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_OnceOnly_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1037842968", "1037842968", "Swamp_C7_CTP_010_Share", "box_OnceOnly_v3_9.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1243532760", "1243532760", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_47.Out", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_38();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1699594284", "1699594284", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_47.Out", "box_Brick_Exp_Common_WaveSpawner_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_IndexList_v2_205_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_143();
    l0 = self.box_IndexList_v2_205;
    l1 = self.box_ProximityTrigger_v3_143;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|449539063", "449539063", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_205.Output", "box_ProximityTrigger_v3_143.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_205_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_201();
    l0 = self.box_IndexList_v2_205;
    l1 = self.box_ProximityTrigger_v3_201;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|695568124", "695568124", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_205.Output", "box_ProximityTrigger_v3_201.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_205_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_157();
    l0 = self.box_IndexList_v2_205;
    l1 = self.box_ProximityTrigger_v3_157;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1102984531", "1102984531", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_205.Output", "box_ProximityTrigger_v3_157.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RadioModifier_v3_234_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_235();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|881858464", "881858464", "Swamp_C7_CTP_010_Share", "box_RadioModifier_v3_234.Out", "box_RadioModifier_v3_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_80_Out()
    self:OnExit_box_SetEntity_v2_80_Out();
end;

function export:f_box_SetEntity_v2_141_Out()
    self:OnExit_box_SetEntity_v2_141_Out();
end;

function export:f_box_SetEntity_v2_43_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_41();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|181162261", "181162261", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_43.Out", "box_SetEntity_v2_41.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_230_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_214();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_230;
    l1 = self.box_Swamp_C7_EliteReinforcement_Expert_214;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|411377694", "411377694", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_230.NextWave", "box_Swamp_C7_EliteReinforcement_Expert_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_168_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_81();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|927984521", "927984521", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_168.Out", "box_SetEntity_v2_81.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_130();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1608746963", "1608746963", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_168.Out", "box_SetEntity_v2_130.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_158();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2038062232", "2038062232", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_168.Out", "box_SetEntity_v2_158.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_136();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|655536974", "655536974", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_168.Out", "box_SetEntity_v2_136.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_135();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1312783547", "1312783547", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_168.Out", "box_SetEntity_v2_135.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_79();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1374634539", "1374634539", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_168.Out", "box_SetEntity_v2_79.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_161_Out()
    self:OnExit_box_SetEntity_v2_161_Out();
end;

function export:f_box_SetEntity_v2_81_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_162();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1938872469", "1938872469", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_81.Out", "box_SetEntity_v2_162.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_139_Out()
    self:OnExit_box_SetEntity_v2_139_Out();
end;

function export:f_box_SetFloat_v2_96_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_96_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_113();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|875091643", "875091643", "Swamp_C7_CTP_010_Share", "box_SetFloat_v2_96.Out", "box_SetInteger_v2_113.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_30();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|535472911", "535472911", "Swamp_C7_CTP_010_Share", "box_SetActivityFact_50.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_30.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|39271535", "39271535", "Swamp_C7_CTP_010_Share", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|733440051", "733440051", "Swamp_C7_CTP_010_Share", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_45();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|861488939", "861488939", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_49.Out", "box_SetEntity_v2_45.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_97_Out()
    self:OnExit_box_SetEntity_v2_97_Out();
end;

function export:f_box_SetEntity_v2_22_Out()
    self:OnExit_box_SetEntity_v2_22_Out();
end;

function export:f_box_SetEntity_v2_106_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_106_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_97();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1976591906", "1976591906", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_106.Out", "box_SetEntity_v2_97.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_204_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_195();
    l0 = self.box_IndexList_v2_204;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|129532667", "129532667", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_204.Output", "box_SetFloat_v2_195.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_204_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_96();
    l0 = self.box_IndexList_v2_204;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|742198421", "742198421", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_204.Output", "box_SetFloat_v2_96.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_204_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_178();
    l0 = self.box_IndexList_v2_204;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1818949105", "1818949105", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_204.Output", "box_SetFloat_v2_178.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_173_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_173_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_227();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1898896557", "1898896557", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_173.Out", "box_SetEntity_v2_227.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_23_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_192();
    l0 = self.box_MessageListener_v3_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1805948451", "1805948451", "Swamp_C7_CTP_010_Share", "box_MessageListener_v3_23.Received", "box_OutputOrder_v2_192.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_62();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_Delay_v5_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|569601260", "569601260", "Swamp_C7_CTP_010_Share", "box_MultipleOR_16.Out", "box_Delay_v5_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_104_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_119();
    l0 = self.box_ProximityTrigger_v3_104;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1602778674", "1602778674", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_104.Enter", "box_SetContextualStrategy_119.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_6_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Gate_v3_6;
    l1 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2120570445", "2120570445", "Swamp_C7_CTP_010_Share", "box_Gate_v3_6.Closed", "box_Delay_v5_33.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Gate_v3_6;
    l1 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1396022301", "1396022301", "Swamp_C7_CTP_010_Share", "box_Gate_v3_6.Out", "box_Delay_v5_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_117_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_117_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_84();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|748602300", "748602300", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_117.Out", "box_SetEntity_v2_84.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_34_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_8();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|703216271", "703216271", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_34.Out", "box_Brick_Exp_Common_WaveSpawner_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_155_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_228();
    l0 = self.box_MultipleOR_155;
    l1 = self.box_GroupSizeListener_v6_228;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1989846317", "1989846317", "Swamp_C7_CTP_010_Share", "box_MultipleOR_155.Out", "box_GroupSizeListener_v6_228.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_31_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_53();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1990190948", "1990190948", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_31.Out", "box_SetEntity_v2_53.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_41_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_20();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1566315755", "1566315755", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_41.Out", "box_SetEntity_v2_20.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_30();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1751042852", "1751042852", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_192.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_30.PackagePicked", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackagePicked
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_192_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_190();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1855301848", "1855301848", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_192.Out", "box_OutputOrder_v2_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_86();
    l0 = self.box_SpawnAI_198;
    l1 = self.box_SpawnAI_86;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|898285707", "898285707", "Swamp_C7_CTP_010_Share", "box_SpawnAI_198.Out", "box_SpawnAI_86.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_72_Out()
    self:OnExit_box_SetEntity_v2_72_Out();
end;

function export:f_box_SetEntity_v2_56_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_56_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_52();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1601497495", "1601497495", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_56.Out", "box_SetEntity_v2_52.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_34();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|836610022", "836610022", "Swamp_C7_CTP_010_Share", "box_MultipleOR_13.Out", "box_SetInteger_v2_34.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_58_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_57();
    l0 = self.box_EntityStatusListener_58;
    l1 = self.box_VehicleDamageListener_v2_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1042540472", "1042540472", "Swamp_C7_CTP_010_Share", "box_EntityStatusListener_58.Loaded", "box_VehicleDamageListener_v2_57.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_101_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_218();
    l0 = self.box_ProximityTrigger_v3_218;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|505594075", "505594075", "Swamp_C7_CTP_010_Share", "box_SetContextualStrategy_101.Out", "box_ProximityTrigger_v3_218.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_152_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_231();
    l0 = self.box_ProximityTrigger_v3_152;
    l1 = self.box_Gate_v3_231;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2066490583", "2066490583", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_152.Enter", "box_Gate_v3_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_21_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_29();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|276995770", "276995770", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_21.Out", "box_SetEntity_v2_29.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_208_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_151();
    l0 = self.box_SpawnAI_208;
    l1 = self.box_EntityStatusListener_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|310482266", "310482266", "Swamp_C7_CTP_010_Share", "box_SpawnAI_208.Out", "box_EntityStatusListener_151.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_143_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_112();
    l0 = self.box_ProximityTrigger_v3_143;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1898076653", "1898076653", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_143.Enter", "box_SetContextualStrategy_112.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_200_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_200_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_89();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2073111859", "2073111859", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_200.Out", "box_SetEntity_v2_89.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_158_Out()
    self:OnExit_box_SetEntity_v2_158_Out();
end;

function export:f_box_SetEntity_v2_114_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_114_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_141();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|582490587", "582490587", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_114.Out", "box_SetEntity_v2_141.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_142();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|188619479", "188619479", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_111.Out", "box_SetContextualStrategy_142.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_232();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|767013430", "767013430", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_111.Out", "box_Simple_Node_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_165();
    l0 = self.box_Gate_v3_165;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|826417049", "826417049", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_111.Out", "box_Gate_v3_165.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_73();
    l0 = self.box_Delay_v5_91;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1854783817", "1854783817", "Swamp_C7_CTP_010_Share", "box_Delay_v5_91.TimeElapsed", "box_SetContextualStrategy_73.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_84_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_84_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_185();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|935572827", "935572827", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_84.Out", "box_SetEntity_v2_185.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_53_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_43();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|807344113", "807344113", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_53.Out", "box_SetEntity_v2_43.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_162_Out()
    self:OnExit_box_SetEntity_v2_162_Out();
end;

function export:f_box_SetEntity_v2_175_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_175_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_180();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1884586288", "1884586288", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_175.Out", "box_SetEntity_v2_180.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_148_Out()
    self:OnExit_box_SetEntity_v2_148_Out();
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_55();
    l0 = self.box_ProximityTrigger_v3_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1986075256", "1986075256", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_17.Out", "box_ProximityTrigger_v3_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|436573886", "436573886", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_17.Out", "box_SetActivityFact_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_65();
    l0 = self.box_StateListener_v2_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1282642604", "1282642604", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_17.Out", "box_StateListener_v2_65.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_64();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|402289271", "402289271", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_17.Out", "box_SetContextualStrategy_64.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_234();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1414450041", "1414450041", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_17.Out", "box_RadioModifier_v3_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_99();
    l0 = self.box_SpawnAI_196;
    l1 = self.box_EntityStatusListener_99;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|310171511", "310171511", "Swamp_C7_CTP_010_Share", "box_SpawnAI_196.Out", "box_EntityStatusListener_99.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_199_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_207();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_199;
    l1 = self.box_Swamp_C7_EliteReinforcement_Expert_207;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1541184558", "1541184558", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_199.NextWave", "box_Swamp_C7_EliteReinforcement_Expert_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_215_Out()
    self:OnExit_box_SetEntity_v2_215_Out();
end;

function export:f_box_SetEntity_v2_29_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_31();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|415328419", "415328419", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_29.Out", "box_SetEntity_v2_31.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_183_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_165();
    l0 = self.box_ProximityTrigger_v3_183;
    l1 = self.box_Gate_v3_165;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1090270236", "1090270236", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_183.Enter", "box_Gate_v3_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_100_Out()
    self:OnExit_box_SetEntity_v2_100_Out();
end;

function export:f_box_SetInteger_v2_115_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_115_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_76();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2110643686", "2110643686", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_115.Out", "box_SetInteger_v2_76.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_56();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|539168434", "539168434", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_37.Out", "box_SetEntity_v2_56.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_212_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_212_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_102();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1739104827", "1739104827", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_212.Out", "box_SetEntity_v2_102.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_197_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_197;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2100156338", "2100156338", "Swamp_C7_CTP_010_Share", "box_Delay_v5_197.Started", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_197_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_197;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1513201955", "1513201955", "Swamp_C7_CTP_010_Share", "box_Delay_v5_197.TimeElapsed", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_150_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_150;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1936214512", "1936214512", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_150.Output", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_150_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_150;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|22912071", "22912071", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_150.Output", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_40_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_35();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1380962706", "1380962706", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_40.Out", "box_SetEntity_v2_35.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_85_Out()
    self:OnExit_box_SetEntity_v2_85_Out();
end;

function export:f_box_SetEntity_v2_120_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_120_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_109();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1251855721", "1251855721", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_120.Out", "box_SetEntity_v2_109.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_103_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_160();
    l0 = self.box_Delay_v5_103;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_160;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|156830668", "156830668", "Swamp_C7_CTP_010_Share", "box_Delay_v5_103.TimeElapsed", "box_Brick_Exp_Common_WaveSpawner_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_146_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_146_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_116();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|951946098", "951946098", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_146.Out", "box_SetEntity_v2_116.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_125_Out()
    self:OnExit_box_SetEntity_v2_125_Out();
end;

function export:f_box_MessageListener_v3_186_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = self.box_MessageListener_v3_186;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1562666717", "1562666717", "Swamp_C7_CTP_010_Share", "box_MessageListener_v3_186.Received", "box_OutputOrder_v2_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_235_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_236();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1305988928", "1305988928", "Swamp_C7_CTP_010_Share", "box_RadioModifier_v3_235.Out", "box_RadioModifier_v3_236.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1427978370", "1427978370", "Swamp_C7_CTP_010_Share", "box_Delay_v5_33.TimeElapsed", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_157_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_219();
    l0 = self.box_ProximityTrigger_v3_157;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|474614939", "474614939", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_157.Enter", "box_SetContextualStrategy_219.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_159_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_159_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_80();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1367293833", "1367293833", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_159.Out", "box_SetEntity_v2_80.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_121_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_121_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_139();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1164697914", "1164697914", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_121.Out", "box_SetEntity_v2_139.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_23();
    l0 = self.box_MessageListener_v3_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|727541927", "727541927", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_18.Out", "box_MessageListener_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_51();
    l0 = self.box_MessageListener_v3_51;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|833015782", "833015782", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_18.Out", "box_MessageListener_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_14();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1984097798", "1984097798", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_18.Out", "box_GetPlayerGroup_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_58();
    l0 = self.box_EntityStatusListener_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1263311679", "1263311679", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_233();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_233;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1916794602", "1916794602", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_18.Out", "box_Brick_Exp_Common_EnemyHelicopterCleaner_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_RadioModifier_v3_236_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_237();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|615646732", "615646732", "Swamp_C7_CTP_010_Share", "box_RadioModifier_v3_236.Out", "box_RadioModifier_v3_237.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_44_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_44;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|707804463", "707804463", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_44.NextWave", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_128_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_160();
    l0 = self.box_IndexList_v2_128;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_160;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|201014005", "201014005", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_128.Output", "box_Brick_Exp_Common_WaveSpawner_160.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_128_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_230();
    l0 = self.box_IndexList_v2_128;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_230;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1740008130", "1740008130", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_128.Output", "box_Brick_Exp_Common_WaveSpawner_230.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_128_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_154();
    l0 = self.box_IndexList_v2_128;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_154;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1620064303", "1620064303", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_128.Output", "box_Brick_Exp_Common_WaveSpawner_154.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_128_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_222();
    l0 = self.box_IndexList_v2_128;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_222;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1726280694", "1726280694", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_128.Output", "box_Brick_Exp_Common_WaveSpawner_222.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_128_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_199();
    l0 = self.box_IndexList_v2_128;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_199;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|118813637", "118813637", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_128.Output", "box_Brick_Exp_Common_WaveSpawner_199.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Swamp_C7_PickRandomNPC_39();
    l0 = self.box_Swamp_C7_PickRandomNPC_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|744453723", "744453723", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_66.Out", "box_Swamp_C7_PickRandomNPC_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Swamp_C7_PickRandomNPC_15();
    l0 = self.box_Swamp_C7_PickRandomNPC_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1011375580", "1011375580", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_66.Out", "box_Swamp_C7_PickRandomNPC_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_228_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_224();
    l0 = self.box_GroupSizeListener_v6_228;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|459558986", "459558986", "Swamp_C7_CTP_010_Share", "box_GroupSizeListener_v6_228.Enabled", "box_Compare_Integers_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_51_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_MessageListener_v3_51;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|251638646", "251638646", "Swamp_C7_CTP_010_Share", "box_MessageListener_v3_51.Received", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_209_Out()
    self:OnExit_box_SetEntity_v2_209_Out();
end;

function export:f_box_SetEntity_v2_140_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_140_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_161();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|659255137", "659255137", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_140.Out", "box_SetEntity_v2_161.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_154_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_82();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_154;
    l1 = self.box_Swamp_C7_EliteReinforcement_Expert_82;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1487964861", "1487964861", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_154.NextWave", "box_Swamp_C7_EliteReinforcement_Expert_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_225_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_225_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_156();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1035691548", "1035691548", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_225.Out", "box_SetEntity_v2_156.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_118_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_118_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_203();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1071381887", "1071381887", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_118.Out", "box_OutputOrder_v2_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_95_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_95_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_100();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1789148977", "1789148977", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_95.Out", "box_SetEntity_v2_100.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_156_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_156_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_172();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1779092085", "1779092085", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_156.Out", "box_SetEntity_v2_172.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_181_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_123();
    l0 = self.box_ProximityTrigger_v3_181;
    l1 = self.box_SpawnAI_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1690626934", "1690626934", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_181.Enabled", "box_SpawnAI_123.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_181_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_126();
    l0 = self.box_ProximityTrigger_v3_181;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1975996785", "1975996785", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_181.Enter", "box_SetContextualStrategy_126.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_14_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_36();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|21313518", "21313518", "Swamp_C7_CTP_010_Share", "box_GetPlayerGroup_v2_14.Out", "box_Brick_Exp_Common_PlayerFullyDetected_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Swamp_C7_EliteReinforcement_Expert_214_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_118();
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_214;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|167038247", "167038247", "Swamp_C7_CTP_010_Share", "box_Swamp_C7_EliteReinforcement_Expert_214.NextWave", "box_SetInteger_v2_118.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|716740252", "716740252", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_137.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_210();
    l0 = self.box_IndexList_v2_210;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1188423789", "1188423789", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_137.Out", "box_IndexList_v2_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_48_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_48_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_46();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|364021087", "364021087", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_48.Out", "box_Brick_Exp_Common_WaveSpawner_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_231_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = self.box_Gate_v3_231;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|74615892", "74615892", "Swamp_C7_CTP_010_Share", "box_Gate_v3_231.Out", "box_OutputOrder_v2_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Swamp_C7_EliteReinforcement_Expert_207_NextWave()
    local l0, l1;
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_207;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|471239650", "471239650", "Swamp_C7_CTP_010_Share", "box_Swamp_C7_EliteReinforcement_Expert_207.NextWave", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_70_Out()
    self:OnExit_box_SetEntity_v2_70_Out();
end;

function export:f_box_SpawnAI_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_SpawnAI_86;
    l1 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1436997472", "1436997472", "Swamp_C7_CTP_010_Share", "box_SpawnAI_86.Out", "box_Delay_v5_91.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_226();
    l0 = self.box_SpawnAI_123;
    l1 = self.box_ProximityTrigger_v3_226;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1442289071", "1442289071", "Swamp_C7_CTP_010_Share", "box_SpawnAI_123.Out", "box_ProximityTrigger_v3_226.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Swamp_C7_EliteReinforcement_Expert_122_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_221();
    l0 = self.box_Swamp_C7_EliteReinforcement_Expert_122;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1816087375", "1816087375", "Swamp_C7_CTP_010_Share", "box_Swamp_C7_EliteReinforcement_Expert_122.NextWave", "box_SetInteger_v2_221.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_54_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_40();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1227746624", "1227746624", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_54.Out", "box_SetEntity_v2_40.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_224_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_94();
    l0 = self.box_IndexList_v2_94;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2022978746", "2022978746", "Swamp_C7_CTP_010_Share", "box_Compare_Integers_224.A_lt_B", "box_IndexList_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_189();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1296389931", "1296389931", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_153.Out", "box_SetContextualStrategy_189.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_232();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|958166790", "958166790", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_153.Out", "box_Simple_Node_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_231();
    l0 = self.box_Gate_v3_231;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1401778350", "1401778350", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_153.Out", "box_Gate_v3_231.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|624074284", "624074284", "Swamp_C7_CTP_010_Share", "box_MultipleOR_2.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v3_55_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_54();
    l0 = self.box_ProximityTrigger_v3_55;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|405139166", "405139166", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_55.Enter", "box_SetEntity_v2_54.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_55_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_42();
    l0 = self.box_ProximityTrigger_v3_55;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|703888703", "703888703", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_55.Leave", "box_SetEntity_v2_42.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_169_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_169_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_140();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|284887874", "284887874", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_169.Out", "box_SetEntity_v2_140.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_MultipleOR_67;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|825336285", "825336285", "Swamp_C7_CTP_010_Share", "box_MultipleOR_67.Out", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_189_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1081262161", "1081262161", "Swamp_C7_CTP_010_Share", "box_SetContextualStrategy_189.Out", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_44();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1781998418", "1781998418", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_28.Out", "box_Brick_Exp_Common_WaveSpawner_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_160_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_122();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_160;
    l1 = self.box_Swamp_C7_EliteReinforcement_Expert_122;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|683027007", "683027007", "Swamp_C7_CTP_010_Share", "box_Brick_Exp_Common_WaveSpawner_160.NextWave", "box_Swamp_C7_EliteReinforcement_Expert_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_130_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_130_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_148();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2051365067", "2051365067", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_130.Out", "box_SetEntity_v2_148.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_79_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_79_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_138();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1465013781", "1465013781", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_79.Out", "box_SetEntity_v2_138.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_83_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_83_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_125();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|686705247", "686705247", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_83.Out", "box_SetEntity_v2_125.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_145_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_168();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|645489478", "645489478", "Swamp_C7_CTP_010_Share", "box_SetContextualStrategy_145.Out", "box_OutputOrder_v2_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_167();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1665160486", "1665160486", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_68.Out", "box_SetEntity_v2_167.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_72();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|872662864", "872662864", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_68.Out", "box_SetEntity_v2_72.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_131();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|676862819", "676862819", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_68.Out", "box_SetEntity_v2_131.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_74();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|406461182", "406461182", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_68.Out", "box_SetEntity_v2_74.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_225();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1144254889", "1144254889", "Swamp_C7_CTP_010_Share", "box_OutputOrder_v2_68.Out", "box_SetEntity_v2_225.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_206_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_206_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_174();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|816253209", "816253209", "Swamp_C7_CTP_010_Share", "box_SetEntity_v2_206.Out", "box_SetEntity_v2_174.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_210_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_105();
    l0 = self.box_IndexList_v2_210;
    l1 = self.box_SpawnAI_105;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|180464138", "180464138", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_210.Output", "box_SpawnAI_105.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_210_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_181();
    l0 = self.box_IndexList_v2_210;
    l1 = self.box_ProximityTrigger_v3_181;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|765337751", "765337751", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_210.Output", "box_ProximityTrigger_v3_181.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_210_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_101();
    l0 = self.box_IndexList_v2_210;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|895104704", "895104704", "Swamp_C7_CTP_010_Share", "box_IndexList_v2_210.Output", "box_SetContextualStrategy_101.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_238_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_239();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1089818916", "1089818916", "Swamp_C7_CTP_010_Share", "box_RadioModifier_v3_238.Out", "box_RadioModifier_v3_239.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_92_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_92_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_170();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|507579947", "507579947", "Swamp_C7_CTP_010_Share", "box_SetInteger_v2_92.Out", "box_SetInteger_v2_170.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_98_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_132();
    l0 = self.box_ProximityTrigger_v3_98;
    l1 = self.box_Gate_v3_132;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1973476821", "1973476821", "Swamp_C7_CTP_010_Share", "box_ProximityTrigger_v3_98.Enter", "box_Gate_v3_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|@CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|@DisbaleSetup_Before");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_240_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|@Reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_232_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_124()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|7507771");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|19052056");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
                [2] = self.f_box_OutputOrder_v2_75_Out_2,
                [3] = self.f_box_OutputOrder_v2_75_Out_3,
                [4] = self.f_box_OutputOrder_v2_75_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_62()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|32847679");
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
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|34976104");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_180_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898331785708983",
    };
    return params;
end;

function export:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_82()
    local params;
    params = {
        -- e_SpawnEliteGroup,
        [0] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_65()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#A21E7AC0",
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|78806731");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_178_Out,
    });
    params = {
        -- Float,
        [0] = 15,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_107()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|96041748");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_135_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896800346767970",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_165()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|103210477");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_164_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_8()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_InfiniteWave_A_2,
        -- Spawner_1,
        [10] = self.e_InfiniteWave_A_1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|116762032");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_172_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896667622209361",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_57()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108617783804696352",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_237()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|156313859");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_237_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109975306270947582",
    };
    return params;
end;

function export:OnEnter_box_Swamp_C7_PickRandomNPC_39()
    local params;
    params = {
        -- b_RemoveFromPreviousGroup,
        [0] = true,
        -- e_CS_End,
        [1] = Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPackage,
        -- Group_begin,
        [2] = "#95A732A9",
        -- Group_end,
        [3] = "#3A16142B",
        -- i_GroupSize_end_MAX,
        [4] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|159417269");
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

function export:OnEnter_box_SetEntity_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|169217760");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_179_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898772468649366",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_25()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_Wave_2_B,
        -- Spawner_1,
        [10] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|181630686");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_174_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897604449349626",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|186679589");
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
                [0] = self.f_box_OutputOrder_v2_188_Out_0,
                [1] = self.f_box_OutputOrder_v2_188_Out_1,
                [2] = self.f_box_OutputOrder_v2_188_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|190157356");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_213_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896720617241609",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|192185718");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_163_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897556372139652",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|195898860");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_182_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896700249700691",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|203193447");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_90_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897614670868602",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|206045878");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_170_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|206613669");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_7_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_201()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108894157146694031",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_99()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108912718888056417",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_133()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108870246661114532",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|218379879");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_138_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896712266382057",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|233267910");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108911823360108816",
        -- Group,
        [1] = "#A21E7AC0",
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|243207018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_195_Out,
    });
    params = {
        -- Float,
        [0] = 20,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|269694818");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_167_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896469980303273",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|273855685");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_71_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|290634218");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_116_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896730060717202",
    };
    return params;
end;

function export:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_127()
    local params;
    params = {
        -- e_SpawnEliteGroup,
        [0] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|299574434");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_136_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896775176748858",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|340443482");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
                [2] = self.f_box_OutputOrder_v2_149_Out_2,
                [3] = self.f_box_OutputOrder_v2_149_Out_3,
                [4] = self.f_box_OutputOrder_v2_149_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_38()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_Wave_1_B,
        -- Spawner_1,
        [10] = self.e_Wave_1_A,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|362497511");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPackage,
        -- Group,
        [1] = "#ACE2D9DE",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_218()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109216121677698034",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_226()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109215432824065273",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|388125946");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_229_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_222()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 12.5,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiniteWave_B_2,
        -- Spawner_1,
        [10] = self.e_InfiniteWave_B_1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|412906231");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109173697353878704",
        -- Group,
        [1] = "#A21E7AC0",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|421734461");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_45_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896885457585740",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|425780420");
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
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
                [2] = self.f_box_OutputOrder_v2_108_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|432927735");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_35_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898111521832877",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|434185752");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_19_Out,
    });
    params = {
        -- Fact,
        [0] = "SWAMP_C7_B10_PlayerDetected",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|446524682");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_102_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896632106939437",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_233()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2108897695566411098",
        -- EnemyHelicopterGroup,
        [1] = "#B6053B4C",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_94()
    local params;
    params = {
        -- Index,
        [0] = self.i_InfiniteWave_ID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|481742551");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
                [2] = self.f_box_OutputOrder_v2_78_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_93()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108870114070776459",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|491202622");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_220_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896707224828536",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|502226399");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_216_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896703456246240",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|503133031");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_221_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|511403642");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109173695648894124",
        -- Group,
        [1] = "#A21E7AC0",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|518195839");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_185_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896786346180724",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|531220973");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_193_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896506426708448",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_132()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_223()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109216239546029484",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_32()
    local params;
    params = {
        -- Index,
        [0] = self.i_Wavebefore_Index,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|587025961");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_227_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897459842329253",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|593573005");
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
                [0] = self.f_box_OutputOrder_v2_190_Out_0,
                [1] = self.f_box_OutputOrder_v2_190_Out_1,
                [2] = self.f_box_OutputOrder_v2_190_Out_2,
                [3] = self.f_box_OutputOrder_v2_190_Out_3,
                [4] = self.f_box_OutputOrder_v2_190_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|597308066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_166_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108911823360108816",
        -- Group,
        [1] = "#A0A3CA8B",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_87()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109215496246136175",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|604616737");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_76_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|606749300");
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

function export:OnEnter_box_SetEntity_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|611510447");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_176_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897576274112321",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|628529536");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_184_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108911820122106116",
        -- Group,
        [1] = "#A0A3CA8B",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|637061145");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_27_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896753206984181",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|639539772");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_89_Out,
    });
    params = {
        -- Entity,
        [0] = "2108912664831866025",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_46()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_InfiniteWave_B_2,
        -- Spawner_1,
        [10] = self.e_InfiniteWave_B_1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|650486544");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_109_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896801221280409",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|652442808");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_113_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|676837306");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_52_Out,
    });
    params = {
        -- Entity,
        [0] = "2108895833253497277",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|678648605");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_42_Out,
    });
    params = {
        -- Entity,
        [0] = "2108220084259400763",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|690890826");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_10_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896703456246240",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|696814543");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_142_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108911822644979976",
        -- Group,
        [1] = "#A0A3CA8B",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|704336927");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_20_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896712266382057",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|735666810");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_211_Out,
    });
    params = {
        -- Entity,
        [0] = "2108894845144673152",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|752034077");
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
                [0] = self.f_box_OutputOrder_v2_203_Out_0,
                [1] = self.f_box_OutputOrder_v2_203_Out_1,
                [2] = self.f_box_OutputOrder_v2_203_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|752310062");
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
                [0] = self.f_box_OutputOrder_v2_194_Out_0,
                [1] = self.f_box_OutputOrder_v2_194_Out_1,
                [2] = self.f_box_OutputOrder_v2_194_Out_2,
                [3] = self.f_box_OutputOrder_v2_194_Out_3,
                [4] = self.f_box_OutputOrder_v2_194_Out_4,
                [5] = self.f_box_OutputOrder_v2_194_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|760668590");
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
                [0] = self.f_box_OutputOrder_v2_187_Out_0,
                [1] = self.f_box_OutputOrder_v2_187_Out_1,
                [2] = self.f_box_OutputOrder_v2_187_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_105()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109213676270547955",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|769998123");
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
                [0] = self.f_box_OutputOrder_v2_134_Out_0,
                [1] = self.f_box_OutputOrder_v2_134_Out_1,
                [2] = self.f_box_OutputOrder_v2_134_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_77()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109215483088604461",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|781693649");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_74_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896585350934839",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- EnemyGroup,
        [0] = "#A21E7AC0",
        -- OnceOnly,
        [1] = false,
        -- PlayerGroup,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|807663789");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_26_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896746747755778",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|822935820");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_191_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896469997080502",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_151()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109198321118620254",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|831047720");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_202_Out,
    });
    params = {
        -- Entity,
        [0] = "2108235150727851218",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|834096831");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_110_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896506405736913",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|845849695");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_131_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896653890057758",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|875428487");
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

function export:OnEnter_box_IndexList_v2_205()
    local params;
    params = {
        -- Index,
        [0] = Globals.Swamp_C7_CTP_010_Main.i_ExtractionPOIID,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_234()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|882623496");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_234_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109975271397406968",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|886570792");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_80_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897570217537289",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|887972250");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_141_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897630883951114",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|896010934");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_43_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896795944845750",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_230()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_1_B,
        -- Spawner_1,
        [10] = self.e_Wave_1_A,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|917877380");
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
                [0] = self.f_box_OutputOrder_v2_168_Out_0,
                [1] = self.f_box_OutputOrder_v2_168_Out_1,
                [2] = self.f_box_OutputOrder_v2_168_Out_2,
                [3] = self.f_box_OutputOrder_v2_168_Out_3,
                [4] = self.f_box_OutputOrder_v2_168_Out_4,
                [5] = self.f_box_OutputOrder_v2_168_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|918866729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_161_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896870559417747",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|930603130");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_81_Out,
    });
    params = {
        -- Entity,
        [0] = "2108895617454457057",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|936541162");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_139_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896642382984442",
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|956425766");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_96_Out,
    });
    params = {
        -- Float,
        [0] = 20,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|975614930");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_50_Out,
    });
    params = {
        -- Fact,
        [0] = "Swamp_C7_Package_Picked",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|990602619");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_49_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896720617241609",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|999754342");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_97_Out,
    });
    params = {
        -- Entity,
        [0] = "2108912739624695567",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1010415083");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_22_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896700249700691",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1018489099");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_106_Out,
    });
    params = {
        -- Entity,
        [0] = "2108912718871279190",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_204()
    local params;
    params = {
        -- Index,
        [0] = Globals.Swamp_C7_CTP_010_Main.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1057526590");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_173_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897455505418859",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "GetPackage",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1101075052");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109378733063292458",
        -- Group,
        [1] = "#ACE2D9DE",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_104()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#B6053B4C",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109198418214661078",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_6()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1142660852");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_117_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896780457377766",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1154912708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_34_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1160283924");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_31_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896715380652918",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1161622122");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_41_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898767697628334",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1167786678");
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
                [0] = self.f_box_OutputOrder_v2_192_Out_0,
                [1] = self.f_box_OutputOrder_v2_192_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_198()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109213697095267396",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_30()
    local params;
    params = {
        -- ActualPackageSpawner,
        [0] = Globals.Swamp_C7_CTP_010_Main.e_PackageSpawner,
        -- EnemyGroup_PackageGuard,
        [1] = "#3A16142B",
        -- EnemyGroupAll,
        [2] = "#A21E7AC0",
        -- PackageGuardPositionCS_A,
        [3] = "2108979845334567545",
        -- PackageGuardPositionCS_B,
        [4] = "2109477016429399581",
        -- PackageGuardPositionCS_C,
        [5] = "2108979845338761853",
        -- PackageGuardPositionCS_D,
        [6] = "2108979845345053313",
        -- PackageGuardPositionCS_E,
        [7] = "2109476907924852229",
        -- PackageGuardPositionCS_F,
        [8] = "2109476908218453521",
        -- PackageSpawner_A,
        [9] = "2108328963605530471",
        -- PackageSpawner_B,
        [10] = "2108329035021944728",
        -- PackageSpawner_C,
        [11] = "2108328932307633992",
        -- PackageSpawner_D,
        [12] = "2108329134498252744",
        -- PackageSpawner_E,
        [13] = "2108205722532579687",
        -- PackageSpawner_F,
        [14] = "2108329118708795322",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1179939521");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_72_Out,
    });
    params = {
        -- Entity,
        [0] = "2108220264790634874",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1181795110");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_56_Out,
    });
    params = {
        -- Entity,
        [0] = "2108895833270274510",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108617783804696352",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1194634220");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_101_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109173698264042676",
        -- Group,
        [1] = "#A21E7AC0",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_152()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108870145735674529",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1238973946");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_21_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898111502958492",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_208()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109198321089260097",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_143()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108870145735674529",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1250295243");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_200_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897381408843418",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1260445574");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_158_Out,
    });
    params = {
        -- Entity,
        [0] = "2108895554198059952",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1260819876");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_114_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897630898631191",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1261230521");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
                [2] = self.f_box_OutputOrder_v2_111_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_91()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1276372599");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_84_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896786354569339",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1292530387");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_53_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896800346767970",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1296217756");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_162_Out,
    });
    params = {
        -- Entity,
        [0] = "2108895610684850330",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1312078380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_175_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898331802486212",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1313380036");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_148_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898300030632848",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1329474424");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_196()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108912739624695567",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_199()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiniteWave_C_2,
        -- Spawner_1,
        [10] = self.e_InfiniteWave_C_1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1370381199");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_215_Out,
    });
    params = {
        -- Entity,
        [0] = "2108894587178198030",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1372478014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_29_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896775176748858",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_183()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108894157146694031",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1378385867");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_100_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967115324139103",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1380753844");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_115_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1391134341");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_37_Out,
    });
    params = {
        -- Entity,
        [0] = "2108497431126613964",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1394823786");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_212_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896624517346206",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1415996097");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_104;
    params = {
        -- ContextualStrategy,
        [0] = "2108494639964099359",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_197()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = self.f_RespawnDuration_S,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_150()
    local params;
    params = {
        -- Index,
        [0] = Globals.Swamp_C7_CTP_010_Main.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1454493236");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_40_Out,
    });
    params = {
        -- Entity,
        [0] = "2108895417774127001",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1458192696");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_85_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897382520334033",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1475567484");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_120_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896795944845750",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_144()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.e_InfiniteWave_A_S,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_103()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1549941950");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_146_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896885457585740",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1553497152");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_125_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896844565218500",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_186()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Swamp_C7_Goodbye_Start",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_235()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1606239993");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_235_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109975285960030458",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_12()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD TEMP",
            item = "REINFORCEMENT_BASIC",
            id = "500397",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_157()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108870246661114532",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1659164840");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_159_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897564664278732",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1686740476");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_121_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896648938681747",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1690645907");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
                [4] = self.f_box_OutputOrder_v2_18_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_236()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1693333325");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_236_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109975289881704700",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_44()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_InfiniteWave_C_2,
        -- Spawner_1,
        [10] = self.e_InfiniteWave_C_1,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_128()
    local params;
    params = {
        -- Index,
        [0] = self.i_WaveAfter_Index,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1702253405");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Swamp_C7_PickRandomNPC_15()
    local params;
    params = {
        -- b_RemoveFromPreviousGroup,
        [0] = false,
        -- e_CS_End,
        [1] = Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPOI,
        -- Group_begin,
        [2] = "#A21E7AC0",
        -- Group_end,
        [3] = "#95A732A9",
        -- i_GroupSize_end_MAX,
        [4] = 3,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_228()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#4C6B3FE3",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "GPSActived",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1742209621");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_209_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897695537050954",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1743787305");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_140_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896746747755778",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_154()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiniteWave_A_2,
        -- Spawner_1,
        [10] = self.e_InfiniteWave_A_1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1760461669");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108494639964099359",
        -- Group,
        [1] = "#ACE2D9DE",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1767303528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_225_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896667578169143",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1775164873");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_118_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1775994393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_95_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897579975585650",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1779772160");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_156_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896667599140676",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_181()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109215318034353080",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1794447213");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_214()
    local params;
    params = {
        -- e_SpawnEliteGroup,
        [0] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_217()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.e_InfiniteWave_B_S,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1844564864");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108911822644979976",
        -- Group,
        [1] = "#A21E7AC0",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_239()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1852300346");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109975308168870146",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1862911913");
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

function export:OnEnter_box_SetInteger_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1869122914");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_48_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_231()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_207()
    local params;
    params = {
        -- e_SpawnEliteGroup,
        [0] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1904017157");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_70_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897476126714598",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_86()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109213822830018462",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_123()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109215377949985849",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1923745210");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108911822647077132",
        -- Group,
        [1] = "#A21E7AC0",
    };
    return params;
end;

function export:OnEnter_box_Swamp_C7_EliteReinforcement_Expert_122()
    local params;
    params = {
        -- e_SpawnEliteGroup,
        [0] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_171()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.e_InfiniteWave_C_S,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_129()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109216013051515516",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1954814660");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_54_Out,
    });
    params = {
        -- Entity,
        [0] = "2108895417759446924",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1956339105");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_224_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_228;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = self.i_GroupSize_S,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1977811690");
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
                [0] = self.f_box_OutputOrder_v2_153_Out_0,
                [1] = self.f_box_OutputOrder_v2_153_Out_1,
                [2] = self.f_box_OutputOrder_v2_153_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_55()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.e_PlayerBeDected,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108870194630773410",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|1999911135");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_169_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896753206984181",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2036448001");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_189_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108911822647077132",
        -- Group,
        [1] = "#A0A3CA8B",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2037782066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_28_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_160()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 25,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = "2109198321101843022",
        -- Spawner_1,
        [10] = self.e_Wave_0_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2060234219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_130_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898300047410077",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2085225319");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_79_Out,
    });
    params = {
        -- Entity,
        [0] = "2108898767697628334",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2088252211");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_83_Out,
    });
    params = {
        -- Entity,
        [0] = "2108896715380652918",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2099883070");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_145_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108911813935507712",
        -- Group,
        [1] = "#A0A3CA8B",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2100675449");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
                [3] = self.f_box_OutputOrder_v2_68_Out_3,
                [4] = self.f_box_OutputOrder_v2_68_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2107121234");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_206_Out,
    });
    params = {
        -- Entity,
        [0] = "2108897620796649691",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_210()
    local params;
    params = {
        -- Index,
        [0] = Globals.Swamp_C7_CTP_010_Main.i_ExtractionPOIID,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_238()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2138927498");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_238_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109975307264997632",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_CTP_010_Share|2138927798");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_92_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_98()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108870202723682979",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_180_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_178_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.f_RespawnDuration_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_135_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_164_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_GroupSize_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_172_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_179_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_174_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_213_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_163_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_182_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_170_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_InfiniteWave_ID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_Wavebefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_138_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_195_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.f_RespawnDuration_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_167_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_InfiniteWave_ID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_116_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_136_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_GroupSize_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_220_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_216_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_221_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_WaveAfter_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_185_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_193_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_227_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_InfiniteWave_ID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_176_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_89_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_GroupSize_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_211_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_BothPlayers()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_ClientOnly()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Detected_HostOnly()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Disabled()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_36_Enabled()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_191_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_202_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_0_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_110_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_131_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_141_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_161_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_0_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_139_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.f_RespawnDuration_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_106_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_173_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_Wavebefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_200_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_158_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_114_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_84_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_162_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_0_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_175_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_148_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_215_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_0_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_WaveAfter_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_212_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_146_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_125_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_159_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_209_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_140_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_225_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_118_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_WaveAfter_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_95_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_156_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_14_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_Brick_Exp_Common_PlayerFullyDetected_36;
    l1:GetLuaBox().PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_Wavebefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_169_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_Wavebefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_130_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_C_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_A_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_206_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiniteWave_B_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_WaveAfter_Index = l0:GetDataOutValue(0);
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
