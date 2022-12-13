LUAC�C -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_enemy.domino
-- User graph: Canyon_H2_CTP_010_Enemy
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin10.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin20.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin30.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AnimalHandler.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AttackDogwithElite.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_DetectionMessage.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_FreeValidation.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_GroupSizeListern.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_InfiniteWaves.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_A.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_B.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_C.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_PackGuard_CsHandle.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_Detected_LKP_Stim_Handle.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_FlareSTP.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_H2_CTP_010_Enemy = nil;
    Globals.Canyon_H2_CTP_010_Enemy = {
        iExtractionPOIIndex = 0,
        iPackagePositionIndex = 0,
        iDifficulty = 0,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Enemy.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin10.debug.lua")] = {
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
                name = "Requested",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin20.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "StartMagicSpawn",
            },
            [3] = {
                name = "StopMagicSpawn",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Requested",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin30.debug.lua")] = {
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
                name = "Requested",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AnimalHandler.debug.lua")] = {
        stateless = false,
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
                name = "Spawned",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AttackDogwithElite.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Spawned",
                delayed = false,
            },
            [1] = {
                name = "Success",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_DetectionMessage.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "InstantDisplay",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Handled",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_FreeValidation.debug.lua")] = {
        stateless = false,
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
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "fDistanceToFlee",
                type = "float",
            },
            [1] = {
                name = "gNpcsToValidate",
                type = "group",
            },
            [2] = {
                name = "LoopTime",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_GroupSizeListern.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "npcGroupToListen",
                type = "group",
            },
            [1] = {
                name = "vehicleGroupToListen",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "npcGroupSize",
                type = "int",
            },
            [1] = {
                name = "vehicleGroupSize",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_InfiniteWaves.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "PushToExtractionPoint",
            },
            [2] = {
                name = "Resume",
            },
            [3] = {
                name = "Start_SwitchToIntense",
            },
            [4] = {
                name = "Start_SwitchToMedium",
            },
            [5] = {
                name = "Start_SwitchToRelax",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "gPlayers",
                type = "group",
            },
            [1] = {
                name = "iKillerWaveInterval",
                type = "int",
            },
            [2] = {
                name = "iMaxVehicleSize",
                type = "int",
            },
            [3] = {
                name = "iMinGroupSizeIntense",
                type = "int",
            },
            [4] = {
                name = "iMinGroupSizeMedium",
                type = "int",
            },
            [5] = {
                name = "iMinGroupSizeRelax",
                type = "int",
            },
            [6] = {
                name = "Looptime",
                type = "float",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_A.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "gPlayerGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_B.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "gPlayerGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_C.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "gPlayerGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_PackGuard_CsHandle.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "StartPackageGuardBehavior",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Started",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_Detected_LKP_Stim_Handle.debug.lua")] = {
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
                name = "eDetectAlertStim",
                type = "entity",
            },
            [1] = {
                name = "eDetectLKP",
                type = "entity",
            },
            [2] = {
                name = "ePlayerDetected",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_FlareSTP.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "flarestp_used_once",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "AutoDisableTimer",
                type = "float",
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
    self._name = "Canyon_H2_CTP_010_Enemy";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy";
    self.gPlayers = nil;
    self.npcGroupSize = 0;
    self.vehicleGroupSize = 0;
    self.infiniteLoopingTime = 3;
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|27799300");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_IndexList_v2_19 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|56965429");
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
                [0] = self.f_box_IndexList_v2_19_Output_0,
                [1] = self.f_box_IndexList_v2_19_Output_1,
                [2] = self.f_box_IndexList_v2_19_Output_2,
                [3] = self.f_box_IndexList_v2_19_Output_3,
                [4] = self.f_box_IndexList_v2_19_Output_4,
                [5] = self.f_box_IndexList_v2_19_Output_5,
            },
            count = 6,
        },
    });
    self.box_Canyon_H2_CTP_010_AiDirect_Packin30_31 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin30.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin30_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_AiDirect_Packin30_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|142009235");
    l0:SetConnections({
        -- Requested,
        [0] = self.f_box_Canyon_H2_CTP_010_AiDirect_Packin30_31_Requested,
    });
    self.box_Brick_Exp_Common_PlayerFullyDetected_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_PlayerFullyDetected_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|142820541");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected,
        -- Detected_BothPlayers,
        [1] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_BothPlayers,
        -- Detected_ClientOnly,
        [2] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_ClientOnly,
        -- Detected_HostOnly,
        [3] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_HostOnly,
        -- Disabled,
        [4] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_23_Disabled,
        -- Enabled,
        [5] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_23_Enabled,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|144786473");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_Canyon_H2_CTP_010_AttackDogwithElite_43 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AttackDogwithElite.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_AttackDogwithElite_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_AttackDogwithElite_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|235657449");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Canyon_H2_CTP_010_AttackDogwithElite_43_Success,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|337316190");
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
    self.box_Canyon_H2_Detected_LKP_Stim_Handle_26 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_Detected_LKP_Stim_Handle.debug.lua");
    l0 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_Detected_LKP_Stim_Handle_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|384066549");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Canyon_H2_Detected_LKP_Stim_Handle_26_Out,
    });
    self.box_Canyon_H2_FlareSTP_61 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_FlareSTP.debug.lua");
    l0 = self.box_Canyon_H2_FlareSTP_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_FlareSTP_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|423986730");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Canyon_H2_FlareSTP_61_Started,
    });
    self.box_MultipleAND_v2_54 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|496377444");
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
        [0] = self.f_box_MultipleAND_v2_54_Out,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|526214946");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_MessageListener_v3_36 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|543895147");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_36_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_36_Received,
    });
    self.box_MessageListener_v3_21 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|622002126");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_21_Received,
    });
    self.box_Canyon_H2_CTP_010_FreeValidation_62 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_FreeValidation.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_FreeValidation_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_FreeValidation_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|697323795");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_18 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|710648600");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_18_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_18_Received,
    });
    self.box_Gate_v3_44 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|737021949");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_44_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_44_Out,
    });
    self.box_MessageListener_v3_24 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|841772683");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_24_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_24_Received,
    });
    self.box_StateListener_v2_56 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|869070231");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_56_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_56_StateStart,
        -- StateStop,
        [4] = self.f_box_StateListener_v2_56_StateStop,
    });
    self.box_OnceOnly_v3_50 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|944744975");
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
    self.box_MessageListener_v3_1 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|971320745");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_1_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_1_Received,
    });
    self.box_Brick_Exp_Enemy_PackageGuardNearest_59 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuardNearest_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1057320176");
    l0:SetConnections({
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1081985142");
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
    self.box_Canyon_H2_CTP_010_Interception_Ext_A_33 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_A.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_Interception_Ext_A_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_Interception_Ext_A_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1093028192");
    l0:SetConnections({
    });
    self.box_Canyon_H2_CTP_010_InfiniteWaves_22 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_InfiniteWaves.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_InfiniteWaves_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_InfiniteWaves_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1142439997");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Canyon_H2_CTP_010_InfiniteWaves_22_Started,
    });
    self.box_Canyon_H2_CTP_010_DetectionMessage_12 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_DetectionMessage.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_DetectionMessage_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_DetectionMessage_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1202475715");
    l0:SetConnections({
        -- Handled,
        [0] = self.f_box_Canyon_H2_CTP_010_DetectionMessage_12_Handled,
    });
    self.box_IndexList_v2_20 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1276345650");
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
                [0] = self.f_box_IndexList_v2_20_Output_0,
                [1] = self.f_box_IndexList_v2_20_Output_1,
                [2] = self.f_box_IndexList_v2_20_Output_2,
            },
            count = 3,
        },
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1334278144");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_Canyon_H2_CTP_010_GroupSizeListern_13 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_GroupSizeListern.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_GroupSizeListern_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_GroupSizeListern_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1396855402");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Canyon_H2_CTP_010_GroupSizeListern_13_Disabled,
        -- Started,
        [1] = self.f_box_Canyon_H2_CTP_010_GroupSizeListern_13_Started,
    });
    self.box_Canyon_H2_CTP_010_Interception_Ext_C_9 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_C.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_Interception_Ext_C_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_Interception_Ext_C_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1515495280");
    l0:SetConnections({
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1600590871");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_Canyon_H2_CTP_010_AiDirect_Packin20_11 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin20.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin20_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_AiDirect_Packin20_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1603929348");
    l0:SetConnections({
        -- Requested,
        [0] = self.f_box_Canyon_H2_CTP_010_AiDirect_Packin20_11_Requested,
    });
    self.box_Canyon_H2_CTP_010_AnimalHandler_39 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AnimalHandler.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_AnimalHandler_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_AnimalHandler_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1670418328");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_51 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1693101878");
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
                [0] = self.f_box_OnceOnly_v3_51_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_57 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1696806507");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_57_Received,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1708467883");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_OnceOnly_v3_38 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1740255244");
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
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1749076289");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_65_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1826287719");
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_Canyon_H2_CTP_010_AiDirect_Packin10_27 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin10.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin10_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_AiDirect_Packin10_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1851743955");
    l0:SetConnections({
        -- Requested,
        [0] = self.f_box_Canyon_H2_CTP_010_AiDirect_Packin10_27_Requested,
    });
    self.box_Canyon_H2_CTP_010_Interception_Ext_B_35 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_B.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_Interception_Ext_B_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_Interception_Ext_B_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2025604043");
    l0:SetConnections({
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2106366582");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2130335716");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_Canyon_H2_CTP_010_PackGuard_CsHandle_52 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_PackGuard_CsHandle.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_PackGuard_CsHandle_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_PackGuard_CsHandle_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2143969830");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2138569843", "2138569843", "Canyon_H2_CTP_010_Enemy", "In", "box_ActivityAcknowledgeGate_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin10_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|618592452", "618592452", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_64.Out", "box_Canyon_H2_CTP_010_AiDirect_Packin10_27.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, {
    });
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin20_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|180902999", "180902999", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_64.Out", "box_Canyon_H2_CTP_010_AiDirect_Packin20_11.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, {
    });
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin30_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|617098823", "617098823", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_64.Out", "box_Canyon_H2_CTP_010_AiDirect_Packin30_31.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_H2_CTP_010_AnimalHandler_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|349279290", "349279290", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_10.Out", "box_Canyon_H2_CTP_010_AnimalHandler_39.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, {
    });
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_23();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|670086246", "670086246", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_10.Out", "box_Brick_Exp_Common_PlayerFullyDetected_23.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Canyon_H2_CTP_010_GroupSizeListern_13();
    l0 = self.box_Canyon_H2_CTP_010_GroupSizeListern_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1860494631", "1860494631", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_10.Out", "box_Canyon_H2_CTP_010_GroupSizeListern_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MessageListener_v3_18();
    l0 = self.box_MessageListener_v3_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1514720044", "1514720044", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_10.Out", "box_MessageListener_v3_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_H2_CTP_010_PackGuard_CsHandle_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1992596706", "1992596706", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_58.Out", "box_Canyon_H2_CTP_010_PackGuard_CsHandle_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin20_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1503169036", "1503169036", "Canyon_H2_CTP_010_Enemy", "box_Simple_Node_17.Out", "box_Canyon_H2_CTP_010_AiDirect_Packin20_11.StartMagicSpawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartMagicSpawn
    l0:Exec(2, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|748896255", "748896255", "Canyon_H2_CTP_010_Enemy", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1089387286", "1089387286", "Canyon_H2_CTP_010_Enemy", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_19_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_19;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1249218980", "1249218980", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_19.Output", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_19_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_19;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|752284446", "752284446", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_19.Output", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_19_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_19;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|331512164", "331512164", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_19.Output", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_19_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_19;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1994450195", "1994450195", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_19.Output", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_19_Output_4()
    local l0, l1;
    l0 = self.box_IndexList_v2_19;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1296742874", "1296742874", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_19.Output", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_19_Output_5()
    local l0, l1;
    l0 = self.box_IndexList_v2_19;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|526900303", "526900303", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_19.Output", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_42_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_42_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_55();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1606236813", "1606236813", "Canyon_H2_CTP_010_Enemy", "box_SetInteger_v2_42.Out", "box_SetEntity_v2_55.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Canyon_H2_CTP_010_AiDirect_Packin30_31_Requested()
    local l0, l1;
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin30_31;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|343917619", "343917619", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_CTP_010_AiDirect_Packin30_31.Requested", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected();
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|69995052", "69995052", "Canyon_H2_CTP_010_Enemy", "box_Brick_Exp_Common_PlayerFullyDetected_23.Detected", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_BothPlayers()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_BothPlayers();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_ClientOnly()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_ClientOnly();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_HostOnly()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_HostOnly();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_23_Disabled()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Disabled();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_23_Enabled()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Enabled();
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|255806932", "255806932", "Canyon_H2_CTP_010_Enemy", "box_Brick_Exp_Common_PlayerFullyDetected_23.Enabled", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_Detected_LKP_Stim_Handle_26();
    l0 = self.box_MultipleOR_49;
    l1 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|851147800", "851147800", "Canyon_H2_CTP_010_Enemy", "box_MultipleOR_49.Out", "box_Canyon_H2_Detected_LKP_Stim_Handle_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin20_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|991082256", "991082256", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_48.Out", "box_Canyon_H2_CTP_010_AiDirect_Packin20_11.StopMagicSpawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopMagicSpawn
    l0:Exec(3, {
    });
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1752379539", "1752379539", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_48.Out", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|513108618", "513108618", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_48.Out", "box_Delay_v5_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_48_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|738070081", "738070081", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_48.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_34_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_40();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1840104028", "1840104028", "Canyon_H2_CTP_010_Enemy", "box_GetPlayerGroup_v2_34.Out", "box_SetInteger_v2_40.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Canyon_H2_CTP_010_AttackDogwithElite_43_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_FreeValidation_62();
    l0 = self.box_Canyon_H2_CTP_010_AttackDogwithElite_43;
    l1 = self.box_Canyon_H2_CTP_010_FreeValidation_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1327614937", "1327614937", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_CTP_010_AttackDogwithElite_43.Success", "box_Canyon_H2_CTP_010_FreeValidation_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_46_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_46;
    l1 = self.box_OnceOnly_v3_51;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|124186629", "124186629", "Canyon_H2_CTP_010_Enemy", "box_MultipleOR_46.Out", "box_OnceOnly_v3_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Canyon_H2_FlareSTP_61();
    l0 = self.box_Canyon_H2_FlareSTP_61;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1176440578", "1176440578", "Canyon_H2_CTP_010_Enemy", "box_SetActivityFact_25.Out", "box_Canyon_H2_FlareSTP_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Canyon_H2_Detected_LKP_Stim_Handle_26_Out()
    local l0, l1;
    l0 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    l1 = self.box_OnceOnly_v3_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|558402191", "558402191", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_Detected_LKP_Stim_Handle_26.Out", "box_OnceOnly_v3_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Canyon_H2_FlareSTP_61_Started()
    local l0, l1;
    l0 = self.box_Canyon_H2_FlareSTP_61;
    l1 = self.box_Canyon_H2_CTP_010_DetectionMessage_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|980721785", "980721785", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_FlareSTP_61.Started", "box_Canyon_H2_CTP_010_DetectionMessage_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_24();
    l0 = self.box_MessageListener_v3_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|915872350", "915872350", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_14.Out", "box_MessageListener_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Canyon_H2_CTP_010_PackGuard_CsHandle_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|578514212", "578514212", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_14.Out", "box_Canyon_H2_CTP_010_PackGuard_CsHandle_52.StartPackageGuardBehavior", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartPackageGuardBehavior
    l0:Exec(1, {
    });
end;

function export:f_box_SetEntity_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|542963276", "542963276", "Canyon_H2_CTP_010_Enemy", "box_SetEntity_v2_55.Out", "box_OutputOrder_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_MultipleAND_v2_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1071919808", "1071919808", "Canyon_H2_CTP_010_Enemy", "box_MultipleAND_v2_54.Out", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_40_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|679327448", "679327448", "Canyon_H2_CTP_010_Enemy", "box_SetInteger_v2_40.Out", "box_SetInteger_v2_37.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_Canyon_H2_CTP_010_AiDirect_Packin30_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1278747356", "1278747356", "Canyon_H2_CTP_010_Enemy", "box_MultipleOR_32.Out", "box_Canyon_H2_CTP_010_AiDirect_Packin30_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, {
    });
end;

function export:f_box_MessageListener_v3_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_59();
    l0 = self.box_MessageListener_v3_36;
    l1 = self.box_Brick_Exp_Enemy_PackageGuardNearest_59;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|922710443", "922710443", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_36.Enabled", "box_Brick_Exp_Enemy_PackageGuardNearest_59.PackagePicked", l0:GetLuaBox(), l1:GetLuaBox());
    -- PackagePicked
    l1:Exec(0, params);
end;

function export:f_box_MessageListener_v3_36_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_MessageListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1161062782", "1161062782", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_36.Received", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Canyon_H2_CTP_010_InfiniteWaves_22();
    l0 = self.box_Canyon_H2_CTP_010_InfiniteWaves_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|206866524", "206866524", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_41.Out", "box_Canyon_H2_CTP_010_InfiniteWaves_22.Start_SwitchToMedium", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_SwitchToMedium
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1998000359", "1998000359", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_41.Out", "box_Delay_v5_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_41_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1819718900", "1819718900", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_41.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_21_Received()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_54();
    l0 = self.box_MessageListener_v3_21;
    l1 = self.box_MultipleAND_v2_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1543065958", "1543065958", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_21.Received", "box_MultipleAND_v2_54.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MessageListener_v3_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_21();
    l0 = self.box_MessageListener_v3_18;
    l1 = self.box_MessageListener_v3_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1215824787", "1215824787", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_18.Enabled", "box_MessageListener_v3_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_18_Received()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_36();
    l0 = self.box_MessageListener_v3_18;
    l1 = self.box_MessageListener_v3_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|299074752", "299074752", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_18.Received", "box_MessageListener_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_44_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_44;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|141118892", "141118892", "Canyon_H2_CTP_010_Enemy", "box_Gate_v3_44.Opened", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_44_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_44;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1107844118", "1107844118", "Canyon_H2_CTP_010_Enemy", "box_Gate_v3_44.Out", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_57();
    l0 = self.box_MessageListener_v3_24;
    l1 = self.box_MessageListener_v3_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|671257448", "671257448", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_24.Enabled", "box_MessageListener_v3_57.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_24_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_MessageListener_v3_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1379262308", "1379262308", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_24.Received", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_56_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_InfiniteWaves_22();
    l0 = self.box_StateListener_v2_56;
    l1 = self.box_Canyon_H2_CTP_010_InfiniteWaves_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2052264361", "2052264361", "Canyon_H2_CTP_010_Enemy", "box_StateListener_v2_56.Enabled", "box_Canyon_H2_CTP_010_InfiniteWaves_22.Start_SwitchToRelax", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_SwitchToRelax
    l1:Exec(5, params);
end;

function export:f_box_StateListener_v2_56_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_InfiniteWaves_22();
    l0 = self.box_StateListener_v2_56;
    l1 = self.box_Canyon_H2_CTP_010_InfiniteWaves_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|628292956", "628292956", "Canyon_H2_CTP_010_Enemy", "box_StateListener_v2_56.StateStart", "box_Canyon_H2_CTP_010_InfiniteWaves_22.Resume", l0:GetLuaBox(), l1:GetLuaBox());
    -- Resume
    l1:Exec(2, params);
end;

function export:f_box_StateListener_v2_56_StateStop()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_InfiniteWaves_22();
    l0 = self.box_StateListener_v2_56;
    l1 = self.box_Canyon_H2_CTP_010_InfiniteWaves_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|995913644", "995913644", "Canyon_H2_CTP_010_Enemy", "box_StateListener_v2_56.StateStop", "box_Canyon_H2_CTP_010_InfiniteWaves_22.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1648256950", "1648256950", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_69.Out", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_67();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|271301231", "271301231", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_69.Out", "box_RadioModifier_v3_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_50_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_25();
    l0 = self.box_OnceOnly_v3_50;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1779109106", "1779109106", "Canyon_H2_CTP_010_Enemy", "box_OnceOnly_v3_50.Out", "box_SetActivityFact_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = self.box_MessageListener_v3_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1350679495", "1350679495", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_1.Enabled", "box_Simple_Node_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_1_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_MessageListener_v3_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2060096702", "2060096702", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_1.Received", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_6_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_34();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|135635550", "135635550", "Canyon_H2_CTP_010_Enemy", "box_Print_v2_6.PrintedToScreen", "box_GetPlayerGroup_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2145482213", "2145482213", "Canyon_H2_CTP_010_Enemy", "box_RadioModifier_v3_67.Out", "box_RadioModifier_v3_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1292840321", "1292840321", "Canyon_H2_CTP_010_Enemy", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Canyon_H2_CTP_010_InfiniteWaves_22_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_44();
    l0 = self.box_Canyon_H2_CTP_010_InfiniteWaves_22;
    l1 = self.box_Gate_v3_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|483420651", "483420651", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_CTP_010_InfiniteWaves_22.Started", "box_Gate_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Canyon_H2_CTP_010_DetectionMessage_12_Handled()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_19();
    l0 = self.box_Canyon_H2_CTP_010_DetectionMessage_12;
    l1 = self.box_IndexList_v2_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|405549883", "405549883", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_CTP_010_DetectionMessage_12.Handled", "box_IndexList_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1927807547", "1927807547", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_3.Out", "box_Simple_Node_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|6077674", "6077674", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_3.Out", "box_ActivityEnd_7.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_20_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_Interception_Ext_A_33();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Canyon_H2_CTP_010_Interception_Ext_A_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|341981984", "341981984", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_20.Output", "box_Canyon_H2_CTP_010_Interception_Ext_A_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_20_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_Interception_Ext_B_35();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Canyon_H2_CTP_010_Interception_Ext_B_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1622864916", "1622864916", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_20.Output", "box_Canyon_H2_CTP_010_Interception_Ext_B_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_20_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_Interception_Ext_C_9();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Canyon_H2_CTP_010_Interception_Ext_C_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|62146745", "62146745", "Canyon_H2_CTP_010_Enemy", "box_IndexList_v2_20.Output", "box_Canyon_H2_CTP_010_Interception_Ext_C_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_6();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|739269720", "739269720", "Canyon_H2_CTP_010_Enemy", "box_ActivityInitialized_5.Out", "box_Print_v2_6.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_42();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|979163990", "979163990", "Canyon_H2_CTP_010_Enemy", "box_SetInteger_v2_37.Out", "box_SetInteger_v2_42.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Canyon_H2_CTP_010_GroupSizeListern_13_Disabled()
    local params, l0, l1;
    self:OnExit_box_Canyon_H2_CTP_010_GroupSizeListern_13_Disabled();
    params = self:OnEnter_box_MessageListener_v3_1();
    l0 = self.box_Canyon_H2_CTP_010_GroupSizeListern_13;
    l1 = self.box_MessageListener_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1361359751", "1361359751", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_CTP_010_GroupSizeListern_13.Disabled", "box_MessageListener_v3_1.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_GroupSizeListern_13_Started()
    local params, l0, l1;
    self:OnExit_box_Canyon_H2_CTP_010_GroupSizeListern_13_Started();
    params = self:OnEnter_box_MessageListener_v3_1();
    l0 = self.box_Canyon_H2_CTP_010_GroupSizeListern_13;
    l1 = self.box_MessageListener_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1946980306", "1946980306", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_CTP_010_GroupSizeListern_13.Started", "box_MessageListener_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetActivityFact_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_54();
    l0 = self.box_MultipleAND_v2_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1283262987", "1283262987", "Canyon_H2_CTP_010_Enemy", "box_SetActivityFact_15.Out", "box_MultipleAND_v2_54.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_29_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_29;
    l1 = self.box_Canyon_H2_CTP_010_AiDirect_Packin10_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1476173568", "1476173568", "Canyon_H2_CTP_010_Enemy", "box_MultipleOR_29.Out", "box_Canyon_H2_CTP_010_AiDirect_Packin10_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, {
    });
end;

function export:f_box_Canyon_H2_CTP_010_AiDirect_Packin20_11_Requested()
    local l0, l1;
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin20_11;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|123871109", "123871109", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_CTP_010_AiDirect_Packin20_11.Requested", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_51_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_51;
    l1 = self.box_Canyon_H2_CTP_010_AttackDogwithElite_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|443831628", "443831628", "Canyon_H2_CTP_010_Enemy", "box_OnceOnly_v3_51.Out", "box_Canyon_H2_CTP_010_AttackDogwithElite_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, {
    });
end;

function export:f_box_MessageListener_v3_57_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_InfiniteWaves_22();
    l0 = self.box_MessageListener_v3_57;
    l1 = self.box_Canyon_H2_CTP_010_InfiniteWaves_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|148408355", "148408355", "Canyon_H2_CTP_010_Enemy", "box_MessageListener_v3_57.Received", "box_Canyon_H2_CTP_010_InfiniteWaves_22.Start_SwitchToIntense", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_SwitchToIntense
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_30_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_30;
    l1 = self.box_Canyon_H2_CTP_010_AiDirect_Packin20_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|765479689", "765479689", "Canyon_H2_CTP_010_Enemy", "box_MultipleOR_30.Out", "box_Canyon_H2_CTP_010_AiDirect_Packin20_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, {
    });
end;

function export:f_box_RadioModifier_v3_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_68();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1384448375", "1384448375", "Canyon_H2_CTP_010_Enemy", "box_RadioModifier_v3_47.Out", "box_RadioModifier_v3_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_38_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_56();
    l0 = self.box_OnceOnly_v3_38;
    l1 = self.box_StateListener_v2_56;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|215784411", "215784411", "Canyon_H2_CTP_010_Enemy", "box_OnceOnly_v3_38.Out", "box_StateListener_v2_56.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_65_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_65;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|729410863", "729410863", "Canyon_H2_CTP_010_Enemy", "box_Delay_v5_65.Started", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_65;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|156603891", "156603891", "Canyon_H2_CTP_010_Enemy", "box_Delay_v5_65.TimeElapsed", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_28_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_28;
    l1 = self.box_OnceOnly_v3_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1247600125", "1247600125", "Canyon_H2_CTP_010_Enemy", "box_MultipleOR_28.Out", "box_OnceOnly_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Canyon_H2_CTP_010_AiDirect_Packin10_27_Requested()
    local l0, l1;
    l0 = self.box_Canyon_H2_CTP_010_AiDirect_Packin10_27;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1493904008", "1493904008", "Canyon_H2_CTP_010_Enemy", "box_Canyon_H2_CTP_010_AiDirect_Packin10_27.Requested", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Canyon_H2_CTP_010_GroupSizeListern_13();
    l0 = self.box_Canyon_H2_CTP_010_GroupSizeListern_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1438913452", "1438913452", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_4.Out", "box_Canyon_H2_CTP_010_GroupSizeListern_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_23();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1924696436", "1924696436", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_4.Out", "box_Brick_Exp_Common_PlayerFullyDetected_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_18();
    l0 = self.box_MessageListener_v3_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2116770764", "2116770764", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_4.Out", "box_MessageListener_v3_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Canyon_H2_CTP_010_AnimalHandler_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|445615924", "445615924", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_4.Out", "box_Canyon_H2_CTP_010_AnimalHandler_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_44();
    l0 = self.box_Gate_v3_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|454679958", "454679958", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_45.Out", "box_Gate_v3_44.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_20();
    l0 = self.box_IndexList_v2_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2019243657", "2019243657", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_45.Out", "box_IndexList_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1660377765", "1660377765", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_60.Out", "box_SetActivityFact_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_59();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_59;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1173673093", "1173673093", "Canyon_H2_CTP_010_Enemy", "box_OutputOrder_v2_60.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_59.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_InfiniteWaves_22();
    l0 = self.box_MultipleOR_66;
    l1 = self.box_Canyon_H2_CTP_010_InfiniteWaves_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1268857626", "1268857626", "Canyon_H2_CTP_010_Enemy", "box_MultipleOR_66.Out", "box_Canyon_H2_CTP_010_InfiniteWaves_22.PushToExtractionPoint", l0:GetLuaBox(), l1:GetLuaBox());
    -- PushToExtractionPoint
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_Delay_v5_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|270158061", "270158061", "Canyon_H2_CTP_010_Enemy", "box_Delay_v5_53.TimeElapsed", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|@CancelRequestedSpecial");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|@CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|@DisablePackGuardCsHandle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|@StartMagicSpawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_19()
    local params;
    params = {
        -- Index,
        [0] = Globals.Canyon_H2_CTP_010_Enemy.iPackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|100215041");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_42_Out,
    });
    params = {
        -- Integer,
        [1] = Globals.Canyon_H2_CTP_010_Main.iPackagePositionIndex,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_23()
    local params;
    params = {
        -- EnemyGroup,
        [0] = "#CAC04D14",
        -- OnceOnly,
        [1] = true,
        -- PlayerGroup,
        [2] = self.gPlayers,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|173539544");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
                [3] = self.f_box_OutputOrder_v2_48_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|233563708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|372379950");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_25_Out,
    });
    params = {
        -- Fact,
        [0] = "H2_CTP_010_B10_PlayerDetected",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_Detected_LKP_Stim_Handle_26()
    local params, l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    params = {
        -- eDetectAlertStim,
        [0] = "2108894395987135120",
        -- eDetectLKP,
        [1] = "2108908365024335568",
        -- ePlayerDetected,
        [2] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_FlareSTP_61()
    local params;
    params = {
        -- AutoDisableTimer,
        [0] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|430089570");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|494622074");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_55_Out,
    });
    params = {
        -- Entity,
        [0] = Globals.Canyon_H2_CTP_010_Main.ePackageSpawner,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_54()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_68()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|499991367");
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
        [5] = "2109975309808839410",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|525976866");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_40_Out,
    });
    params = {
        -- Integer,
        [1] = Globals.Canyon_H2_CTP_010_Main.iExtractionPOIIndex,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "PackageStolenDetected",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|552115635");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
                [2] = self.f_box_OutputOrder_v2_41_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Extraction Phase Initialized",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_FreeValidation_62()
    local params;
    params = {
        -- fDistanceToFlee,
        [0] = 320,
        -- gNpcsToValidate,
        [1] = "#CAC04D14",
        -- LoopTime,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_44()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Player In Extraction",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_56()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#CAC04D14",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|877729022");
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

function export:OnEnter_box_MessageListener_v3_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "leave_expediton",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1042111994");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_6_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Canyon_H2_CTP_010_Enemy Acknowledged!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_59()
    local params;
    params = {
        -- ActualPackageSpawner,
        [0] = Globals.Canyon_H2_CTP_010_Enemy.ePackageSpawner,
        -- EnemyGroup_PackageGuard,
        [1] = "#8915D383",
        -- EnemyGroupAll,
        [2] = "#CAC04D14",
        -- PackageGuardPositionCS_A,
        [3] = "2109451332636119917",
        -- PackageGuardPositionCS_B,
        [4] = "2108508451146568495",
        -- PackageGuardPositionCS_C,
        [5] = "2108522605527960762",
        -- PackageGuardPositionCS_D,
        [6] = "2109451140599911219",
        -- PackageGuardPositionCS_E,
        [7] = "2109009729048025017",
        -- PackageGuardPositionCS_F,
        [8] = "2109451361681675262",
        -- PackageSpawner_A,
        [9] = "2109005008841218014",
        -- PackageSpawner_B,
        [10] = "2109005015887648743",
        -- PackageSpawner_C,
        [11] = "2108148056233871879",
        -- PackageSpawner_D,
        [12] = "2109005000999966665",
        -- PackageSpawner_E,
        [13] = "2109005034476804081",
        -- PackageSpawner_F,
        [14] = "2109005062687692795",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_67()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1067369907");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_67_Out,
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
        [5] = "2109975362187307768",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_Interception_Ext_A_33()
    local params;
    params = {
        -- gPlayerGroup,
        [0] = self.gPlayers,
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_InfiniteWaves_22()
    local params;
    params = {
        -- gPlayers,
        [0] = self.gPlayers,
        -- iKillerWaveInterval,
        [1] = 8,
        -- iMaxVehicleSize,
        [2] = 9,
        -- iMinGroupSizeIntense,
        [3] = 10,
        -- iMinGroupSizeMedium,
        [4] = 8,
        -- iMinGroupSizeRelax,
        [5] = 6,
        -- Looptime,
        [6] = self.infiniteLoopingTime,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1269807891");
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

function export:OnEnter_box_IndexList_v2_20()
    local params;
    params = {
        -- Index,
        [0] = Globals.Canyon_H2_CTP_010_Enemy.iExtractionPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1371331386");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_37_Out,
    });
    params = {
        -- Integer,
        [1] = Globals.Canyon_H2_CTP_010_Main.iDifficulty,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_GroupSizeListern_13()
    local params;
    params = {
        -- npcGroupToListen,
        [0] = "#CAC04D14",
        -- vehicleGroupToListen,
        [1] = "#3A91ACA0",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1431872493");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_15_Out,
    });
    params = {
        -- Fact,
        [0] = "H2_CTP_010_B10_PackagePicked",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_Interception_Ext_C_9()
    local params;
    params = {
        -- gPlayerGroup,
        [0] = self.gPlayers,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_57()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Helicopter Incoming",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_47()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1734119748");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_47_Out,
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
        [5] = "2109975279041522416",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1861128513");
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
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
                [4] = self.f_box_OutputOrder_v2_4_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|1873676936");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2011749656");
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

function export:OnEnter_box_Canyon_H2_CTP_010_Interception_Ext_B_35()
    local params;
    params = {
        -- gPlayerGroup,
        [0] = self.gPlayers,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Enemy|2047459576");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Enemy.iPackagePositionIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l1 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    l1:GetLuaBox().ePlayerDetected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_BothPlayers()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l1 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    l1:GetLuaBox().ePlayerDetected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_ClientOnly()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l1 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    l1:GetLuaBox().ePlayerDetected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Detected_HostOnly()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l1 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    l1:GetLuaBox().ePlayerDetected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Disabled()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l1 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    l1:GetLuaBox().ePlayerDetected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_23_Enabled()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_23;
    l1 = self.box_Canyon_H2_Detected_LKP_Stim_Handle_26;
    l1:GetLuaBox().ePlayerDetected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPlayerGroup_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Canyon_H2_CTP_010_Enemy.ePackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Enemy.iExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Enemy.iDifficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Canyon_H2_CTP_010_GroupSizeListern_13_Disabled()
    local l0;
    l0 = self.box_Canyon_H2_CTP_010_GroupSizeListern_13;
    self.npcGroupSize = l0:GetDataOutValue(0);
    self.vehicleGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_Canyon_H2_CTP_010_GroupSizeListern_13_Started()
    local l0;
    l0 = self.box_Canyon_H2_CTP_010_GroupSizeListern_13;
    self.npcGroupSize = l0:GetDataOutValue(0);
    self.vehicleGroupSize = l0:GetDataOutValue(1);
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
