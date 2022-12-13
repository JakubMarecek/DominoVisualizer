LUACʙ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_enemy.domino
-- User graph: Coast_C7_CTP_010_Enemy
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_ExtraAILogic.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_FlareSTP.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.InfiniteWaveController_V2.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2104057711.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C7_CTP_010_Enemy = nil;
    Globals.Coast_C7_CTP_010_Enemy = {
        gTrackedPlayers = nil,
        iC7CurrentNumberOfEnemies = 0,
        bTrackerNotYetActive = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_Enemy.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "PackagePickedUp",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnlyQuicklaunchPlayerLoadout",
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
                name = "Debug_ExtractionPOIID",
                type = "int",
            },
            [1] = {
                name = "Debug_PackagePositionID",
                type = "int",
            },
            [2] = {
                name = "Debug_PackageSpawner",
                type = "entity",
            },
            [3] = {
                name = "Debug_PlayerSpawnPOIIndex",
                type = "int",
            },
            [4] = {
                name = "DebugMode",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "Difficulty",
                type = "int",
            },
            [1] = {
                name = "ExtractionPOIIndex",
                type = "int",
            },
            [2] = {
                name = "PackagePositionIndex",
                type = "int",
            },
            [3] = {
                name = "PackageSpawner",
                type = "entity",
            },
            [4] = {
                name = "PlayerSpawnPOIIndex",
                type = "int",
            },
        },
        dataOutCount = 5,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua")] = {
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
                name = "EnemyGroup_All",
                type = "group",
            },
            [1] = {
                name = "EnemyGroup_PackageGuard",
                type = "group",
            },
            [2] = {
                name = "EnemyGroup_Prio_01",
                type = "group",
            },
            [3] = {
                name = "EnemyGroup_Prio_02",
                type = "group",
            },
            [4] = {
                name = "EnemyGroup_Prio_03",
                type = "group",
            },
            [5] = {
                name = "PackageGuardCS",
                type = "entity",
            },
            [6] = {
                name = "PackageGuardNUM",
                type = "int",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/InventoryItemListener.lua")] = {
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
                name = "ItemAdded",
                delayed = true,
            },
            [3] = {
                name = "ItemRemoved",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [3] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "itemQuantityRemain",
                type = "int",
            },
            [1] = {
                name = "outItemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "player",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_ExtraAILogic.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_FlareSTP.debug.lua")] = {
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
                name = "Flare_STP_Used_Once",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.InfiniteWaveController_V2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StartReinforcements",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C7_CTP_010_Enemy";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy";
    self.PackagePlayer = nil;
    self._2108123859732398883 = nil;
    self._9015345533034838 = nil;
    self._9015345531033697 = nil;
    self.PackageDescriptor = "9015345529844299";
    self.PackageDescriptor2 = "9015345531033697";
    self.gTrackedPlayers = nil;
    self.iC7PackagePositionID = 0;
    self.iC7Difficulty = 0;
    self.ePlayerWithPackage = nil;
    self.iC7PlayerSpawnPOIIndex = 0;
    self.iC7ExtractionPOIIndex = 0;
    self.iC7PackagePositionIndex = 0;
    self.eC7PackageSpawner = nil;
    self.bTrackerNotYetActive = true;
    self.gPlayers = nil;
    self.box_OnceOnly_v3_85 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|4197049");
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
                [0] = self.f_box_OnceOnly_v3_85_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_137 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|8502925");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_137_Out,
    });
    self.box_IndexList_v2_116 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|38666328");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_116_Output_0,
                [1] = self.f_box_IndexList_v2_116_Output_1,
                [2] = self.f_box_IndexList_v2_116_Output_2,
                [3] = self.f_box_IndexList_v2_116_Output_3,
                [4] = self.f_box_IndexList_v2_116_Output_4,
                [5] = self.f_box_IndexList_v2_116_Output_5,
            },
            count = 6,
        },
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|77150737");
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
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|89485488");
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
        [0] = self.f_box_MultipleOR_120_Out,
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|161782588");
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
        [0] = self.f_box_MultipleOR_83_Out,
    });
    self.box_OnceOnly_v3_64 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|246235906");
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
                [0] = self.f_box_OnceOnly_v3_64_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|286597728");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_3_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_46 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|353903054");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_46_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_46_Reloaded,
    });
    self.box_Delay_v5_101 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|359897014");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_101_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_101_TimeElapsed,
    });
    self.box_Delay_v5_103 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|362703985");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_103_TimeElapsed,
    });
    self.box_EntityStatusListener_121 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|416288322");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_121_Loaded,
    });
    self.box_Coast_C7_CTP_010_FlareSTP_109 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_FlareSTP.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_FlareSTP_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_FlareSTP_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|446069769");
    l0:SetConnections({
        -- Flare_STP_Used_Once,
        [0] = self.f_box_Coast_C7_CTP_010_FlareSTP_109_Flare_STP_Used_Once,
    });
    self.box_ProximityTrigger_v3_58 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|531603931");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_58_Enter,
    });
    self.box_Brick_Exp_Common_BasicSetups_59 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|538238563");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_59_Out,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|577281774");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_SoundModifier_v2_72 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|615793935");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_124 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|667708774");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_124_Loaded,
    });
    self.box_IndexList_v2_81 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|767244868");
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
                [0] = self.f_box_IndexList_v2_81_Output_0,
                [1] = self.f_box_IndexList_v2_81_Output_1,
                [2] = self.f_box_IndexList_v2_81_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_42 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|817032389");
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
                [0] = self.f_box_OnceOnly_v3_42_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_125 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|824985054");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_125_Loaded,
    });
    self.box_IndexList_v2_75 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|871286752");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_75_Output_0,
                [1] = self.f_box_IndexList_v2_75_Output_1,
                [2] = self.f_box_IndexList_v2_75_Output_2,
                [3] = self.f_box_IndexList_v2_75_Output_3,
                [4] = self.f_box_IndexList_v2_75_Output_4,
                [5] = self.f_box_IndexList_v2_75_Output_5,
            },
            count = 6,
        },
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|879601457");
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
    self.box_Coast_C7_CTP_010_ExtraAILogic_11 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_ExtraAILogic.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_ExtraAILogic_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_ExtraAILogic_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|879939759");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_13 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|897886563");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_13_Received,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|898892799");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_80 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|942598061");
    l0:SetConnections({
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1001065264");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_GroupSizeListener_v6_40 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1009811697");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_40_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_40_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_40_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_40_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_40_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_40_MemberSpawned,
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1009908671");
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
    self.box_ActivityInitialized_41 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1051027214");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_41_Out,
    });
    self.box_ProximityTrigger_v3_136 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1057931548");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_136_Enter,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1108112932");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_OnceOnly_v3_132 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1271156515");
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
                [0] = self.f_box_OnceOnly_v3_132_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_71 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1293574772");
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
                [0] = self.f_box_OnceOnly_v3_71_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Enemy_PackageGuard_74 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1369512104");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Enemy_PackageGuard_76 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1382175594");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v5_107 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1397286395");
    l0:SetConnections({
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1479993487");
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
    self.box_MessageListener_v3_62 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1530883622");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_62_Received,
    });
    self.box_Brick_Exp_Common_PlayerFullyDetected_84 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_PlayerFullyDetected_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1552656326");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_84_Detected,
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1556184966");
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
        [0] = self.f_box_MultipleOR_50_Out,
    });
    self.box_EntityStatusListener_90 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1588619480");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_90_Loaded,
    });
    self.box_InventoryItemListener_2 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1591627528");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_InventoryItemListener_2_Disabled,
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_2_Enabled,
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_2_ItemAdded,
        -- ItemRemoved,
        [3] = self.f_box_InventoryItemListener_2_ItemRemoved,
    });
    self.box_Brick_Exp_Enemy_PackageGuardNearest_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuardNearest_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1641936432");
    l0:SetConnections({
    });
    self.box_Delay_v5_131 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1649275606");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_131_TimeElapsed,
    });
    self.box_SpawnAI_134 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1718217470");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_134_Out,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_77 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1813520827");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_106 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1815584783");
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
    self.box_Brick_Exp_Enemy_PackageGuard_78 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1854045173");
    l0:SetConnections({
    });
    self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1855200846");
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
    self.box_InfiniteWaveController_V2_1 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.InfiniteWaveController_V2.debug.lua");
    l0 = self.box_InfiniteWaveController_V2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfiniteWaveController_V2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1913614930");
    l0:SetConnections({
    });
    self.box_Gate_v3_105 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1915768099");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_105_Out,
    });
    self.box_SpawnAI_65 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1950184921");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_65_Out,
    });
    self.box_MultipleOR_117 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1974292737");
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
        [0] = self.f_box_MultipleOR_117_Out,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_79 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|2014508714");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|461390339", "461390339", "Coast_C7_CTP_010_Enemy", "In", "box_ActivityAcknowledgeGate_46.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:PackagePickedUp()
    
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_79();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_79;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|687235076", "687235076", "Coast_C7_CTP_010_Enemy", "box_Simple_Node_112.Out", "box_Brick_Exp_Enemy_PackageGuard_79.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_74();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|269210511", "269210511", "Coast_C7_CTP_010_Enemy", "box_Simple_Node_112.Out", "box_Brick_Exp_Enemy_PackageGuard_74.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_76();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_76;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1009535242", "1009535242", "Coast_C7_CTP_010_Enemy", "box_Simple_Node_112.Out", "box_Brick_Exp_Enemy_PackageGuard_76.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_78();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_78;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1614149366", "1614149366", "Coast_C7_CTP_010_Enemy", "box_Simple_Node_112.Out", "box_Brick_Exp_Enemy_PackageGuard_78.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_77();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_77;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1794254963", "1794254963", "Coast_C7_CTP_010_Enemy", "box_Simple_Node_112.Out", "box_Brick_Exp_Enemy_PackageGuard_77.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_80();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_80;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1172800811", "1172800811", "Coast_C7_CTP_010_Enemy", "box_Simple_Node_112.Out", "box_Brick_Exp_Enemy_PackageGuard_80.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_138_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|392708636", "392708636", "Coast_C7_CTP_010_Enemy", "box_Simple_Node_138.Out", "box_Gate_v3_137.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_85_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_63();
    l0 = self.box_OnceOnly_v3_85;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1463832465", "1463832465", "Coast_C7_CTP_010_Enemy", "box_OnceOnly_v3_85.Out", "box_SetActivityFact_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_137_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_36();
    l0 = self.box_Gate_v3_137;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|259207275", "259207275", "Coast_C7_CTP_010_Enemy", "box_Gate_v3_137.Out", "box_Print_v2_36.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_FlareSTP_109;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1440282215", "1440282215", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_102.Out", "box_Coast_C7_CTP_010_FlareSTP_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1920467691", "1920467691", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_102.Out", "box_OnceOnly_v3_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_102_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1837401139", "1837401139", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_102.Out", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_102_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1967708353", "1967708353", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_102.Out", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_116_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1135980663", "1135980663", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_116_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1010785621", "1010785621", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_116_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1412141249", "1412141249", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IndexList_v2_116_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|407455218", "407455218", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_116_Output_4()
    local l0, l1;
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1835946286", "1835946286", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_116_Output_5()
    local l0, l1;
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|735151153", "735151153", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_38_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_38;
    l1 = self.box_ActivityInitialized_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|900146877", "900146877", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_38.Out", "box_ActivityInitialized_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_90();
    l0 = self.box_MultipleOR_120;
    l1 = self.box_EntityStatusListener_90;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|767388365", "767388365", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_120.Out", "box_EntityStatusListener_90.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_77();
    l0 = self.box_MultipleOR_83;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_77;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|407724088", "407724088", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_83.Out", "box_Brick_Exp_Enemy_PackageGuard_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetActivityFact_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1467823191", "1467823191", "Coast_C7_CTP_010_Enemy", "box_SetActivityFact_14.Out", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|511990358", "511990358", "Coast_C7_CTP_010_Enemy", "box_RadioModifier_v3_19.Out", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_101();
    l0 = self.box_Delay_v5_101;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1644974540", "1644974540", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_104.Out", "box_Delay_v5_101.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_104_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1916317906", "1916317906", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_104.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_40();
    l0 = self.box_GroupSizeListener_v6_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|645348037", "645348037", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_35.Out", "box_GroupSizeListener_v6_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1283272472", "1283272472", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_35.Out", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|820523084", "820523084", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_35.Out", "box_GroupAddToGroup_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_62();
    l0 = self.box_MessageListener_v3_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|941887409", "941887409", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_35.Out", "box_MessageListener_v3_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_81();
    l0 = self.box_IndexList_v2_81;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|164808622", "164808622", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_35.Out", "box_IndexList_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_116();
    l0 = self.box_IndexList_v2_116;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|773166289", "773166289", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_35.Out", "box_IndexList_v2_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_64_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_65();
    l0 = self.box_OnceOnly_v3_64;
    l1 = self.box_SpawnAI_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1119250431", "1119250431", "Coast_C7_CTP_010_Enemy", "box_OnceOnly_v3_64.Out", "box_SpawnAI_65.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_3_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_107();
    l0 = self.box_Delay_v5_3;
    l1 = self.box_DisplayCustomUIMsg_v5_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|613643738", "613643738", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_3.Started", "box_DisplayCustomUIMsg_v5_107.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_107();
    l0 = self.box_Delay_v5_3;
    l1 = self.box_DisplayCustomUIMsg_v5_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|557709347", "557709347", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_3.TimeElapsed", "box_DisplayCustomUIMsg_v5_107.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_46_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_46;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|2066156393", "2066156393", "Coast_C7_CTP_010_Enemy", "box_ActivityAcknowledgeGate_46.Acknowledged", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_46_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_46;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1832052616", "1832052616", "Coast_C7_CTP_010_Enemy", "box_ActivityAcknowledgeGate_46.Reloaded", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_101_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_Delay_v5_101;
    l1 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|963732743", "963732743", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_101.Started", "box_Delay_v5_103.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_101_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_101;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|665516881", "665516881", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_101.TimeElapsed", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_103_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_103;
    l1 = self.box_Coast_C7_CTP_010_FlareSTP_109;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|628989973", "628989973", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_103.TimeElapsed", "box_Coast_C7_CTP_010_FlareSTP_109.Cleanup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cleanup
    l1:Exec(0, {
    });
end;

function export:f_box_SetBoolean_v2_70_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_70_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|406917352", "406917352", "Coast_C7_CTP_010_Enemy", "box_SetBoolean_v2_70.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_121_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_118();
    l0 = self.box_EntityStatusListener_121;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1402153619", "1402153619", "Coast_C7_CTP_010_Enemy", "box_EntityStatusListener_121.Loaded", "box_RadioModifier_v3_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Coast_C7_CTP_010_FlareSTP_109_Flare_STP_Used_Once()
    local l0, l1;
    l0 = self.box_Coast_C7_CTP_010_FlareSTP_109;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1104356549", "1104356549", "Coast_C7_CTP_010_Enemy", "box_Coast_C7_CTP_010_FlareSTP_109.Flare_STP_Used_Once", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_39_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1936167649", "1936167649", "Coast_C7_CTP_010_Enemy", "box_SetInteger_v2_39.Out", "box_Gate_v3_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_58_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_ProximityTrigger_v3_58;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1816023166", "1816023166", "Coast_C7_CTP_010_Enemy", "box_ProximityTrigger_v3_58.Enter", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_59_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_59_Out();
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_Brick_Exp_Common_BasicSetups_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1363877416", "1363877416", "Coast_C7_CTP_010_Enemy", "box_Brick_Exp_Common_BasicSetups_59.Out", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_85;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1747083984", "1747083984", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_16.Out", "box_OnceOnly_v3_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_16_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_32();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|596725826", "596725826", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_16.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_32.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|294666747", "294666747", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_16.Out", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_72();
    l0 = self.box_Delay_v5_73;
    l1 = self.box_SoundModifier_v2_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|461264993", "461264993", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_73.TimeElapsed", "box_SoundModifier_v2_72.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_124_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_119();
    l0 = self.box_EntityStatusListener_124;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1803440605", "1803440605", "Coast_C7_CTP_010_Enemy", "box_EntityStatusListener_124.Loaded", "box_RadioModifier_v3_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_67();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|110602820", "110602820", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_68.Out", "box_Print_v2_67.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_58();
    l0 = self.box_ProximityTrigger_v3_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1785407", "1785407", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_68.Out", "box_ProximityTrigger_v3_58.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IndexList_v2_81_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_81;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1873523448", "1873523448", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_81.Output", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_81_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_81;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1373726578", "1373726578", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_81.Output", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_81_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_75();
    l0 = self.box_IndexList_v2_81;
    l1 = self.box_IndexList_v2_75;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|600965670", "600965670", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_81.Output", "box_IndexList_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupAddToGroup_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_2();
    l0 = self.box_InventoryItemListener_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1996193296", "1996193296", "Coast_C7_CTP_010_Enemy", "box_GroupAddToGroup_v2_6.Out", "box_InventoryItemListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_110_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_110_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_84();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_84;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1055510006", "1055510006", "Coast_C7_CTP_010_Enemy", "box_GetPlayerGroup_v2_110.Out", "box_Brick_Exp_Common_PlayerFullyDetected_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetActivityFact_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_70();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1051773614", "1051773614", "Coast_C7_CTP_010_Enemy", "box_SetActivityFact_63.Out", "box_SetBoolean_v2_70.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|201571172", "201571172", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_49.Out", "box_Print_v2_5.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_32();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1322329969", "1322329969", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_49.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_32.PackagePicked", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackagePicked
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_42_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_14();
    l0 = self.box_OnceOnly_v3_42;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|76759779", "76759779", "Coast_C7_CTP_010_Enemy", "box_OnceOnly_v3_42.Out", "box_SetActivityFact_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_125_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_115();
    l0 = self.box_EntityStatusListener_125;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|77997185", "77997185", "Coast_C7_CTP_010_Enemy", "box_EntityStatusListener_125.Loaded", "box_RadioModifier_v3_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveFromGroup_v2_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|156872330", "156872330", "Coast_C7_CTP_010_Enemy", "box_RemoveFromGroup_v2_7.Out", "box_GroupAddToGroup_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_75_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_75;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1360505879", "1360505879", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_75.Output", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_75_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_76();
    l0 = self.box_IndexList_v2_75;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_76;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|449453414", "449453414", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_75.Output", "box_Brick_Exp_Enemy_PackageGuard_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_75_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_78();
    l0 = self.box_IndexList_v2_75;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_78;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1580679210", "1580679210", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_75.Output", "box_Brick_Exp_Enemy_PackageGuard_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_75_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_75;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|393666871", "393666871", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_75.Output", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_75_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_80();
    l0 = self.box_IndexList_v2_75;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_80;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|2140714192", "2140714192", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_75.Output", "box_Brick_Exp_Enemy_PackageGuard_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_75_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_79();
    l0 = self.box_IndexList_v2_75;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_79;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|2007380944", "2007380944", "Coast_C7_CTP_010_Enemy", "box_IndexList_v2_75.Output", "box_Brick_Exp_Enemy_PackageGuard_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_125();
    l0 = self.box_MultipleOR_123;
    l1 = self.box_EntityStatusListener_125;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1515982343", "1515982343", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_123.Out", "box_EntityStatusListener_125.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_13_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_15();
    l0 = self.box_MessageListener_v3_13;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1699793458", "1699793458", "Coast_C7_CTP_010_Enemy", "box_MessageListener_v3_13.Received", "box_SetContextualStrategy_15.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_MultipleOR_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|737837167", "737837167", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_57.Out", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_10();
    l0 = self.box_Delay_v5_60;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1006039691", "1006039691", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_60.TimeElapsed", "box_SetEntity_v2_10.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_40_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_40;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1318270125", "1318270125", "Coast_C7_CTP_010_Enemy", "box_GroupSizeListener_v6_40.MemberAdded", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_40_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_40;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|895972577", "895972577", "Coast_C7_CTP_010_Enemy", "box_GroupSizeListener_v6_40.MemberRemoved", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_124();
    l0 = self.box_MultipleOR_122;
    l1 = self.box_EntityStatusListener_124;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|988636374", "988636374", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_122.Out", "box_EntityStatusListener_124.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_InfiniteWaveController_V2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|670557985", "670557985", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_8.Out", "box_InfiniteWaveController_V2_1.StartReinforcements", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartReinforcements
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_71;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1138845312", "1138845312", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_8.Out", "box_OnceOnly_v3_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_58();
    l0 = self.box_ProximityTrigger_v3_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|218932130", "218932130", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v3_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1651838489", "1651838489", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_8.Out", "box_Simple_Node_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_59();
    l0 = self.box_ActivityInitialized_41;
    l1 = self.box_Brick_Exp_Common_BasicSetups_59;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|107186294", "107186294", "Coast_C7_CTP_010_Enemy", "box_ActivityInitialized_41.Out", "box_Brick_Exp_Common_BasicSetups_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|98879105", "98879105", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_18.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|306495803", "306495803", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_18.Out", "box_Gate_v3_105.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_136_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_136;
    l1 = self.box_OnceOnly_v3_132;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|756895689", "756895689", "Coast_C7_CTP_010_Enemy", "box_ProximityTrigger_v3_136.Enter", "box_OnceOnly_v3_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_10_Out()
    self:OnExit_box_SetEntity_v2_10_Out();
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|962083391", "962083391", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_61.Out", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1493316100", "1493316100", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_61.Out", "box_Delay_v5_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_ExtraAILogic_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|20691112", "20691112", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_61.Out", "box_Coast_C7_CTP_010_ExtraAILogic_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_61_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_13();
    l0 = self.box_MessageListener_v3_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1512028164", "1512028164", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_61.Out", "box_MessageListener_v3_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_12;
    l1 = self.box_OnceOnly_v3_64;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|2134679775", "2134679775", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_12.TimeElapsed", "box_OnceOnly_v3_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_132_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_134();
    l0 = self.box_OnceOnly_v3_132;
    l1 = self.box_SpawnAI_134;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1845163290", "1845163290", "Coast_C7_CTP_010_Enemy", "box_OnceOnly_v3_132.Out", "box_SpawnAI_134.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Print_v2_67_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_131();
    l0 = self.box_Delay_v5_131;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1184675064", "1184675064", "Coast_C7_CTP_010_Enemy", "box_Print_v2_67.PrintedToScreen", "box_Delay_v5_131.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_71_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_OnceOnly_v3_71;
    l1 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1248755737", "1248755737", "Coast_C7_CTP_010_Enemy", "box_OnceOnly_v3_71.Out", "box_Delay_v5_73.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_74();
    l0 = self.box_MultipleOR_82;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|400314886", "400314886", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_82.Out", "box_Brick_Exp_Enemy_PackageGuard_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RadioModifier_v3_118_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1792230477", "1792230477", "Coast_C7_CTP_010_Enemy", "box_RadioModifier_v3_118.Out", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_62_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_MessageListener_v3_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1880187315", "1880187315", "Coast_C7_CTP_010_Enemy", "box_MessageListener_v3_62.Received", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_84_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1988224006", "1988224006", "Coast_C7_CTP_010_Enemy", "box_Brick_Exp_Common_PlayerFullyDetected_84.Detected", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_39();
    l0 = self.box_MultipleOR_50;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1023775358", "1023775358", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_50.Out", "box_SetInteger_v2_39.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_90_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_19();
    l0 = self.box_EntityStatusListener_90;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1879584809", "1879584809", "Coast_C7_CTP_010_Enemy", "box_EntityStatusListener_90.Loaded", "box_RadioModifier_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemListener_2_ItemAdded()
    local params, l0, l1;
    self:OnExit_box_InventoryItemListener_2_ItemAdded();
    params = self:OnEnter_box_RemoveFromGroup_v2_7();
    l0 = self.box_InventoryItemListener_2;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|151343808", "151343808", "Coast_C7_CTP_010_Enemy", "box_InventoryItemListener_2.ItemAdded", "box_RemoveFromGroup_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemListener_2_ItemRemoved()
    self:OnExit_box_InventoryItemListener_2_ItemRemoved();
end;

function export:f_box_Delay_v5_131_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_136();
    l0 = self.box_Delay_v5_131;
    l1 = self.box_ProximityTrigger_v3_136;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1255614581", "1255614581", "Coast_C7_CTP_010_Enemy", "box_Delay_v5_131.TimeElapsed", "box_ProximityTrigger_v3_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_134_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_SpawnAI_134;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1534676617", "1534676617", "Coast_C7_CTP_010_Enemy", "box_SpawnAI_134.Out", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|879194177", "879194177", "Coast_C7_CTP_010_Enemy", "box_GroupAddToGroup_v2_4.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_106_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_OnceOnly_v3_106;
    l1 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1943116811", "1943116811", "Coast_C7_CTP_010_Enemy", "box_OnceOnly_v3_106.Out", "box_Gate_v3_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_110();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1929811271", "1929811271", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_47.Out", "box_GetPlayerGroup_v2_110.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_InfiniteWaveController_V2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1236783002", "1236783002", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_47.Out", "box_InfiniteWaveController_V2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_111_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_111;
    l1 = self.box_OnceOnly_v3_106;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|740542444", "740542444", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_111.Out", "box_OnceOnly_v3_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Gate_v3_105;
    l1 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|294117655", "294117655", "Coast_C7_CTP_010_Enemy", "box_Gate_v3_105.Out", "box_Delay_v5_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_SpawnAI_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1195929096", "1195929096", "Coast_C7_CTP_010_Enemy", "box_SpawnAI_65.Out", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_117_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_121();
    l0 = self.box_MultipleOR_117;
    l1 = self.box_EntityStatusListener_121;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1362373673", "1362373673", "Coast_C7_CTP_010_Enemy", "box_MultipleOR_117.Out", "box_EntityStatusListener_121.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_135();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1379698206", "1379698206", "Coast_C7_CTP_010_Enemy", "box_OutputOrder_v2_133.Out", "box_Print_v2_135.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|@DisableGuards");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|@Start Reinforcements");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_138_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_137()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|28629720");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
                [2] = self.f_box_OutputOrder_v2_102_Out_2,
                [3] = self.f_box_OutputOrder_v2_102_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_116()
    local params;
    params = {
        -- Index,
        [0] = self.iC7PackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|150257110");
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
        [5] = "2109007459518520648",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|175801008");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_14_Out,
    });
    params = {
        -- Fact,
        [0] = "sC7PlayerDetectedFact",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|196740480");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_19_Out,
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- StationOverride,
        [4] = "9015204464967465",
        -- TargetRadio,
        [5] = "2109007459518520648",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|208017341");
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
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
                [2] = self.f_box_OutputOrder_v2_104_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|210473794");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
                [3] = self.f_box_OutputOrder_v2_35_Out_3,
                [4] = self.f_box_OutputOrder_v2_35_Out_4,
                [5] = self.f_box_OutputOrder_v2_35_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_101()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_103()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|411098136");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_121()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109930275780703395",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|458133118");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_39_Out,
    });
    l0 = self.box_GroupSizeListener_v6_40;
    params = {
        -- Integer,
        [1] = l0:GetDataOutValue(1),
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|524045116");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = Globals.Coast_C7_CTP_010_Enemy.iC7CurrentNumberOfEnemies,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Current enemy number is ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109352379926186713",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_59()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|576213944");
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
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
                [4] = self.f_box_OutputOrder_v2_16_Out_4,
                [5] = self.f_box_OutputOrder_v2_16_Out_5,
            },
            count = 6,
        },
    });
    params = {
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

function export:OnEnter_box_SoundModifier_v2_72()
    local params;
    params = {
        -- Pawns,
        [0] = "2109464142155885444",
        -- SoundId,
        [1] = "2104057711",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_124()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109930275780703395",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|717030611");
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

function export:OnEnter_box_IndexList_v2_81()
    local params;
    params = {
        -- Index,
        [0] = self.iC7Difficulty,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|785187443");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_6_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#ED455357",
        -- ToGroup,
        [1] = "#8D366524",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|802156834");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_110_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|807871852");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_63_Out,
    });
    params = {
        -- Fact,
        [0] = "Package_Stolen_Detected",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|807998963");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_125()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109007459518520648",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|830342852");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_7_Out,
    });
    params = {
        -- Entities,
        [0] = "#ED455357",
        -- Group,
        [1] = "#8D366524",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_75()
    local params;
    params = {
        -- Index,
        [0] = self.iC7PackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|932389669");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108869462928134448",
        -- Group,
        [1] = "#43305DFA",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_80()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#FA620E34",
        -- EnemyGroup_PackageGuard,
        [1] = "#43305DFA",
        -- EnemyGroup_Prio_01,
        [2] = "#6E9938A1",
        -- EnemyGroup_Prio_03,
        [4] = "#163E2C88",
        -- PackageGuardCS,
        [5] = "2108135995133135157",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|944159269");
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
        [8] = "Package taken!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_40()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FA620E34",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1021929876");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1056678787");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_136()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109352379926186713",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1068069219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_10_Out,
    });
    params = {
        -- Entity,
        [0] = PersistentGlobals.Coast_C7_CTP_010_Main.PackageSpawner,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1074160063");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
                [3] = self.f_box_OutputOrder_v2_61_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1108318498");
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
        [5] = "2109930275780703395",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1278525340");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_67_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Player in the water, jet ski spawned with high priority",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_74()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#FA620E34",
        -- EnemyGroup_PackageGuard,
        [1] = "#43305DFA",
        -- EnemyGroup_Prio_01,
        [2] = "#6E9938A1",
        -- EnemyGroup_Prio_03,
        [4] = "#163E2C88",
        -- PackageGuardCS,
        [5] = "2109461556075962815",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_76()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#FA620E34",
        -- EnemyGroup_PackageGuard,
        [1] = "#43305DFA",
        -- EnemyGroup_Prio_01,
        [2] = "#6E9938A1",
        -- EnemyGroup_Prio_03,
        [4] = "#163E2C88",
        -- PackageGuardCS,
        [5] = "2109544581694501075",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_107()
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

function export:OnEnter_box_RadioModifier_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1502779564");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_118_Out,
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- StationOverride,
        [4] = "9015204464967465",
        -- TargetRadio,
        [5] = "2109930275780703395",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "PackageStolenDetected",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_84()
    local params;
    params = {
        -- EnemyGroup,
        [0] = "#FA620E34",
        -- OnceOnly,
        [1] = true,
        -- PlayerGroup,
        [2] = self.gPlayers,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109007459518520648",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = self.PackageDescriptor,
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_32()
    local params;
    params = {
        -- ActualPackageSpawner,
        [0] = PersistentGlobals.Coast_C7_CTP_010_Main.PackageSpawner,
        -- EnemyGroup_PackageGuard,
        [1] = "#43305DFA",
        -- EnemyGroupAll,
        [2] = "#FA620E34",
        -- PackageGuardPositionCS_A,
        [3] = "2109461556075962815",
        -- PackageGuardPositionCS_B,
        [4] = "2109544581694501075",
        -- PackageGuardPositionCS_C,
        [5] = "2109546153553955790",
        -- PackageGuardPositionCS_D,
        [6] = "2109545463767118135",
        -- PackageGuardPositionCS_E,
        [7] = "2108135995133135157",
        -- PackageGuardPositionCS_F,
        [8] = "2109534107617741390",
        -- PackageSpawner_A,
        [9] = "2108967071862759397",
        -- PackageSpawner_B,
        [10] = "2108967497899188276",
        -- PackageSpawner_C,
        [11] = "2109023116519805228",
        -- PackageSpawner_D,
        [12] = "2108123846600033056",
        -- PackageSpawner_E,
        [13] = "2109023307998171524",
        -- PackageSpawner_F,
        [14] = "2109023031847293210",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_131()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1695420901");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Player in the water, boat spawned with high priority",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_134()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108925684194751658",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1731361577");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_4_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.ePlayerWithPackage,
        -- ToGroup,
        [1] = "#8D366524",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_77()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#FA620E34",
        -- EnemyGroup_PackageGuard,
        [1] = "#43305DFA",
        -- EnemyGroup_Prio_01,
        [2] = "#6E9938A1",
        -- EnemyGroup_Prio_03,
        [4] = "#163E2C88",
        -- PackageGuardCS,
        [5] = "2109545463767118135",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|1852720839");
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

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_78()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#FA620E34",
        -- EnemyGroup_PackageGuard,
        [1] = "#43305DFA",
        -- EnemyGroup_Prio_01,
        [2] = "#6E9938A1",
        -- EnemyGroup_Prio_03,
        [4] = "#163E2C88",
        -- PackageGuardCS,
        [5] = "2109546153553955790",
        -- PackageGuardNUM,
        [6] = 2,
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

function export:OnEnter_box_SpawnAI_65()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109352401684138731",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_79()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#FA620E34",
        -- EnemyGroup_PackageGuard,
        [1] = "#43305DFA",
        -- EnemyGroup_Prio_01,
        [2] = "#6E9938A1",
        -- EnemyGroup_Prio_03,
        [4] = "#163E2C88",
        -- PackageGuardCS,
        [5] = "2109534107617741390",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_Enemy|2076615548");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C7_CTP_010_Enemy.iC7CurrentNumberOfEnemies = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_59_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_59;
    self.iC7Difficulty = l0:GetDataOutValue(0);
    self.iC7PlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    self.iC7ExtractionPOIIndex = l0:GetDataOutValue(1);
    self.iC7PackagePositionIndex = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPlayerGroup_v2_110_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eC7PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_InventoryItemListener_2_ItemAdded()
    local l0;
    l0 = self.box_InventoryItemListener_2;
    self.ePlayerWithPackage = l0:GetDataOutValue(2);
end;

function export:OnExit_box_InventoryItemListener_2_ItemRemoved()
    local l0;
    l0 = self.box_InventoryItemListener_2;
    self.ePlayerWithPackage = l0:GetDataOutValue(2);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="PackagePickedUp" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
