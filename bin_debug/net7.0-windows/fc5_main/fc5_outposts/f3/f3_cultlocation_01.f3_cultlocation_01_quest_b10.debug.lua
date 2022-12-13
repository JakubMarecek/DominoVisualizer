LUAC�5 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/f3/f3_cultlocation_01.domino
-- User graph: F3_CultLocation_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.F3_CultLocation_01 = nil;
    Globals.F3_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/F3/F3_CultLocation_01.F3_CultLocation_01_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "extraMarker",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "PlayerDetected",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bPlayerDetection",
                type = "bool",
            },
            [2] = {
                name = "eGuardsCS",
                type = "entity",
            },
            [3] = {
                name = "eTargetCS",
                type = "entity",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
            [5] = {
                name = "sDamageType",
                type = "string",
            },
            [6] = {
                name = "TargetGroup",
                type = "group",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eNumberOfEscaped",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
                name = "Pawn",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
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
    self._name = "F3_CultLocation_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10";
    self.o_FailReason = {
        section = "",
        item = "",
        id = "",
    };
    self.Cow_left = 5;
    self.Bears_left = 3;
    self.Cages_baited = 0;
    self.i_Piecesfound = 0;
    self.eAnimalCage_Coll = nil;
    self.animalcage_interact_01 = nil;
    self.vCollOriginalPosition = {
    };
    self.animalCage_Door = nil;
    self.eAnimalCage_TEMPColl = nil;
    self.Bears_count = 8;
    self.i_Progress = 0;
    self.i_Total = 0;
    self.PreogressIdCustom = 0;
    self.g_PlayerGroup = nil;
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|26171742");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_ProximityRadiusListener_v3_31 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|336729887");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_31_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_31_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_31_SomeoneNear,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|344379628");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|526027557");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|562085547");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_HealthListener_v6_12 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|658563516");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_12_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_12_Disabled,
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|824974549");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|915160142");
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
    self.box_ActivityAcknowledgeGate_33 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|994458372");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_33_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_33_Reloaded,
    });
    self.box_ActivityInitialized_14 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1267327627");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_14_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1311063841");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_EntityStatusListener_22 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1406316953");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_22_Loaded,
    });
    self.box_HealthListener_v6_15 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1407335382");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_15_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_15_Disabled,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_15_Enabled,
    });
    self.box_StartCelebration_26 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1415505665");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_26_Ended,
    });
    self.box_ProximityTrigger_v2_34 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1531314823");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_34_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_34_Enter,
    });
    self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1650983433");
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
                [0] = self.f_box_OnceOnly_v3_8_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_28 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1712560657");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_28_Enter,
    });
    self.box_Brick_Kill_Target_CORE_v2_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_CORE_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_CORE_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1766613098");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Brick_Kill_Target_CORE_v2_2_Started,
        -- Success,
        [4] = self.f_box_Brick_Kill_Target_CORE_v2_2_Success,
    });
    self.box_ProximityRadiusListener_v3_18 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1934203309");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_18_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_18_SomeoneNear,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1936190792");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1813415123", "1813415123", "F3_CultLocation_01_QUEST_B10", "In", "box_ActivityAcknowledgeGate_33.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|135235865", "135235865", "F3_CultLocation_01_QUEST_B10", "OnLeaveZone", "box_ActivityRetry_20.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_11();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|179057545", "179057545", "F3_CultLocation_01_QUEST_B10", "box_Simple_Node_37.Out", "box_GetPlayerGroup_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_9();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|372010740", "372010740", "F3_CultLocation_01_QUEST_B10", "box_MultipleOR_1.Out", "box_SetContextualStrategy_9.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_31_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_31;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1114907556", "1114907556", "F3_CultLocation_01_QUEST_B10", "box_ProximityRadiusListener_v3_31.Disabled", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_12();
    l0 = self.box_ProximityRadiusListener_v3_31;
    l1 = self.box_HealthListener_v6_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|725038699", "725038699", "F3_CultLocation_01_QUEST_B10", "box_ProximityRadiusListener_v3_31.Enabled", "box_HealthListener_v6_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_31_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_31;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|352157996", "352157996", "F3_CultLocation_01_QUEST_B10", "box_ProximityRadiusListener_v3_31.SomeoneNear", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_12();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_HealthListener_v6_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1496581767", "1496581767", "F3_CultLocation_01_QUEST_B10", "box_MultipleOR_4.Out", "box_HealthListener_v6_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|300606476", "300606476", "F3_CultLocation_01_QUEST_B10", "box_MultipleOR_7.Out", "box_OnceOnly_v3_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_12_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_12;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1653761162", "1653761162", "F3_CultLocation_01_QUEST_B10", "box_HealthListener_v6_12.Damaged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_12_Disabled()
    local l0, l1;
    l0 = self.box_HealthListener_v6_12;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|786238709", "786238709", "F3_CultLocation_01_QUEST_B10", "box_HealthListener_v6_12.Disabled", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Kill_Target_CORE_v2_2();
    l0 = self.box_Brick_Kill_Target_CORE_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|2006085455", "2006085455", "F3_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_5.Out", "box_Brick_Kill_Target_CORE_v2_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|461112922", "461112922", "F3_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_5.Out", "box_Simple_Node_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_11_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|703687437", "703687437", "F3_CultLocation_01_QUEST_B10", "box_GetPlayerGroup_v2_11.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1553051773", "1553051773", "F3_CultLocation_01_QUEST_B10", "box_SetContextualStrategy_9.Out", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_16();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|941688418", "941688418", "F3_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_30.Out", "box_IsPawnAlive_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_34();
    l0 = self.box_ProximityTrigger_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|540098751", "540098751", "F3_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_30.Out", "box_ProximityTrigger_v2_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_28();
    l0 = self.box_ProximityTrigger_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|2039073172", "2039073172", "F3_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_30.Out", "box_ProximityTrigger_v2_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_18();
    l0 = self.box_ProximityRadiusListener_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|670685504", "670685504", "F3_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_30.Out", "box_ProximityRadiusListener_v3_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_10();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1232318797", "1232318797", "F3_CultLocation_01_QUEST_B10", "box_MultipleOR_3.Out", "box_SetContextualStrategy_10.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_33_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_33;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|682008728", "682008728", "F3_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_33.Acknowledged", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_33_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_33;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1129294191", "1129294191", "F3_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_33.Reloaded", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_ActivityInitialized_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1919179597", "1919179597", "F3_CultLocation_01_QUEST_B10", "box_ActivityInitialized_14.Out", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_ActivityInitialized_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1894076885", "1894076885", "F3_CultLocation_01_QUEST_B10", "box_MultipleOR_21.Out", "box_ActivityInitialized_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_EntityStatusListener_22_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_19();
    l0 = self.box_EntityStatusListener_22;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|712047128", "712047128", "F3_CultLocation_01_QUEST_B10", "box_EntityStatusListener_22.Loaded", "box_VehicleModifier_v2_19.SetEngineMinorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMinorDamage
    l1:Exec(14, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_15_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_15;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|124133569", "124133569", "F3_CultLocation_01_QUEST_B10", "box_HealthListener_v6_15.Damaged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_15_Disabled()
    local l0, l1;
    l0 = self.box_HealthListener_v6_15;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|262726958", "262726958", "F3_CultLocation_01_QUEST_B10", "box_HealthListener_v6_15.Disabled", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_22();
    l0 = self.box_HealthListener_v6_15;
    l1 = self.box_EntityStatusListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1200806281", "1200806281", "F3_CultLocation_01_QUEST_B10", "box_HealthListener_v6_15.Enabled", "box_EntityStatusListener_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_26_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_25();
    l0 = self.box_StartCelebration_26;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1467468412", "1467468412", "F3_CultLocation_01_QUEST_B10", "box_StartCelebration_26.Ended", "box_ActivityEnd_25.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_31();
    l0 = self.box_ProximityTrigger_v2_34;
    l1 = self.box_ProximityRadiusListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1558116761", "1558116761", "F3_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_34.Enabled", "box_ProximityRadiusListener_v3_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_34_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_ProximityTrigger_v2_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1985851310", "1985851310", "F3_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_34.Enter", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_8_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_OnceOnly_v3_8;
    l1 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1086883552", "1086883552", "F3_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_8.Out", "box_SpawnAI_17.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_28_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_6();
    l0 = self.box_ProximityTrigger_v2_28;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1245037401", "1245037401", "F3_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_28.Enter", "box_SetContextualStrategy_6.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24();
    l0 = self.box_Brick_Kill_Target_CORE_v2_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|144459178", "144459178", "F3_CultLocation_01_QUEST_B10", "box_Brick_Kill_Target_CORE_v2_2.Started", "box_ActivityObjectiveMarkerModifier_v3_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_36();
    l0 = self.box_Brick_Kill_Target_CORE_v2_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1736376799", "1736376799", "F3_CultLocation_01_QUEST_B10", "box_Brick_Kill_Target_CORE_v2_2.Success", "box_EndActivityObjective_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_31();
    l0 = self.box_ProximityRadiusListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|587212854", "587212854", "F3_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_ProximityRadiusListener_v3_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|154043064", "154043064", "F3_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_15();
    l0 = self.box_ProximityRadiusListener_v3_18;
    l1 = self.box_HealthListener_v6_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|306594523", "306594523", "F3_CultLocation_01_QUEST_B10", "box_ProximityRadiusListener_v3_18.Enabled", "box_HealthListener_v6_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_18_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_15();
    l0 = self.box_ProximityRadiusListener_v3_18;
    l1 = self.box_HealthListener_v6_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|79398016", "79398016", "F3_CultLocation_01_QUEST_B10", "box_ProximityRadiusListener_v3_18.SomeoneNear", "box_HealthListener_v6_15.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1805156328", "1805156328", "F3_CultLocation_01_QUEST_B10", "box_Delay_v5_29.TimeElapsed", "box_UseContextualActionModifier_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_16_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1058988748", "1058988748", "F3_CultLocation_01_QUEST_B10", "box_IsPawnAlive_v2_16.False", "box_SpawnAI_23.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v2_16_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_27();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1745463015", "1745463015", "F3_CultLocation_01_QUEST_B10", "box_IsPawnAlive_v2_16.True", "box_SetContextualStrategy_27.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_26();
    l0 = self.box_StartCelebration_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1336741662", "1336741662", "F3_CultLocation_01_QUEST_B10", "box_EndActivityObjective_v2_36.Out", "box_StartCelebration_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|@n_CustomEvents");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.g_PlayerGroup,
        -- id2,
        [3] = "2103953769457827240",
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|477499196");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104189049488034025",
        -- Group,
        [1] = "2100650996614050526",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104135160516593212",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_12()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2103953769457827240",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|758022752");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104161315330209240",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|795064295");
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

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104189083864549648",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|873955806");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|894641625");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2104176484561232566",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|897450575");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_9_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104134453711344082",
        -- Group,
        [1] = "2103953769457827240",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|899322441");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
                [3] = self.f_box_OutputOrder_v2_30_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|988710479");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100859739779900510",
        -- Group,
        [1] = "2104176650703905717",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1097235636");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100859739779900510",
        -- Group,
        [1] = "2104173345193857510",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1260001265");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1376925443");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104176484561232566",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_15()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2104176650703905717",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_26()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104135113978693160",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104162520947237833",
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_CORE_v2_2()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bPlayerDetection,
        [1] = false,
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "F3_CultLocation_01_QUEST_B10_OBJ_01",
            id = "603453",
        },
        -- TargetGroup,
        [6] = "#14D0492A",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1788339302");
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

function export:OnEnter_box_ProximityRadiusListener_v3_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.g_PlayerGroup,
        -- id2,
        [3] = "2104176650703905717",
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|1988270894");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_16_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_16_True,
    });
    params = {
        -- Pawn,
        [0] = "2100650996614050526",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|2075076579");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103951226684067808",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "F3_CultLocation_01_QUEST_B10_OBJ_01",
            id = "603453",
        },
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_QUEST_B10|2118829813");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_36_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "F3_CultLocation_01_QUEST_B10_OBJ_01",
            id = "603453",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_PlayerGroup = l0:GetDataOutValue(0);
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
