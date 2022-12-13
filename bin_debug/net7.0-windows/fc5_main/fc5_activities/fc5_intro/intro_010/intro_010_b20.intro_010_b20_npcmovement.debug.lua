LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b20.domino
-- User graph: Intro_010_B20_NpcMovement
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="deputy" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3465580101.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3355571366.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_NpcMovement.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Combat_Started",
            },
            [1] = {
                name = "Disable_Fence_SyncSTP",
            },
            [2] = {
                name = "Enable_FollowBehavior",
            },
            [3] = {
                name = "End_Flamer_BurnSTP",
            },
            [4] = {
                name = "Gates_Closed",
            },
            [5] = {
                name = "In",
            },
            [6] = {
                name = "Move_Npc_ToChurch",
            },
            [7] = {
                name = "Move_Npc_ToGate_1",
            },
            [8] = {
                name = "Move_Npc_ToGate_2",
            },
            [9] = {
                name = "Start_Flamer_BurnSTP",
            },
        },
        controlInCount = 10,
        controlOut = {
            [0] = {
                name = "Enable_Obj_Marker",
                delayed = false,
            },
            [1] = {
                name = "End_Diags_Npc_Fence",
                delayed = false,
            },
            [2] = {
                name = "Start_Diags_Npc_Fence",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "deputy",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Intro_010_B20_NpcMovement";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement";
    self.Start_Diags_Npc_Fence = DummyFunction;
    self.End_Diags_Npc_Fence = DummyFunction;
    self.Enable_Obj_Marker = DummyFunction;
    self.player = nil;
    self.Players = nil;
    self.deputee = nil;
    self.box_Delay_v5_120 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1854949");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_120_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_120_TimeElapsed,
    });
    self.box_EntityStatusListener_327 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_327;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|27170849");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_327_Loaded,
    });
    self.box_RemoveEntity_v2_305 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_305;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|58654990");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_305_Out,
    });
    self.box_ProximityTrigger_v2_172 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|84081064");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_172_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_172_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_172_Enter,
    });
    self.box_Bind_v4_181 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|86002597");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_181_Bound,
    });
    self.box_MultipleOR_333 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|87528077");
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
        [0] = self.f_box_MultipleOR_333_Out,
    });
    self.box_ProximityRadiusListener_v3_64 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|99999571");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_64_SomeoneNear,
    });
    self.box_Delay_v5_339 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|107091767");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_339_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_339_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_63 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|121916616");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_63_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_63_Enter,
    });
    self.box_EntityStatusListener_270 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|142831887");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_270_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_270_Loaded,
    });
    self.box_ProximityTrigger_v2_136 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|153302698");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_136_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_136_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_136_Enter,
    });
    self.box_ProximityRadiusListener_v3_312 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|189145701");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_312_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_312_SomeoneNear,
    });
    self.box_EntityStatusListener_187 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|190813605");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_187_Loaded,
    });
    self.box_ProximityRadiusListener_v3_329 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|213984059");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_329_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_47 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|218434364");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_47_SomeoneNear,
    });
    self.box_Gate_v3_89 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|225769470");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_89_Out,
    });
    self.box_ProximityTrigger_v2_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|230211549");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_5_Enter,
    });
    self.box_ProximityRadiusListener_v3_287 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|230536284");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_287_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_287_SomeoneFar,
    });
    self.box_Gate_v3_76 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|237740508");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_76_Out,
    });
    self.box_OnceOnly_v3_180 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|243939317");
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
                [0] = self.f_box_OnceOnly_v3_180_Out_0,
            },
            count = 1,
        },
    });
    self.box_SpawnAI_282 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|252095305");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_282_Out,
    });
    self.box_OnceOnly_v3_222 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|270525277");
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
                [0] = self.f_box_OnceOnly_v3_222_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|271996469");
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
    self.box_Delay_v5_88 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|274532634");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_88_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_53 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|288805056");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_53_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_53_Enter,
    });
    self.box_EntityStatusListener_257 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|297862443");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_257_Loaded,
    });
    self.box_LookAtTrigger_v2_317 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|305578116");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_317_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_317_EnterFOV,
    });
    self.box_Delay_v5_281 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|319317061");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_281_TimeElapsed,
    });
    self.box_SpawnAI_301 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|342128548");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_301_Out,
    });
    self.box_EntityStatusListener_78 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|358258694");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_78_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_78_Loaded,
    });
    self.box_EntityStatusListener_67 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|369913727");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_67_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_67_Loaded,
    });
    self.box_ProximityTrigger_v2_184 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|374756843");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_184_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_184_Enter,
    });
    self.box_ProximityRadiusListener_v3_212 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|376651577");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_212_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_212_SomeoneNear,
    });
    self.box_MultipleOR_254 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|376928755");
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
        [0] = self.f_box_MultipleOR_254_Out,
    });
    self.box_Gate_v3_249 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|398847690");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_249_Out,
    });
    self.box_ProximityTrigger_v2_283 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|399571934");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_283_Enter,
    });
    self.box_ProximityTrigger_v2_37 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|411906880");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_37_Enter,
    });
    self.box_Delay_v5_293 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|428470681");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_293_TimeElapsed,
    });
    self.box_Gate_v3_255 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|435742488");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_255_Out,
    });
    self.box_MultipleOR_217 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|447080578");
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
        [0] = self.f_box_MultipleOR_217_Out,
    });
    self.box_PlayDialog_v6_15 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|452425426");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_15_Finished,
    });
    self.box_GroupSizeListener_v5_6 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|455668433");
    l0:SetConnections({
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_6_MemberRemoved,
    });
    self.box_Gate_v3_104 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|457909130");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_104_Out,
    });
    self.box_ProximityTrigger_v2_155 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|479272308");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_155_Enter,
    });
    self.box_ProximityTrigger_v2_316 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|503746963");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_316_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_316_Enter,
    });
    self.box_Gate_v3_111 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|575401305");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_111_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_111_Out,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|578181579");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_Gate_v3_70 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|630004597");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_70_Out,
    });
    self.box_MultipleAND_v2_4 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|647222123");
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
        [0] = self.f_box_MultipleAND_v2_4_Out,
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|653575570");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_Delay_v5_261 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|677107320");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_261_TimeElapsed,
    });
    self.box_EntityStatusListener_175 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|677556900");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_175_Loaded,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|691810234");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_MultipleOR_232 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|694015238");
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
        [0] = self.f_box_MultipleOR_232_Out,
    });
    self.box_RemoveEntity_v2_322 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|724773396");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_322_Out,
    });
    self.box_Delay_v5_328 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|729317548");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_328_TimeElapsed,
    });
    self.box_Bind_v4_168 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|736882647");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_168_Bound,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|765867843");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_EntityStatusListener_231 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|768372125");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_231_Loaded,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|774779445");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_Gate_v3_247 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|837176892");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_247_Out,
    });
    self.box_MultipleOR_246 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|846885330");
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
        [0] = self.f_box_MultipleOR_246_Out,
    });
    self.box_EntityStatusListener_19 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|851003330");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_19_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_19_Loaded,
    });
    self.box_ProximityRadiusListener_v3_44 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|852955745");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_44_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_44_SomeoneNear,
    });
    self.box_Delay_v5_179 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|859836277");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_179_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_294 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|900224038");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_294_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_294_Enter,
    });
    self.box_ProximityRadiusListener_v3_213 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|919619810");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_213_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_213_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_213_SomeoneNear,
    });
    self.box_OnceOnly_v3_314 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_314;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|926022463");
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
                [0] = self.f_box_OnceOnly_v3_314_Out_0,
            },
            count = 1,
        },
    });
    self.box_RemoveEntity_v2_277 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|930667009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_277_Out,
    });
    self.box_ProximityRadiusListener_v3_52 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|942899455");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_52_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_52_SomeoneNear,
    });
    self.box_EntityStatusListener_266 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|955259022");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_266_Loaded,
    });
    self.box_EntityStatusListener_92 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|994442035");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_92_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_92_Loaded,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|995670836");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_EntityStatusListener_259 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1011241658");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_259_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_259_Loaded,
    });
    self.box_Gate_v3_101 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1020090637");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_101_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1027496673");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1057014602");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_RemoveEntity_v2_315 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1119917000");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_315_Out,
    });
    self.box_ProximityRadiusListener_v3_211 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1121007302");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_211_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_211_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_31 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1123884977");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_31_Enter,
    });
    self.box_ProximityTrigger_v2_325 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1134474378");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_325_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_325_Enter,
    });
    self.box_ProximityRadiusListener_v3_12 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1170896208");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_12_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_12_SomeoneNear,
    });
    self.box_PositionModifier_v2_178 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1203806586");
    l0:SetConnections({
    });
    self.box_Delay_v5_116 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1204332774");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_116_TimeElapsed,
    });
    self.box_Gate_v3_43 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1210404326");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_43_Out,
    });
    self.box_Gate_v3_74 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1216953822");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_74_Out,
    });
    self.box_ProximityRadiusListener_v3_79 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1236092141");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_79_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_79_SomeoneNear,
    });
    self.box_MultipleOR_298 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1246063997");
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
        [0] = self.f_box_MultipleOR_298_Out,
    });
    self.box_SpawnAI_313 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1257847144");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_313_Out,
    });
    self.box_OnceOnly_v3_284 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1288693342");
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
                [0] = self.f_box_OnceOnly_v3_284_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_227 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1294384862");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_227_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_227_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_285 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1299663656");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_285_Enter,
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1314246278");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_11_Started,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1325295136");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_ProximityRadiusListener_v3_208 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1357685441");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_208_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_208_SomeoneNear,
    });
    self.box_SpawnAI_292 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1362600069");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_214 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1363175192");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_214_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_214_SomeoneNear,
    });
    self.box_Gate_v3_237 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1368988971");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_237_Out,
    });
    self.box_EntityStatusListener_137 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1376122473");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_137_Loaded,
    });
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1377022321");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_3_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
    self.box_SpawnAI_302 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1388151793");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_85 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1388993501");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_85_SomeoneNear,
    });
    self.box_EntityStatusListener_230 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1389066350");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_230_Loaded,
    });
    self.box_MultipleAND_v2_57 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1425845616");
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
        [0] = self.f_box_MultipleAND_v2_57_Out,
    });
    self.box_ProximityRadiusListener_v3_336 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1427372811");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_336_AllFar,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_336_Enabled,
    });
    self.box_EntityStatusListener_108 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1468814613");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_108_Loaded,
    });
    self.box_LookAtTrigger_v2_1 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1474563434");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_1_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_1_EnterFOV,
    });
    self.box_Gate_v3_202 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1498671110");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_202_Out,
    });
    self.box_Delay_v5_122 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1513784091");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_122_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_122_TimeElapsed,
    });
    self.box_MultipleOR_295 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1522510374");
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
        [0] = self.f_box_MultipleOR_295_Out,
    });
    self.box_TeleportPawns_151 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1536351940");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_151_Out,
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1540767731");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
    self.box_Gate_v3_164 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1544898316");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_164_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_164_Out,
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1569136582");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_Bind_v4_176 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1605632118");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_176_Bound,
    });
    self.box_Gate_v3_216 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1616985181");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_216_Out,
    });
    self.box_ProximityTrigger_v2_307 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_307;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1625226471");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_307_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_307_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_307_Enter,
    });
    self.box_EntityStatusListener_141 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1641838897");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_141_Loaded,
    });
    self.box_RemoveEntity_v2_276 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1649516973");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_46 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1712195552");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_46_Disabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_46_SomeoneFar,
    });
    self.box_OnceOnly_v3_189 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1714351268");
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
                [0] = self.f_box_OnceOnly_v3_189_Out_0,
            },
            count = 1,
        },
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_189_ResetOut,
    });
    self.box_SpawnAI_274 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1734002557");
    l0:SetConnections({
    });
    self.box_Gate_v3_248 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1737472429");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_248_Out,
    });
    self.box_ProximityTrigger_v2_308 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1745962282");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_308_Enter,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1781261568");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_SpawnAI_288 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1811521152");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_288_Out,
    });
    self.box_ProximityRadiusListener_v3_269 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1827213792");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_269_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_269_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_269_SomeoneNear,
    });
    self.box_Delay_v5_306 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_306;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1838587580");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_306_TimeElapsed,
    });
    self.box_Switch_13 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1851313137");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
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
                [0] = self.f_box_Switch_13_Output_0,
                [1] = self.f_box_Switch_13_Output_1,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_109 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1867376284");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_109_Out,
    });
    self.box_EntityStatusListener_209 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1867925145");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_209_Loaded,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1907613885");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1910212109");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_OnceOnly_v3_319 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_319;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1911586911");
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
                [0] = self.f_box_OnceOnly_v3_319_Out_0,
            },
            count = 1,
        },
    });
    self.box_Gate_v3_196 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1913530735");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_196_Out,
    });
    self.box_Delay_v5_330 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1921151383");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_330_TimeElapsed,
    });
    self.box_PositionModifier_v2_163 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1927106717");
    l0:SetConnections({
    });
    self.box_Delay_v5_191 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1962318394");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_191_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_191_TimeElapsed,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1966437578");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_58_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_48 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1969627877");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_48_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_48_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_99 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1980878340");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_99_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_99_SomeoneNear,
    });
    self.box_OnceOnly_v3_182 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1991202365");
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
                [0] = self.f_box_OnceOnly_v3_182_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2000260747");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_Gate_v3_186 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2005173081");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_186_Out,
    });
    self.box_OnceOnly_v3_225 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2006223367");
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
                [0] = self.f_box_OnceOnly_v3_225_Out_0,
            },
            count = 1,
        },
    });
    self.box_ProximityTrigger_v2_320 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2008676563");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_320_Enter,
    });
    self.box_ProximityRadiusListener_v3_190 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2012253097");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_190_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_190_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_161 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2020451696");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_161_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_161_SomeoneNear,
    });
    self.box_EntityStatusListener_279 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2025314906");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_279_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_279_Loaded,
    });
    self.box_Delay_v5_309 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2030735752");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_309_TimeElapsed,
    });
    self.box_Gate_v3_66 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2035826768");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_66_Out,
    });
    self.box_EntityStatusListener_56 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2040380584");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_56_Loaded,
    });
    self.box_ProximityRadiusListener_v3_244 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2043304973");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_244_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_244_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_244_SomeoneNear,
    });
    self.box_EntityStatusListener_25 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2054782132");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_25_Loaded,
    });
    self.box_Gate_v3_100 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2054883569");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_100_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_100_Out,
    });
    self.box_MultipleOR_264 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2065153738");
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
        [0] = self.f_box_MultipleOR_264_Out,
    });
    self.box_Gate_v3_194 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2065243803");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_194_Out,
    });
    self.box_OnceOnly_v3_223 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2080074391");
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
                [0] = self.f_box_OnceOnly_v3_223_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_340 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_340;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2091098154");
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
        [0] = self.f_box_MultipleOR_340_Out,
    });
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2095086458");
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_260 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2097011119");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_260_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_260_TimeElapsed,
    });
    self.box_OnceOnly_v3_188 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2139555733");
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
                [0] = self.f_box_OnceOnly_v3_188_Out_0,
            },
            count = 1,
        },
    });
end;

function export:Combat_Started()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_307();
    l0 = self.box_ProximityTrigger_v2_307;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1405906838", "1405906838", "Intro_010_B20_NpcMovement", "Combat_Started", "box_ProximityTrigger_v2_307.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UseContextualActionModifier_v3_335();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1496185980", "1496185980", "Intro_010_B20_NpcMovement", "Combat_Started", "box_UseContextualActionModifier_v3_335.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:Disable_Fence_SyncSTP()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1223677660", "1223677660", "Intro_010_B20_NpcMovement", "Disable_Fence_SyncSTP", "box_Delay_v5_24.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1636533754", "1636533754", "Intro_010_B20_NpcMovement", "Disable_Fence_SyncSTP", "box_Delay_v5_40.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:Enable_FollowBehavior()
    local params, l0;
    l0 = self.box_OnceOnly_v3_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1309233464", "1309233464", "Intro_010_B20_NpcMovement", "Enable_FollowBehavior", "box_OnceOnly_v3_182.In", self, l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_ProximityTrigger_v2_325();
    l0 = self.box_ProximityTrigger_v2_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1232264934", "1232264934", "Intro_010_B20_NpcMovement", "Enable_FollowBehavior", "box_ProximityTrigger_v2_325.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:End_Flamer_BurnSTP()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_120();
    l0 = self.box_Delay_v5_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2049969076", "2049969076", "Intro_010_B20_NpcMovement", "End_Flamer_BurnSTP", "box_Delay_v5_120.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:Gates_Closed()
    local params, l0;
    params = self:OnEnter_box_MultipleAND_v2_57();
    l0 = self.box_MultipleAND_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|616519302", "616519302", "Intro_010_B20_NpcMovement", "Gates_Closed", "box_MultipleAND_v2_57.Condition", self, l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_41();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|110712440", "110712440", "Intro_010_B20_NpcMovement", "In", "box_GetPlayerGroup_v2_41.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:Move_Npc_ToChurch()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_271();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1484597925", "1484597925", "Intro_010_B20_NpcMovement", "Move_Npc_ToChurch", "box_Simple_Node_271.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Move_Npc_ToGate_1()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1184019717", "1184019717", "Intro_010_B20_NpcMovement", "Move_Npc_ToGate_1", "box_Simple_Node_273.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Move_Npc_ToGate_2()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|156774147", "156774147", "Intro_010_B20_NpcMovement", "Move_Npc_ToGate_2", "box_Simple_Node_272.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Start_Flamer_BurnSTP()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_327();
    l0 = self.box_EntityStatusListener_327;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2045916133", "2045916133", "Intro_010_B20_NpcMovement", "Start_Flamer_BurnSTP", "box_EntityStatusListener_327.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_271_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_86();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|832982078", "832982078", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_UseContextualActionModifier_v3_86.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|761099094", "761099094", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_MultipleOR_264.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|866472374", "866472374", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_UseContextualActionModifier_v3_326();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1304014676", "1304014676", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_UseContextualActionModifier_v3_326.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_237();
    l0 = self.box_Gate_v3_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|334373370", "334373370", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_237.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_UseContextualActionModifier_v3_106();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1132154233", "1132154233", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_UseContextualActionModifier_v3_106.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|868325542", "868325542", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_101.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_76();
    l0 = self.box_Gate_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1257918541", "1257918541", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_76.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_255();
    l0 = self.box_Gate_v3_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2098477295", "2098477295", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_255.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_216();
    l0 = self.box_Gate_v3_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|851859149", "851859149", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_216.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1883373317", "1883373317", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_104.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|484896114", "484896114", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_MultipleOR_254.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_Gate_v3_66();
    l0 = self.box_Gate_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|400913214", "400913214", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_66.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_194();
    l0 = self.box_Gate_v3_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1400336670", "1400336670", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_194.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_70();
    l0 = self.box_Gate_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|111061760", "111061760", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_70.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_89();
    l0 = self.box_Gate_v3_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|632069409", "632069409", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_89.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|247085619", "247085619", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Gate_v3_247();
    l0 = self.box_Gate_v3_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1437575100", "1437575100", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_247.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_196();
    l0 = self.box_Gate_v3_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|777364368", "777364368", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_196.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|667165935", "667165935", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_43.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_74();
    l0 = self.box_Gate_v3_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1014605104", "1014605104", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_74.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_248();
    l0 = self.box_Gate_v3_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1548439989", "1548439989", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_248.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_UseContextualActionModifier_v3_252();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1052514343", "1052514343", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_UseContextualActionModifier_v3_252.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_202();
    l0 = self.box_Gate_v3_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|600762682", "600762682", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_202.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_249();
    l0 = self.box_Gate_v3_249;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1043726955", "1043726955", "Intro_010_B20_NpcMovement", "box_Simple_Node_271.Out", "box_Gate_v3_249.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_273_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_100();
    l0 = self.box_Gate_v3_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1429936278", "1429936278", "Intro_010_B20_NpcMovement", "box_Simple_Node_273.Out", "box_Gate_v3_100.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|368136350", "368136350", "Intro_010_B20_NpcMovement", "box_Simple_Node_273.Out", "box_MultipleOR_254.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Gate_v3_109();
    l0 = self.box_Gate_v3_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2028592187", "2028592187", "Intro_010_B20_NpcMovement", "box_Simple_Node_273.Out", "box_Gate_v3_109.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|205316454", "205316454", "Intro_010_B20_NpcMovement", "box_Simple_Node_273.Out", "box_MultipleOR_264.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_OnceOnly_v3_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1995260174", "1995260174", "Intro_010_B20_NpcMovement", "box_Simple_Node_273.Out", "box_OnceOnly_v3_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_272_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_111();
    l0 = self.box_Gate_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|493535766", "493535766", "Intro_010_B20_NpcMovement", "box_Simple_Node_272.Out", "box_Gate_v3_111.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_120_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_122();
    l0 = self.box_Delay_v5_120;
    l1 = self.box_Delay_v5_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|678083527", "678083527", "Intro_010_B20_NpcMovement", "box_Delay_v5_120.Started", "box_Delay_v5_122.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_120_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_121();
    l0 = self.box_Delay_v5_120;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1665139365", "1665139365", "Intro_010_B20_NpcMovement", "box_Delay_v5_120.TimeElapsed", "box_UseContextualActionModifier_v3_121.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_62_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2063508872", "2063508872", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_62.Disabled", "box_UseContextualActionModifier_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_62_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_62();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|244511698", "244511698", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_62.Enabled", "box_UseContextualActionModifier_v3_62.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_62_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1251259770", "1251259770", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_62.UseCalled", "box_Delay_v5_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_327_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_116();
    l0 = self.box_EntityStatusListener_327;
    l1 = self.box_Delay_v5_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|34337004", "34337004", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_327.Loaded", "box_Delay_v5_116.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CreateVector3_171_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_171_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_178();
    l0 = self.box_PositionModifier_v2_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2051832186", "2051832186", "Intro_010_B20_NpcMovement", "box_CreateVector3_171.Out", "box_PositionModifier_v2_178.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_305_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_315();
    l0 = self.box_RemoveEntity_v2_305;
    l1 = self.box_RemoveEntity_v2_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|360580426", "360580426", "Intro_010_B20_NpcMovement", "box_RemoveEntity_v2_305.Out", "box_RemoveEntity_v2_315.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_172_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_164();
    l0 = self.box_ProximityTrigger_v2_172;
    l1 = self.box_Gate_v3_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1790178064", "1790178064", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_172.Disabled", "box_Gate_v3_164.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_172_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_136();
    l0 = self.box_ProximityTrigger_v2_172;
    l1 = self.box_ProximityTrigger_v2_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2103647459", "2103647459", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_172.Enabled", "box_ProximityTrigger_v2_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_172_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_164();
    l0 = self.box_ProximityTrigger_v2_172;
    l1 = self.box_Gate_v3_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1237054028", "1237054028", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_172.Enter", "box_Gate_v3_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_181_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_173();
    l0 = self.box_Bind_v4_181;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1083549454", "1083549454", "Intro_010_B20_NpcMovement", "box_Bind_v4_181.Bound", "box_OutputOrder_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_333_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_190();
    l0 = self.box_MultipleOR_333;
    l1 = self.box_ProximityRadiusListener_v3_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1848418934", "1848418934", "Intro_010_B20_NpcMovement", "box_MultipleOR_333.Out", "box_ProximityRadiusListener_v3_190.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_130_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_147();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2070670532", "2070670532", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_130.Disabled", "box_UseContextualActionModifier_v3_147.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_252_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_251();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|967325148", "967325148", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_252.Disabled", "box_UseContextualActionModifier_v3_251.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_252_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_252();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|689980166", "689980166", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_252.Enabled", "box_UseContextualActionModifier_v3_252.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_94_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_94();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|96086038", "96086038", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_94.Enabled", "box_UseContextualActionModifier_v3_94.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_64_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_59();
    l0 = self.box_ProximityRadiusListener_v3_64;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1139785217", "1139785217", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_64.SomeoneNear", "box_SetContextualStrategy_59.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_339_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_336();
    l0 = self.box_Delay_v5_339;
    l1 = self.box_ProximityRadiusListener_v3_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|316832499", "316832499", "Intro_010_B20_NpcMovement", "box_Delay_v5_339.Stopped", "box_ProximityRadiusListener_v3_336.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_339_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_339;
    l1 = self.box_MultipleOR_340;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1491913848", "1491913848", "Intro_010_B20_NpcMovement", "box_Delay_v5_339.TimeElapsed", "box_MultipleOR_340.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_242_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|998299278", "998299278", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_242.Out", "box_MultipleOR_217.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_242_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_200();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|174100659", "174100659", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_242.Out", "box_UseContextualActionModifier_v3_200.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_72_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_72();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|222520479", "222520479", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_72.Enabled", "box_UseContextualActionModifier_v3_72.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_63_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_46();
    l0 = self.box_ProximityTrigger_v2_63;
    l1 = self.box_ProximityRadiusListener_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|696373605", "696373605", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_63.Enabled", "box_ProximityRadiusListener_v3_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_63_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_ProximityTrigger_v2_63;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1183150116", "1183150116", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_63.Enter", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_205_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_265();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|462564681", "462564681", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_205.Disabled", "box_UseContextualActionModifier_v3_265.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_148_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_158();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1153795692", "1153795692", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_148.Disabled", "box_UseContextualActionModifier_v3_158.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_270_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_266();
    l0 = self.box_EntityStatusListener_270;
    l1 = self.box_EntityStatusListener_266;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1985649756", "1985649756", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_270.Enabled", "box_EntityStatusListener_266.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_270_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_260();
    l0 = self.box_EntityStatusListener_270;
    l1 = self.box_Delay_v5_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|540215515", "540215515", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_270.Loaded", "box_Delay_v5_260.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_107_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_107();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1948953467", "1948953467", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_107.Enabled", "box_UseContextualActionModifier_v3_107.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_78();
    l0 = self.box_EntityStatusListener_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|693017096", "693017096", "Intro_010_B20_NpcMovement", "box_Simple_Node_105.Out", "box_EntityStatusListener_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_207_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_207();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1947679679", "1947679679", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_207.Enabled", "box_UseContextualActionModifier_v3_207.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_136_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_172();
    l0 = self.box_ProximityTrigger_v2_136;
    l1 = self.box_ProximityTrigger_v2_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|15069467", "15069467", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_136.Disabled", "box_ProximityTrigger_v2_172.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_136_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_190();
    l0 = self.box_ProximityTrigger_v2_136;
    l1 = self.box_ProximityRadiusListener_v3_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|659243049", "659243049", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_136.Enabled", "box_ProximityRadiusListener_v3_190.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_136_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_186();
    l0 = self.box_ProximityTrigger_v2_136;
    l1 = self.box_Gate_v3_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1512916412", "1512916412", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_136.Enter", "box_Gate_v3_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_167_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_183();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2143035027", "2143035027", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_167.Disabled", "box_UseContextualActionModifier_v3_183.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_312_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_312;
    l1 = self.box_OnceOnly_v3_314;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2049850366", "2049850366", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_312.Disabled", "box_OnceOnly_v3_314.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_312_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_312;
    l1 = self.box_MultipleOR_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1881082040", "1881082040", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_312.SomeoneNear", "box_MultipleOR_298.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_187_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_187;
    l1 = self.box_OnceOnly_v3_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2054814774", "2054814774", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_187.Loaded", "box_OnceOnly_v3_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_326_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_97();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1521885206", "1521885206", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_326.Disabled", "box_UseContextualActionModifier_v3_97.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_331_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_332();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1079229174", "1079229174", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_331.Disabled", "box_UseContextualActionModifier_v3_332.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_331_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_330();
    l0 = self.box_Delay_v5_330;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1862693214", "1862693214", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_331.ForceNormalEndCalled", "box_Delay_v5_330.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_198_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_252();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1247905904", "1247905904", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_198.Disabled", "box_UseContextualActionModifier_v3_252.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_329_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_331();
    l0 = self.box_ProximityRadiusListener_v3_329;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|477737034", "477737034", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_329.SomeoneNear", "box_UseContextualActionModifier_v3_331.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_47_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_74();
    l0 = self.box_ProximityRadiusListener_v3_47;
    l1 = self.box_Gate_v3_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1961463897", "1961463897", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_47.SomeoneNear", "box_Gate_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_69();
    l0 = self.box_Gate_v3_89;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|151693158", "151693158", "Intro_010_B20_NpcMovement", "box_Gate_v3_89.Out", "box_UseContextualActionModifier_v3_69.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_5_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_282();
    l0 = self.box_ProximityTrigger_v2_5;
    l1 = self.box_SpawnAI_282;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|732866003", "732866003", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_5.Enter", "box_SpawnAI_282.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_287_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_281();
    l0 = self.box_ProximityRadiusListener_v3_287;
    l1 = self.box_Delay_v5_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1279723235", "1279723235", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_287.Enabled", "box_Delay_v5_281.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_287_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_287;
    l1 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|788851324", "788851324", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_287.SomeoneFar", "box_MultipleOR_295.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_41_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_42();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1793625812", "1793625812", "Intro_010_B20_NpcMovement", "box_GetPlayerGroup_v2_41.Out", "box_GetLocalPlayer_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_219();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|297673975", "297673975", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_238.Out", "box_UseContextualActionModifier_v3_219.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_51();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1162148317", "1162148317", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_50.Out", "box_UseContextualActionModifier_v3_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1349389644", "1349389644", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_50.Out", "box_ProximityRadiusListener_v3_44.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_94();
    l0 = self.box_Gate_v3_76;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1311431251", "1311431251", "Intro_010_B20_NpcMovement", "box_Gate_v3_76.Out", "box_UseContextualActionModifier_v3_94.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_180_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_181();
    l0 = self.box_OnceOnly_v3_180;
    l1 = self.box_Bind_v4_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|128412919", "128412919", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_180.Out", "box_Bind_v4_181.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_236_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_236();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|510848741", "510848741", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_236.Enabled", "box_UseContextualActionModifier_v3_236.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_282_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_274();
    l0 = self.box_SpawnAI_282;
    l1 = self.box_SpawnAI_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1829236017", "1829236017", "Intro_010_B20_NpcMovement", "box_SpawnAI_282.Out", "box_SpawnAI_274.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_97_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_71();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|693045268", "693045268", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_97.Disabled", "box_UseContextualActionModifier_v3_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_121_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_118();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|94074897", "94074897", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_121.Disabled", "box_UseContextualActionModifier_v3_118.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_251_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_251();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|303120620", "303120620", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_251.Enabled", "box_UseContextualActionModifier_v3_251.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_256_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_256();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|832134423", "832134423", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_256.Enabled", "box_UseContextualActionModifier_v3_256.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_222_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_262();
    l0 = self.box_OnceOnly_v3_222;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|409181372", "409181372", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_222.Out", "box_UseContextualActionModifier_v3_262.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_99();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_ProximityRadiusListener_v3_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1307127268", "1307127268", "Intro_010_B20_NpcMovement", "box_MultipleOR_98.Out", "box_ProximityRadiusListener_v3_99.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_62();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|246610833", "246610833", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_28.Disabled", "box_UseContextualActionModifier_v3_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_88_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_88;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|210434795", "210434795", "Intro_010_B20_NpcMovement", "box_Delay_v5_88.TimeElapsed", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_53_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_ProximityTrigger_v2_53;
    l1 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|76362565", "76362565", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_53.Enabled", "box_ProximityRadiusListener_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_53_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = self.box_ProximityTrigger_v2_53;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|526743119", "526743119", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_53.Enter", "box_UseContextualActionModifier_v3_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_257_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_211();
    l0 = self.box_EntityStatusListener_257;
    l1 = self.box_ProximityRadiusListener_v3_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1575313514", "1575313514", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_257.Loaded", "box_ProximityRadiusListener_v3_211.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_82_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_89();
    l0 = self.box_Gate_v3_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1007477544", "1007477544", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_82.Disabled", "box_Gate_v3_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_82_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_82();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1283269043", "1283269043", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_82.Enabled", "box_UseContextualActionModifier_v3_82.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_300_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_300();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1535595707", "1535595707", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_300.Enabled", "box_UseContextualActionModifier_v3_300.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_317_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_312();
    l0 = self.box_LookAtTrigger_v2_317;
    l1 = self.box_ProximityRadiusListener_v3_312;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|596085911", "596085911", "Intro_010_B20_NpcMovement", "box_LookAtTrigger_v2_317.Enabled", "box_ProximityRadiusListener_v3_312.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_317_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_317;
    l1 = self.box_MultipleOR_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|223643785", "223643785", "Intro_010_B20_NpcMovement", "box_LookAtTrigger_v2_317.EnterFOV", "box_MultipleOR_298.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_281_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_281;
    l1 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|795838131", "795838131", "Intro_010_B20_NpcMovement", "box_Delay_v5_281.TimeElapsed", "box_MultipleOR_295.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_301_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_292();
    l0 = self.box_SpawnAI_301;
    l1 = self.box_SpawnAI_292;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1147387636", "1147387636", "Intro_010_B20_NpcMovement", "box_SpawnAI_301.Out", "box_SpawnAI_292.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_42_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_42_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_81();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|26053406", "26053406", "Intro_010_B20_NpcMovement", "box_GetLocalPlayer_v2_42.Out", "box_SetEntity_v2_81.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_117_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_115();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|384001588", "384001588", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_117.Disabled", "box_UseContextualActionModifier_v3_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_117_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_117();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1168722989", "1168722989", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_117.Enabled", "box_UseContextualActionModifier_v3_117.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_117_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_122();
    l0 = self.box_Delay_v5_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1710319607", "1710319607", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_117.UseCalled", "box_Delay_v5_122.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_78_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_92();
    l0 = self.box_EntityStatusListener_78;
    l1 = self.box_EntityStatusListener_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1712910849", "1712910849", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_78.Enabled", "box_EntityStatusListener_92.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_78_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_47();
    l0 = self.box_EntityStatusListener_78;
    l1 = self.box_ProximityRadiusListener_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|876804701", "876804701", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_78.Loaded", "box_ProximityRadiusListener_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_67_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_56();
    l0 = self.box_EntityStatusListener_67;
    l1 = self.box_EntityStatusListener_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1618804888", "1618804888", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_67.Enabled", "box_EntityStatusListener_56.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_67_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_EntityStatusListener_67;
    l1 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|315129753", "315129753", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_67.Loaded", "box_Delay_v5_45.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_184_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_167();
    l0 = self.box_ProximityTrigger_v2_184;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2122643779", "2122643779", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_184.Disabled", "box_UseContextualActionModifier_v3_167.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_184_Enter()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_184();
    l0 = self.box_ProximityTrigger_v2_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1909795858", "1909795858", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_184.Enter", "box_ProximityTrigger_v2_184.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_212_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = self.box_ProximityRadiusListener_v3_212;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|391158857", "391158857", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_212.Disabled", "box_OutputOrder_v2_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_212_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_212();
    l0 = self.box_ProximityRadiusListener_v3_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2134313342", "2134313342", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_212.SomeoneNear", "box_ProximityRadiusListener_v3_212.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_254_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_254;
    l1 = self.box_OnceOnly_v3_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|251361611", "251361611", "Intro_010_B20_NpcMovement", "box_MultipleOR_254.Out", "box_OnceOnly_v3_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_193_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_249();
    l0 = self.box_Gate_v3_249;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2146007439", "2146007439", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_193.Disabled", "box_Gate_v3_249.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_249_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_199();
    l0 = self.box_Gate_v3_249;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|139844586", "139844586", "Intro_010_B20_NpcMovement", "box_Gate_v3_249.Out", "box_UseContextualActionModifier_v3_199.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_283_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_305();
    l0 = self.box_ProximityTrigger_v2_283;
    l1 = self.box_RemoveEntity_v2_305;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|272771371", "272771371", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_283.Enter", "box_RemoveEntity_v2_305.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|249756357", "249756357", "Intro_010_B20_NpcMovement", "box_Simple_Node_95.Out", "box_EntityStatusListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_37_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_65();
    l0 = self.box_ProximityTrigger_v2_37;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1049660502", "1049660502", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_37.Enter", "box_UseContextualActionModifier_v3_65.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_290_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_275();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1276778285", "1276778285", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_290.Disabled", "box_UseContextualActionModifier_v3_275.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_293_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_289();
    l0 = self.box_Delay_v5_293;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1033116699", "1033116699", "Intro_010_B20_NpcMovement", "box_Delay_v5_293.TimeElapsed", "box_SetContextualStrategy_289.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_255_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_193();
    l0 = self.box_Gate_v3_255;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1171072600", "1171072600", "Intro_010_B20_NpcMovement", "box_Gate_v3_255.Out", "box_UseContextualActionModifier_v3_193.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_217_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_269();
    l0 = self.box_MultipleOR_217;
    l1 = self.box_ProximityRadiusListener_v3_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|678663286", "678663286", "Intro_010_B20_NpcMovement", "box_MultipleOR_217.Out", "box_ProximityRadiusListener_v3_269.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_22_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1177302173", "1177302173", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_22.Enabled", "box_UseContextualActionModifier_v3_22.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_22_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|559552768", "559552768", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_22.UseCalled", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_15_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_15;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|767540194", "767540194", "Intro_010_B20_NpcMovement", "box_PlayDialog_v6_15.Finished", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_6_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_6;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1423406187", "1423406187", "Intro_010_B20_NpcMovement", "box_GroupSizeListener_v5_6.MemberRemoved", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_80();
    l0 = self.box_Gate_v3_104;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1353384858", "1353384858", "Intro_010_B20_NpcMovement", "box_Gate_v3_104.Out", "box_UseContextualActionModifier_v3_80.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_83_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_67();
    l0 = self.box_EntityStatusListener_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|784503216", "784503216", "Intro_010_B20_NpcMovement", "box_Simple_Node_83.Out", "box_EntityStatusListener_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_303_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_300();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1109581324", "1109581324", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_303.Disabled", "box_UseContextualActionModifier_v3_300.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_155_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_170();
    l0 = self.box_ProximityTrigger_v2_155;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1232350007", "1232350007", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_155.Enter", "box_UseContextualActionModifier_v3_170.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_219_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_215();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|891700820", "891700820", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_219.Disabled", "box_UseContextualActionModifier_v3_215.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_110_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_113();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1293088665", "1293088665", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_110.Disabled", "box_UseContextualActionModifier_v3_113.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_316_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_288();
    l0 = self.box_ProximityTrigger_v2_316;
    l1 = self.box_SpawnAI_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1180381826", "1180381826", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_316.Disabled", "box_SpawnAI_288.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_316_Enter()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_316();
    l0 = self.box_ProximityTrigger_v2_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1368199406", "1368199406", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_316.Enter", "box_ProximityTrigger_v2_316.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_49_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_49();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1585561792", "1585561792", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_49.Enabled", "box_UseContextualActionModifier_v3_49.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_49_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_48();
    l0 = self.box_ProximityRadiusListener_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1924256090", "1924256090", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_49.UseCalled", "box_ProximityRadiusListener_v3_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_35_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|56676476", "56676476", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_35.Disabled", "box_UseContextualActionModifier_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1037663171", "1037663171", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_35.Enabled", "box_UseContextualActionModifier_v3_35.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_35_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_57();
    l0 = self.box_MultipleAND_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|26782710", "26782710", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_35.UseCalled", "box_MultipleAND_v2_57.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_UseContextualActionModifier_v3_134_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_130();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|376474790", "376474790", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_134.Disabled", "box_UseContextualActionModifier_v3_130.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_158_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_158();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1680358018", "1680358018", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_158.Enabled", "box_UseContextualActionModifier_v3_158.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_158_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_158();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2032912669", "2032912669", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_158.InterruptCalled", "box_UseContextualActionModifier_v3_158.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_158_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_141();
    l0 = self.box_EntityStatusListener_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1263772547", "1263772547", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_158.UseCalled", "box_EntityStatusListener_141.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_111_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_82();
    l0 = self.box_Gate_v3_111;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|527525031", "527525031", "Intro_010_B20_NpcMovement", "box_Gate_v3_111.Closed", "box_UseContextualActionModifier_v3_82.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_82();
    l0 = self.box_Gate_v3_111;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1084515905", "1084515905", "Intro_010_B20_NpcMovement", "box_Gate_v3_111.Out", "box_UseContextualActionModifier_v3_82.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|803750133", "803750133", "Intro_010_B20_NpcMovement", "box_Delay_v5_40.TimeElapsed", "box_UseContextualActionModifier_v3_32.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_77_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_77();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|726826385", "726826385", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_77.Enabled", "box_UseContextualActionModifier_v3_77.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_32_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_26();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1832438563", "1832438563", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_32.Disabled", "box_UseContextualActionModifier_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_32_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1943991244", "1943991244", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_32.Enabled", "box_UseContextualActionModifier_v3_32.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_107();
    l0 = self.box_Gate_v3_70;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1166062568", "1166062568", "Intro_010_B20_NpcMovement", "box_Gate_v3_70.Out", "box_UseContextualActionModifier_v3_107.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_192_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_192();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1547677462", "1547677462", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_192.Enabled", "box_UseContextualActionModifier_v3_192.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_165_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_155();
    l0 = self.box_ProximityTrigger_v2_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|146435894", "146435894", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_165.Disabled", "box_ProximityTrigger_v2_155.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_1();
    l0 = self.box_MultipleAND_v2_4;
    l1 = self.box_LookAtTrigger_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|578471996", "578471996", "Intro_010_B20_NpcMovement", "box_MultipleAND_v2_4.Out", "box_LookAtTrigger_v2_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_113_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_72();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1713793580", "1713793580", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_113.Disabled", "box_UseContextualActionModifier_v3_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_115();
    l0 = self.box_MultipleOR_96;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|972671404", "972671404", "Intro_010_B20_NpcMovement", "box_MultipleOR_96.Out", "box_UseContextualActionModifier_v3_115.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_36_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|65183905", "65183905", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_36.Disabled", "box_UseContextualActionModifier_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1288147784", "1288147784", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_36.Enabled", "box_UseContextualActionModifier_v3_36.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_36_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1533955346", "1533955346", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_36.UseCalled", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_261_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_208();
    l0 = self.box_Delay_v5_261;
    l1 = self.box_ProximityRadiusListener_v3_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1309480248", "1309480248", "Intro_010_B20_NpcMovement", "box_Delay_v5_261.TimeElapsed", "box_ProximityRadiusListener_v3_208.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_175_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_179();
    l0 = self.box_EntityStatusListener_175;
    l1 = self.box_Delay_v5_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|456616703", "456616703", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_175.Loaded", "box_Delay_v5_179.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_31();
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_ProximityTrigger_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|950443712", "950443712", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_38.Loaded", "box_ProximityTrigger_v2_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_232_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_244();
    l0 = self.box_MultipleOR_232;
    l1 = self.box_ProximityRadiusListener_v3_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2125209848", "2125209848", "Intro_010_B20_NpcMovement", "box_MultipleOR_232.Out", "box_ProximityRadiusListener_v3_244.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_221_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_237();
    l0 = self.box_Gate_v3_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|868271637", "868271637", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_221.Disabled", "box_Gate_v3_237.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_233_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_196();
    l0 = self.box_Gate_v3_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|80488064", "80488064", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_233.Disabled", "box_Gate_v3_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_322_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_311();
    l0 = self.box_RemoveEntity_v2_322;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|158490507", "158490507", "Intro_010_B20_NpcMovement", "box_RemoveEntity_v2_322.Out", "box_OutputOrder_v2_311.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_93_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_93();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1850878967", "1850878967", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_93.Enabled", "box_UseContextualActionModifier_v3_93.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_93_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_99();
    l0 = self.box_ProximityRadiusListener_v3_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1567794686", "1567794686", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_93.UseCalled", "box_ProximityRadiusListener_v3_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_328_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_192();
    l0 = self.box_Delay_v5_328;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1263441530", "1263441530", "Intro_010_B20_NpcMovement", "box_Delay_v5_328.TimeElapsed", "box_UseContextualActionModifier_v3_192.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_168_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_132();
    l0 = self.box_Bind_v4_168;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|204884748", "204884748", "Intro_010_B20_NpcMovement", "box_Bind_v4_168.Bound", "box_CreateVector3_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_332_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_332();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|114506672", "114506672", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_332.Enabled", "box_UseContextualActionModifier_v3_332.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_332_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_184();
    l0 = self.box_ProximityTrigger_v2_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|618654755", "618654755", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_332.UseCalled", "box_ProximityTrigger_v2_184.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|8192742", "8192742", "Intro_010_B20_NpcMovement", "box_Delay_v5_30.TimeElapsed", "box_PlayDialog_v6_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_231_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_214();
    l0 = self.box_EntityStatusListener_231;
    l1 = self.box_ProximityRadiusListener_v3_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1159221419", "1159221419", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_231.Loaded", "box_ProximityRadiusListener_v3_214.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_48();
    l0 = self.box_MultipleOR_34;
    l1 = self.box_ProximityRadiusListener_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1848725237", "1848725237", "Intro_010_B20_NpcMovement", "box_MultipleOR_34.Out", "box_ProximityRadiusListener_v3_48.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_247_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_253();
    l0 = self.box_Gate_v3_247;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2121291599", "2121291599", "Intro_010_B20_NpcMovement", "box_Gate_v3_247.Out", "box_UseContextualActionModifier_v3_253.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_294();
    l0 = self.box_ProximityTrigger_v2_294;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|303280330", "303280330", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_127.Out", "box_ProximityTrigger_v2_294.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_5();
    l0 = self.box_ProximityTrigger_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|481913518", "481913518", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_127.Out", "box_ProximityTrigger_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_246_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_213();
    l0 = self.box_MultipleOR_246;
    l1 = self.box_ProximityRadiusListener_v3_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|779419881", "779419881", "Intro_010_B20_NpcMovement", "box_MultipleOR_246.Out", "box_ProximityRadiusListener_v3_213.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_19_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_25();
    l0 = self.box_EntityStatusListener_19;
    l1 = self.box_EntityStatusListener_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|587365333", "587365333", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_19.Enabled", "box_EntityStatusListener_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_19_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    l0 = self.box_EntityStatusListener_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|23271066", "23271066", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_19.Loaded", "box_UseContextualActionModifier_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_44_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|387955483", "387955483", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_44.Disabled", "box_Delay_v5_58.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityRadiusListener_v3_44_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1920164693", "1920164693", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_44.SomeoneNear", "box_Delay_v5_58.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_73_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|51720758", "51720758", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_73.Disabled", "box_Gate_v3_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_179_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_187();
    l0 = self.box_Delay_v5_179;
    l1 = self.box_EntityStatusListener_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|776371045", "776371045", "Intro_010_B20_NpcMovement", "box_Delay_v5_179.TimeElapsed", "box_EntityStatusListener_187.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_69_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_69();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|137019089", "137019089", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_69.Enabled", "box_UseContextualActionModifier_v3_69.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_26_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_26();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|659405606", "659405606", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_26.Enabled", "box_UseContextualActionModifier_v3_26.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_26_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|891836176", "891836176", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_26.UseCalled", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_294_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_307();
    l0 = self.box_ProximityTrigger_v2_294;
    l1 = self.box_ProximityTrigger_v2_307;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1504683838", "1504683838", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_294.Enabled", "box_ProximityTrigger_v2_307.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_294_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_294;
    l1 = self.box_OnceOnly_v3_319;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|381327650", "381327650", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_294.Enter", "box_OnceOnly_v3_319.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_213_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_194();
    l0 = self.box_ProximityRadiusListener_v3_213;
    l1 = self.box_Gate_v3_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|104552736", "104552736", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_213.Disabled", "box_Gate_v3_194.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_213_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_231();
    l0 = self.box_ProximityRadiusListener_v3_213;
    l1 = self.box_EntityStatusListener_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1885145258", "1885145258", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_213.Enabled", "box_EntityStatusListener_231.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_213_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_213;
    l1 = self.box_MultipleOR_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1149439198", "1149439198", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_213.SomeoneNear", "box_MultipleOR_246.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_314_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_291();
    l0 = self.box_OnceOnly_v3_314;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1123827903", "1123827903", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_314.Out", "box_UseContextualActionModifier_v3_291.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_323_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_313();
    l0 = self.box_SpawnAI_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|757774410", "757774410", "Intro_010_B20_NpcMovement", "box_MissionBlockLayer_323.Disabled", "box_SpawnAI_313.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_277_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_316();
    l0 = self.box_RemoveEntity_v2_277;
    l1 = self.box_ProximityTrigger_v2_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1504880386", "1504880386", "Intro_010_B20_NpcMovement", "box_RemoveEntity_v2_277.Out", "box_ProximityTrigger_v2_316.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_265_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_248();
    l0 = self.box_Gate_v3_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1607095000", "1607095000", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_265.Disabled", "box_Gate_v3_248.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_65_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_55();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|758849570", "758849570", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_65.Disabled", "box_UseContextualActionModifier_v3_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_65_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_65();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1891086509", "1891086509", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_65.Enabled", "box_UseContextualActionModifier_v3_65.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_65_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_37();
    l0 = self.box_ProximityTrigger_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|904936751", "904936751", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_65.UseCalled", "box_ProximityTrigger_v2_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_52_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_ProximityRadiusListener_v3_52;
    l1 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1368062299", "1368062299", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_52.Disabled", "box_Gate_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_52_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_52();
    l0 = self.box_ProximityRadiusListener_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|129741949", "129741949", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_52.SomeoneNear", "box_ProximityRadiusListener_v3_52.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_266_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_261();
    l0 = self.box_EntityStatusListener_266;
    l1 = self.box_Delay_v5_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|893001621", "893001621", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_266.Loaded", "box_Delay_v5_261.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_61();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1816898039", "1816898039", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_54.Out", "box_UseContextualActionModifier_v3_61.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_201_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_328();
    l0 = self.box_Delay_v5_328;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2115767357", "2115767357", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_201.Disabled", "box_Delay_v5_328.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_126_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_209();
    l0 = self.box_EntityStatusListener_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1703346541", "1703346541", "Intro_010_B20_NpcMovement", "box_Simple_Node_126.Out", "box_EntityStatusListener_209.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_92_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_108();
    l0 = self.box_EntityStatusListener_92;
    l1 = self.box_EntityStatusListener_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2031190246", "2031190246", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_92.Enabled", "box_EntityStatusListener_108.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_92_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_91();
    l0 = self.box_EntityStatusListener_92;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|192833632", "192833632", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_92.Loaded", "box_UseContextualActionModifier_v3_91.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|703667167", "703667167", "Intro_010_B20_NpcMovement", "box_Delay_v5_16.TimeElapsed", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_259_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_270();
    l0 = self.box_EntityStatusListener_259;
    l1 = self.box_EntityStatusListener_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|106210157", "106210157", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_259.Enabled", "box_EntityStatusListener_270.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_259_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_227();
    l0 = self.box_EntityStatusListener_259;
    l1 = self.box_Delay_v5_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1935399791", "1935399791", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_259.Loaded", "box_Delay_v5_227.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_101_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_93();
    l0 = self.box_Gate_v3_101;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|212538848", "212538848", "Intro_010_B20_NpcMovement", "box_Gate_v3_101.Out", "box_UseContextualActionModifier_v3_93.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_195_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_195();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|444786630", "444786630", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_195.Enabled", "box_UseContextualActionModifier_v3_195.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_51_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_65();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|126527638", "126527638", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_51.Disabled", "box_UseContextualActionModifier_v3_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2024250746", "2024250746", "Intro_010_B20_NpcMovement", "box_MultipleOR_8.Out", "box_OnceOnly_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_118_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_119();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1011318226", "1011318226", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_118.Disabled", "box_UseContextualActionModifier_v3_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local l0;
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|348583997", "348583997", "Intro_010_B20_NpcMovement", "box_Delay_v5_21.TimeElapsed", "Start_Diags_Npc_Fence", l0:GetLuaBox(), self);
    self:Start_Diags_Npc_Fence();
end;

function export:f_box_UseContextualActionModifier_v3_275_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_275();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1406936456", "1406936456", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_275.Enabled", "box_UseContextualActionModifier_v3_275.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_291_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_309();
    l0 = self.box_Delay_v5_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|216034270", "216034270", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_291.Disabled", "box_Delay_v5_309.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_124_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_175();
    l0 = self.box_EntityStatusListener_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|812527759", "812527759", "Intro_010_B20_NpcMovement", "box_Simple_Node_124.Out", "box_EntityStatusListener_175.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_315_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_323();
    l0 = self.box_RemoveEntity_v2_315;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1179529635", "1179529635", "Intro_010_B20_NpcMovement", "box_RemoveEntity_v2_315.Out", "box_MissionBlockLayer_323.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_211_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_242();
    l0 = self.box_ProximityRadiusListener_v3_211;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|503433447", "503433447", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_211.Disabled", "box_OutputOrder_v2_242.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_211_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_211();
    l0 = self.box_ProximityRadiusListener_v3_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|685132579", "685132579", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_211.SomeoneNear", "box_ProximityRadiusListener_v3_211.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_31_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_ProximityTrigger_v2_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|166527462", "166527462", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_31.Enter", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_325_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_277();
    l0 = self.box_ProximityTrigger_v2_325;
    l1 = self.box_RemoveEntity_v2_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2147050466", "2147050466", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_325.Disabled", "box_RemoveEntity_v2_277.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_325_Enter()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_325();
    l0 = self.box_ProximityTrigger_v2_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1994968614", "1994968614", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_325.Enter", "box_ProximityTrigger_v2_325.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_114_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_114();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|477455259", "477455259", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_114.Enabled", "box_UseContextualActionModifier_v3_114.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_334_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|843197267", "843197267", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_334.Disabled", "box_MultipleOR_333.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_125_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_259();
    l0 = self.box_EntityStatusListener_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1111077310", "1111077310", "Intro_010_B20_NpcMovement", "box_Simple_Node_125.Out", "box_EntityStatusListener_259.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_10();
    l0 = self.box_ProximityRadiusListener_v3_12;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1188784211", "1188784211", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_12.Disabled", "box_RandomFloat_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_12_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_12();
    l0 = self.box_ProximityRadiusListener_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1136912744", "1136912744", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_12.SomeoneNear", "box_ProximityRadiusListener_v3_12.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_80_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_111();
    l0 = self.box_Gate_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2100884022", "2100884022", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_80.Disabled", "box_Gate_v3_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_116_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_116;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1445186149", "1445186149", "Intro_010_B20_NpcMovement", "box_Delay_v5_116.TimeElapsed", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = self.box_Gate_v3_43;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|177452182", "177452182", "Intro_010_B20_NpcMovement", "box_Gate_v3_43.Out", "box_UseContextualActionModifier_v3_23.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_263_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_263();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2055402312", "2055402312", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_263.Enabled", "box_UseContextualActionModifier_v3_263.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_73();
    l0 = self.box_Gate_v3_74;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2018509805", "2018509805", "Intro_010_B20_NpcMovement", "box_Gate_v3_74.Out", "box_UseContextualActionModifier_v3_73.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_147_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_147();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|235647196", "235647196", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_147.Enabled", "box_UseContextualActionModifier_v3_147.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_79_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_109();
    l0 = self.box_ProximityRadiusListener_v3_79;
    l1 = self.box_Gate_v3_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|341223704", "341223704", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_79.Disabled", "box_Gate_v3_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_79_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_79();
    l0 = self.box_ProximityRadiusListener_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1052587520", "1052587520", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_79.SomeoneNear", "box_ProximityRadiusListener_v3_79.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_298_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_312();
    l0 = self.box_MultipleOR_298;
    l1 = self.box_ProximityRadiusListener_v3_312;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|79587526", "79587526", "Intro_010_B20_NpcMovement", "box_MultipleOR_298.Out", "box_ProximityRadiusListener_v3_312.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_313_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_301();
    l0 = self.box_SpawnAI_313;
    l1 = self.box_SpawnAI_301;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|802766655", "802766655", "Intro_010_B20_NpcMovement", "box_SpawnAI_313.Out", "box_SpawnAI_301.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_173_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_176();
    l0 = self.box_Bind_v4_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|153738980", "153738980", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_173.Out", "box_Bind_v4_176.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_173_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_168();
    l0 = self.box_Bind_v4_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1441842522", "1441842522", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_173.Out", "box_Bind_v4_168.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_177_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_166();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1603000197", "1603000197", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_177.Disabled", "box_UseContextualActionModifier_v3_166.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_119_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_119();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|880132856", "880132856", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_119.Enabled", "box_UseContextualActionModifier_v3_119.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_170_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_185();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|571119737", "571119737", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_170.Disabled", "box_UseContextualActionModifier_v3_185.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_170_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_170();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2126518716", "2126518716", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_170.Enabled", "box_UseContextualActionModifier_v3_170.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_170_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_165();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1788478139", "1788478139", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_170.UseCalled", "box_UseContextualActionModifier_v3_165.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_87_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_76();
    l0 = self.box_Gate_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|294754706", "294754706", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_87.Disabled", "box_Gate_v3_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_284_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_297();
    l0 = self.box_OnceOnly_v3_284;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|4178110", "4178110", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_284.Out", "box_SetContextualStrategy_297.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_227_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_269();
    l0 = self.box_Delay_v5_227;
    l1 = self.box_ProximityRadiusListener_v3_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|173285187", "173285187", "Intro_010_B20_NpcMovement", "box_Delay_v5_227.Started", "box_ProximityRadiusListener_v3_269.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_227_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_227;
    l1 = self.box_MultipleOR_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|436723909", "436723909", "Intro_010_B20_NpcMovement", "box_Delay_v5_227.TimeElapsed", "box_MultipleOR_217.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_285_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_278();
    l0 = self.box_ProximityTrigger_v2_285;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1692255183", "1692255183", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_285.Enter", "box_SetContextualStrategy_278.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_132_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_132_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_163();
    l0 = self.box_PositionModifier_v2_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2143318267", "2143318267", "Intro_010_B20_NpcMovement", "box_CreateVector3_132.Out", "box_PositionModifier_v2_163.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_324_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_308();
    l0 = self.box_ProximityTrigger_v2_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1958230514", "1958230514", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_324.Out", "box_ProximityTrigger_v2_308.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_324_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_321();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|228635653", "228635653", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_324.Out", "box_UseContextualActionModifier_v3_321.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_13();
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_Switch_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|309349149", "309349149", "Intro_010_B20_NpcMovement", "box_PlayDialog_v6_11.Started", "box_Switch_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_245_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_228();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|46265143", "46265143", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_245.Disabled", "box_UseContextualActionModifier_v3_228.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_268_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_202();
    l0 = self.box_Gate_v3_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|425669712", "425669712", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_268.Disabled", "box_Gate_v3_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_12();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_ProximityRadiusListener_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1473502973", "1473502973", "Intro_010_B20_NpcMovement", "box_MultipleOR_14.Out", "box_ProximityRadiusListener_v3_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_86_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_110();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1516225983", "1516225983", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_86.Disabled", "box_UseContextualActionModifier_v3_110.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_310_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_317();
    l0 = self.box_LookAtTrigger_v2_317;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|121247054", "121247054", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_310.Out", "box_LookAtTrigger_v2_317.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_310_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_293();
    l0 = self.box_Delay_v5_293;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1156185907", "1156185907", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_310.Out", "box_Delay_v5_293.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1649765155", "1649765155", "Intro_010_B20_NpcMovement", "box_Simple_Node_103.Out", "box_EntityStatusListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_208_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_197();
    l0 = self.box_ProximityRadiusListener_v3_208;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|958543790", "958543790", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_208.Disabled", "box_UseContextualActionModifier_v3_197.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_208_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_208();
    l0 = self.box_ProximityRadiusListener_v3_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|853319700", "853319700", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_208.SomeoneNear", "box_ProximityRadiusListener_v3_208.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_321_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_303();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|797871853", "797871853", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_321.Disabled", "box_UseContextualActionModifier_v3_303.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_214_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_229();
    l0 = self.box_ProximityRadiusListener_v3_214;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1019702470", "1019702470", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_214.Disabled", "box_OutputOrder_v2_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_214_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_214();
    l0 = self.box_ProximityRadiusListener_v3_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2058799162", "2058799162", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_214.SomeoneNear", "box_ProximityRadiusListener_v3_214.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_237_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_226();
    l0 = self.box_Gate_v3_237;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|599797674", "599797674", "Intro_010_B20_NpcMovement", "box_Gate_v3_237.Out", "box_UseContextualActionModifier_v3_226.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_137_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_151();
    l0 = self.box_EntityStatusListener_137;
    l1 = self.box_TeleportPawns_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|915104632", "915104632", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_137.Loaded", "box_TeleportPawns_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|930042009", "930042009", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_3.Enabled", "box_EntityStatusListener_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_4();
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_MultipleAND_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2139895437", "2139895437", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_3.Loaded", "box_MultipleAND_v2_4.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ProximityRadiusListener_v3_85_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_ProximityRadiusListener_v3_85;
    l1 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|505270211", "505270211", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_85.SomeoneNear", "box_Gate_v3_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_230_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_212();
    l0 = self.box_EntityStatusListener_230;
    l1 = self.box_ProximityRadiusListener_v3_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1092686834", "1092686834", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_230.Loaded", "box_ProximityRadiusListener_v3_212.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_138_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_148();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|792929711", "792929711", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_138.Disabled", "box_UseContextualActionModifier_v3_148.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|517733460", "517733460", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_337.Out", "End_Diags_Npc_Fence", clone:GetLuaBox(), self);
    self:End_Diags_Npc_Fence();
end;

function export:f_box_OutputOrder_v2_337_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_336();
    l0 = self.box_ProximityRadiusListener_v3_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1390305979", "1390305979", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_337.Out", "box_ProximityRadiusListener_v3_336.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_84_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_70();
    l0 = self.box_Gate_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|205111042", "205111042", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_84.Disabled", "box_Gate_v3_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_84_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_84();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2010596772", "2010596772", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_84.Enabled", "box_UseContextualActionModifier_v3_84.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_183_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_172();
    l0 = self.box_ProximityTrigger_v2_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1477980954", "1477980954", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_183.Disabled", "box_ProximityTrigger_v2_172.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = self.box_MultipleAND_v2_57;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1152948740", "1152948740", "Intro_010_B20_NpcMovement", "box_MultipleAND_v2_57.Out", "box_UseContextualActionModifier_v3_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_336_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_336;
    l1 = self.box_MultipleOR_340;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1552454509", "1552454509", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_336.AllFar", "box_MultipleOR_340.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_336_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_339();
    l0 = self.box_ProximityRadiusListener_v3_336;
    l1 = self.box_Delay_v5_339;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|385823623", "385823623", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_336.Enabled", "box_Delay_v5_339.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_91_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_85();
    l0 = self.box_ProximityRadiusListener_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|373706941", "373706941", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_91.UseCalled", "box_ProximityRadiusListener_v3_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_123_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_137();
    l0 = self.box_EntityStatusListener_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|782825753", "782825753", "Intro_010_B20_NpcMovement", "box_Simple_Node_123.Out", "box_EntityStatusListener_137.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_23_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_66();
    l0 = self.box_Gate_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|276317063", "276317063", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_23.Disabled", "box_Gate_v3_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2078801910", "2078801910", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_20.Out", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_108_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_79();
    l0 = self.box_EntityStatusListener_108;
    l1 = self.box_ProximityRadiusListener_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1995453234", "1995453234", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_108.Loaded", "box_ProximityRadiusListener_v3_79.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_6();
    l0 = self.box_LookAtTrigger_v2_1;
    l1 = self.box_GroupSizeListener_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|770677825", "770677825", "Intro_010_B20_NpcMovement", "box_LookAtTrigger_v2_1.Enabled", "box_GroupSizeListener_v5_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_1_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_1;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2030516959", "2030516959", "Intro_010_B20_NpcMovement", "box_LookAtTrigger_v2_1.EnterFOV", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_202_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_195();
    l0 = self.box_Gate_v3_202;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1001253952", "1001253952", "Intro_010_B20_NpcMovement", "box_Gate_v3_202.Out", "box_UseContextualActionModifier_v3_195.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_122_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_Delay_v5_122;
    l1 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1848606017", "1848606017", "Intro_010_B20_NpcMovement", "box_Delay_v5_122.Stopped", "box_Delay_v5_88.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_122_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_117();
    l0 = self.box_Delay_v5_122;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|342828599", "342828599", "Intro_010_B20_NpcMovement", "box_Delay_v5_122.TimeElapsed", "box_UseContextualActionModifier_v3_117.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_318_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_279();
    l0 = self.box_EntityStatusListener_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|239930914", "239930914", "Intro_010_B20_NpcMovement", "box_Simple_Node_318.Out", "box_EntityStatusListener_279.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_295_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_295;
    l1 = self.box_OnceOnly_v3_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|312815145", "312815145", "Intro_010_B20_NpcMovement", "box_MultipleOR_295.Out", "box_OnceOnly_v3_284.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TeleportPawns_151_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_TeleportPawns_151;
    l1 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1255928785", "1255928785", "Intro_010_B20_NpcMovement", "box_TeleportPawns_151.Out", "box_Delay_v5_144.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_138();
    l0 = self.box_Delay_v5_144;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2095594452", "2095594452", "Intro_010_B20_NpcMovement", "box_Delay_v5_144.TimeElapsed", "box_UseContextualActionModifier_v3_138.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_164_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_186();
    l0 = self.box_Gate_v3_164;
    l1 = self.box_Gate_v3_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1055932748", "1055932748", "Intro_010_B20_NpcMovement", "box_Gate_v3_164.Closed", "box_Gate_v3_186.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_164_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_174();
    l0 = self.box_Gate_v3_164;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|577888159", "577888159", "Intro_010_B20_NpcMovement", "box_Gate_v3_164.Out", "box_UseContextualActionModifier_v3_174.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_174_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1648819844", "1648819844", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_174.Disabled", "box_OnceOnly_v3_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_174_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_174();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|661244596", "661244596", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_174.Enabled", "box_UseContextualActionModifier_v3_174.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_166_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_170();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1022308371", "1022308371", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_166.Disabled", "box_UseContextualActionModifier_v3_170.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_262_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_201();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1952803010", "1952803010", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_262.Disabled", "box_UseContextualActionModifier_v3_201.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_4();
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_MultipleAND_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|522287613", "522287613", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_7.Loaded", "box_MultipleAND_v2_4.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Bind_v4_176_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_171();
    l0 = self.box_Bind_v4_176;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1251918396", "1251918396", "Intro_010_B20_NpcMovement", "box_Bind_v4_176.Bound", "box_CreateVector3_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|560033319", "560033319", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_17.Enabled", "box_UseContextualActionModifier_v3_17.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_17_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_63();
    l0 = self.box_ProximityTrigger_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1406496407", "1406496407", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_17.UseCalled", "box_ProximityTrigger_v2_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_115_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_117();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|911014851", "911014851", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_115.Disabled", "box_UseContextualActionModifier_v3_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_115_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_115();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|352669711", "352669711", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_115.Enabled", "box_UseContextualActionModifier_v3_115.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_115_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1774570663", "1774570663", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_115.UseCalled", "box_Delay_v5_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_280_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_285();
    l0 = self.box_ProximityTrigger_v2_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|386341197", "386341197", "Intro_010_B20_NpcMovement", "box_SetContextualStrategy_280.Out", "box_ProximityTrigger_v2_285.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_216_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_221();
    l0 = self.box_Gate_v3_216;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1085105536", "1085105536", "Intro_010_B20_NpcMovement", "box_Gate_v3_216.Out", "box_UseContextualActionModifier_v3_221.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_215_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_247();
    l0 = self.box_Gate_v3_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1390908812", "1390908812", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_215.Disabled", "box_Gate_v3_247.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_307_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_285();
    l0 = self.box_ProximityTrigger_v2_307;
    l1 = self.box_ProximityTrigger_v2_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|317631829", "317631829", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_307.Disabled", "box_ProximityTrigger_v2_285.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_307_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_280();
    l0 = self.box_ProximityTrigger_v2_307;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1835506461", "1835506461", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_307.Enabled", "box_SetContextualStrategy_280.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_307_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_310();
    l0 = self.box_ProximityTrigger_v2_307;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1685227442", "1685227442", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_307.Enter", "box_OutputOrder_v2_310.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_141_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_161();
    l0 = self.box_EntityStatusListener_141;
    l1 = self.box_ProximityRadiusListener_v3_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2004216393", "2004216393", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_141.Loaded", "box_ProximityRadiusListener_v3_161.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_125();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|685576628", "685576628", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|331267605", "331267605", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1917054528", "1917054528", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1620412133", "1620412133", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_105();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|255327643", "255327643", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_123();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|210244880", "210244880", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_124();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|751291682", "751291682", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1234048428", "1234048428", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_318();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1618548375", "1618548375", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_318.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2077000864", "2077000864", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_33.Out", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_296_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_296();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1630778877", "1630778877", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_296.Enabled", "box_UseContextualActionModifier_v3_296.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_296_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_304();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|297610117", "297610117", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_296.UseCalled", "box_OutputOrder_v2_304.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_226_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_226();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|352013894", "352013894", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_226.Enabled", "box_UseContextualActionModifier_v3_226.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_39_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1045845677", "1045845677", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_39.Enabled", "box_UseContextualActionModifier_v3_39.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|319412360", "319412360", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_162.Out", "box_MultipleOR_333.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_177();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|133291512", "133291512", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_162.Out", "box_UseContextualActionModifier_v3_177.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_46_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_18();
    l0 = self.box_ProximityRadiusListener_v3_46;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1180241473", "1180241473", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_46.Disabled", "box_SetContextualStrategy_18.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_46_SomeoneFar()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_46();
    l0 = self.box_ProximityRadiusListener_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1321287873", "1321287873", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_46.SomeoneFar", "box_ProximityRadiusListener_v3_46.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_189_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_169();
    l0 = self.box_OnceOnly_v3_189;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|632517013", "632517013", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_189.Out", "box_UseContextualActionModifier_v3_169.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_189_ResetOut()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_189;
    l1 = self.box_OnceOnly_v3_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|491799407", "491799407", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_189.ResetOut", "box_OnceOnly_v3_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_102_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_68();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2086570678", "2086570678", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_102.Disabled", "box_UseContextualActionModifier_v3_68.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_248_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_256();
    l0 = self.box_Gate_v3_248;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|983397599", "983397599", "Intro_010_B20_NpcMovement", "box_Gate_v3_248.Out", "box_UseContextualActionModifier_v3_256.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_308_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_290();
    l0 = self.box_ProximityTrigger_v2_308;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1650861406", "1650861406", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_308.Enter", "box_UseContextualActionModifier_v3_290.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_106_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_102();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|768226516", "768226516", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_106.Disabled", "box_UseContextualActionModifier_v3_102.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_53();
    l0 = self.box_Delay_v5_45;
    l1 = self.box_ProximityTrigger_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1640756489", "1640756489", "Intro_010_B20_NpcMovement", "box_Delay_v5_45.TimeElapsed", "box_ProximityTrigger_v2_53.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_338_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_339();
    l0 = self.box_Delay_v5_339;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|546145512", "546145512", "Intro_010_B20_NpcMovement", "box_SetContextualStrategy_338.Out", "box_Delay_v5_339.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_UseContextualActionModifier_v3_75_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_100();
    l0 = self.box_Gate_v3_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|26369845", "26369845", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_75.Disabled", "box_Gate_v3_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_228_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_207();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|932015729", "932015729", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_228.Disabled", "box_UseContextualActionModifier_v3_207.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_335_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_334();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1882759427", "1882759427", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_335.Disabled", "box_UseContextualActionModifier_v3_334.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_288_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_302();
    l0 = self.box_SpawnAI_288;
    l1 = self.box_SpawnAI_302;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|945273222", "945273222", "Intro_010_B20_NpcMovement", "box_SpawnAI_288.Out", "box_SpawnAI_302.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_81_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|19130586", "19130586", "Intro_010_B20_NpcMovement", "box_SetEntity_v2_81.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_197_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_236();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1235427848", "1235427848", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_197.Disabled", "box_UseContextualActionModifier_v3_236.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_61_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_28();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1176109056", "1176109056", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_61.Disabled", "box_UseContextualActionModifier_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_269_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_216();
    l0 = self.box_ProximityRadiusListener_v3_269;
    l1 = self.box_Gate_v3_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1825056686", "1825056686", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_269.Disabled", "box_Gate_v3_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_269_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_257();
    l0 = self.box_ProximityRadiusListener_v3_269;
    l1 = self.box_EntityStatusListener_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1551248643", "1551248643", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_269.Enabled", "box_EntityStatusListener_257.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_269_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_269;
    l1 = self.box_MultipleOR_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|413447762", "413447762", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_269.SomeoneNear", "box_MultipleOR_217.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_306_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_276();
    l0 = self.box_Delay_v5_306;
    l1 = self.box_RemoveEntity_v2_276;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1339060058", "1339060058", "Intro_010_B20_NpcMovement", "box_Delay_v5_306.TimeElapsed", "box_RemoveEntity_v2_276.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_0()
    local l0, l1;
    l0 = self.box_Switch_13;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1706384348", "1706384348", "Intro_010_B20_NpcMovement", "box_Switch_13.Output", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_13_Output_1()
    local l0, l1;
    l0 = self.box_Switch_13;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|489853618", "489853618", "Intro_010_B20_NpcMovement", "box_Switch_13.Output", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_75();
    l0 = self.box_Gate_v3_109;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|494012659", "494012659", "Intro_010_B20_NpcMovement", "box_Gate_v3_109.Out", "box_UseContextualActionModifier_v3_75.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_209_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_191();
    l0 = self.box_EntityStatusListener_209;
    l1 = self.box_Delay_v5_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|216819248", "216819248", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_209.Loaded", "box_Delay_v5_191.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_146_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_134();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2033233092", "2033233092", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_146.Disabled", "box_UseContextualActionModifier_v3_134.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1376696473", "1376696473", "Intro_010_B20_NpcMovement", "box_Delay_v5_24.TimeElapsed", "box_UseContextualActionModifier_v3_36.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_62();
    l0 = self.box_Delay_v5_60;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|68518920", "68518920", "Intro_010_B20_NpcMovement", "box_Delay_v5_60.TimeElapsed", "box_UseContextualActionModifier_v3_62.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_319_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_322();
    l0 = self.box_OnceOnly_v3_319;
    l1 = self.box_RemoveEntity_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1315491406", "1315491406", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_319.Out", "box_RemoveEntity_v2_322.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_263();
    l0 = self.box_Gate_v3_196;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|189276239", "189276239", "Intro_010_B20_NpcMovement", "box_Gate_v3_196.Out", "box_UseContextualActionModifier_v3_263.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_330_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_331();
    l0 = self.box_Delay_v5_330;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1780895315", "1780895315", "Intro_010_B20_NpcMovement", "box_Delay_v5_330.TimeElapsed", "box_UseContextualActionModifier_v3_331.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_29_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|380868471", "380868471", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_29.Disabled", "box_UseContextualActionModifier_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_199_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_199();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1807223249", "1807223249", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_199.Enabled", "box_UseContextualActionModifier_v3_199.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_185_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_185();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1383487361", "1383487361", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_185.Enabled", "box_UseContextualActionModifier_v3_185.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_191_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_244();
    l0 = self.box_Delay_v5_191;
    l1 = self.box_ProximityRadiusListener_v3_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1191987655", "1191987655", "Intro_010_B20_NpcMovement", "box_Delay_v5_191.Started", "box_ProximityRadiusListener_v3_244.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_191_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_191;
    l1 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1174122450", "1174122450", "Intro_010_B20_NpcMovement", "box_Delay_v5_191.TimeElapsed", "box_MultipleOR_232.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_58_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_64();
    l0 = self.box_Delay_v5_58;
    l1 = self.box_ProximityRadiusListener_v3_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|365830754", "365830754", "Intro_010_B20_NpcMovement", "box_Delay_v5_58.Stopped", "box_ProximityRadiusListener_v3_64.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_64();
    l0 = self.box_Delay_v5_58;
    l1 = self.box_ProximityRadiusListener_v3_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|762072686", "762072686", "Intro_010_B20_NpcMovement", "box_Delay_v5_58.TimeElapsed", "box_ProximityRadiusListener_v3_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_48_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_ProximityRadiusListener_v3_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|641568594", "641568594", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_48.Disabled", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_48_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_48;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|788295095", "788295095", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_48.SomeoneNear", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_99_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_90();
    l0 = self.box_ProximityRadiusListener_v3_99;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1112302470", "1112302470", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_99.Disabled", "box_UseContextualActionModifier_v3_90.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_99_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_99;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1104748892", "1104748892", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_99.SomeoneNear", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_200_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_268();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|67405419", "67405419", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_200.Disabled", "box_UseContextualActionModifier_v3_268.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_90_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_87();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|135753965", "135753965", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_90.Disabled", "box_UseContextualActionModifier_v3_87.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_182_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_329();
    l0 = self.box_OnceOnly_v3_182;
    l1 = self.box_ProximityRadiusListener_v3_329;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|410784864", "410784864", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_182.Out", "box_ProximityRadiusListener_v3_329.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_337();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1697284018", "1697284018", "Intro_010_B20_NpcMovement", "box_MultipleOR_27.Out", "box_OutputOrder_v2_337.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_311_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|856098460", "856098460", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_311.Out", "Enable_Obj_Marker", clone:GetLuaBox(), self);
    self:Enable_Obj_Marker();
end;

function export:f_box_OutputOrder_v2_311_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_283();
    l0 = self.box_ProximityTrigger_v2_283;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1341327021", "1341327021", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_311.Out", "box_ProximityTrigger_v2_283.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_311_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_306();
    l0 = self.box_Delay_v5_306;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1497205542", "1497205542", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_311.Out", "box_Delay_v5_306.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_186_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_169();
    l0 = self.box_Gate_v3_186;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|276036652", "276036652", "Intro_010_B20_NpcMovement", "box_Gate_v3_186.Out", "box_UseContextualActionModifier_v3_169.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_225_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_267();
    l0 = self.box_OnceOnly_v3_225;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|969542527", "969542527", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_225.Out", "box_UseContextualActionModifier_v3_267.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_10_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|531026191", "531026191", "Intro_010_B20_NpcMovement", "box_RandomFloat_v2_10.Out", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_320_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_324();
    l0 = self.box_ProximityTrigger_v2_320;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|860200654", "860200654", "Intro_010_B20_NpcMovement", "box_ProximityTrigger_v2_320.Enter", "box_OutputOrder_v2_324.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1124225735", "1124225735", "Intro_010_B20_NpcMovement", "box_Simple_Node_112.Out", "box_EntityStatusListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_190_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_136();
    l0 = self.box_ProximityRadiusListener_v3_190;
    l1 = self.box_ProximityTrigger_v2_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|438047", "438047", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_190.Disabled", "box_ProximityTrigger_v2_136.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_190_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_ProximityRadiusListener_v3_190;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|597782772", "597782772", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_190.SomeoneNear", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_161_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_146();
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1950573056", "1950573056", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_161.Disabled", "box_UseContextualActionModifier_v3_146.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_161_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_161();
    l0 = self.box_ProximityRadiusListener_v3_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|694074298", "694074298", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_161.SomeoneNear", "box_ProximityRadiusListener_v3_161.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_279_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_317();
    l0 = self.box_EntityStatusListener_279;
    l1 = self.box_LookAtTrigger_v2_317;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|255964527", "255964527", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_279.Enabled", "box_LookAtTrigger_v2_317.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_279_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = self.box_EntityStatusListener_279;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1777876071", "1777876071", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_279.Loaded", "box_OutputOrder_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_309_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_296();
    l0 = self.box_Delay_v5_309;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|654340895", "654340895", "Intro_010_B20_NpcMovement", "box_Delay_v5_309.TimeElapsed", "box_UseContextualActionModifier_v3_296.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_49();
    l0 = self.box_Gate_v3_66;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1110847974", "1110847974", "Intro_010_B20_NpcMovement", "box_Gate_v3_66.Out", "box_UseContextualActionModifier_v3_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_55_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_55();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|524529596", "524529596", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_55.Enabled", "box_UseContextualActionModifier_v3_55.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_56_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_52();
    l0 = self.box_EntityStatusListener_56;
    l1 = self.box_ProximityRadiusListener_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|379454834", "379454834", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_56.Loaded", "box_ProximityRadiusListener_v3_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_244_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_255();
    l0 = self.box_ProximityRadiusListener_v3_244;
    l1 = self.box_Gate_v3_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1686312260", "1686312260", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_244.Disabled", "box_Gate_v3_255.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_244_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_230();
    l0 = self.box_ProximityRadiusListener_v3_244;
    l1 = self.box_EntityStatusListener_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|356920995", "356920995", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_244.Enabled", "box_EntityStatusListener_230.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_244_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_244;
    l1 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1051652063", "1051652063", "Intro_010_B20_NpcMovement", "box_ProximityRadiusListener_v3_244.SomeoneNear", "box_MultipleOR_232.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_304_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_287();
    l0 = self.box_ProximityRadiusListener_v3_287;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|942095740", "942095740", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_304.Out", "box_ProximityRadiusListener_v3_287.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_304_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_308();
    l0 = self.box_ProximityTrigger_v2_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1568717656", "1568717656", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_304.Out", "box_ProximityTrigger_v2_308.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_304_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_320();
    l0 = self.box_ProximityTrigger_v2_320;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1679102733", "1679102733", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_304.Out", "box_ProximityTrigger_v2_320.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_25_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    l0 = self.box_EntityStatusListener_25;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|614800623", "614800623", "Intro_010_B20_NpcMovement", "box_EntityStatusListener_25.Loaded", "box_UseContextualActionModifier_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_100_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_84();
    l0 = self.box_Gate_v3_100;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|419429204", "419429204", "Intro_010_B20_NpcMovement", "box_Gate_v3_100.Closed", "box_UseContextualActionModifier_v3_84.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_84();
    l0 = self.box_Gate_v3_100;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|629923006", "629923006", "Intro_010_B20_NpcMovement", "box_Gate_v3_100.Out", "box_UseContextualActionModifier_v3_84.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_267_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_198();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|821194016", "821194016", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_267.Disabled", "box_UseContextualActionModifier_v3_198.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_68_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_77();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1813618060", "1813618060", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_68.Disabled", "box_UseContextualActionModifier_v3_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_264_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_264;
    l1 = self.box_OnceOnly_v3_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|36823037", "36823037", "Intro_010_B20_NpcMovement", "box_MultipleOR_264.Out", "box_OnceOnly_v3_223.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_194_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_233();
    l0 = self.box_Gate_v3_194;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|76103296", "76103296", "Intro_010_B20_NpcMovement", "box_Gate_v3_194.Out", "box_UseContextualActionModifier_v3_233.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_229_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_205();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1527520217", "1527520217", "Intro_010_B20_NpcMovement", "box_OutputOrder_v2_229.Out", "box_UseContextualActionModifier_v3_205.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_223_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_245();
    l0 = self.box_OnceOnly_v3_223;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1135717119", "1135717119", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_223.Out", "box_UseContextualActionModifier_v3_245.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_253_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_253();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1449619572", "1449619572", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_253.Enabled", "box_UseContextualActionModifier_v3_253.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_169_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1030643388", "1030643388", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_169.Disabled", "box_OnceOnly_v3_189.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_169_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_169();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|117684378", "117684378", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_169.Enabled", "box_UseContextualActionModifier_v3_169.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_169_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|423765386", "423765386", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_169.UseCalled", "box_OnceOnly_v3_188.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_MultipleOR_340_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_338();
    l0 = self.box_MultipleOR_340;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1668100692", "1668100692", "Intro_010_B20_NpcMovement", "box_MultipleOR_340.Out", "box_SetContextualStrategy_338.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_2();
    l0 = self.box_OnceOnly_v3_9;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1062377153", "1062377153", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_9.Out", "box_SetContextualStrategy_2.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_260_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_213();
    l0 = self.box_Delay_v5_260;
    l1 = self.box_ProximityRadiusListener_v3_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|598885889", "598885889", "Intro_010_B20_NpcMovement", "box_Delay_v5_260.Started", "box_ProximityRadiusListener_v3_213.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_260_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_260;
    l1 = self.box_MultipleOR_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1811322785", "1811322785", "Intro_010_B20_NpcMovement", "box_Delay_v5_260.TimeElapsed", "box_MultipleOR_246.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_188_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_174();
    l0 = self.box_OnceOnly_v3_188;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|165950569", "165950569", "Intro_010_B20_NpcMovement", "box_OnceOnly_v3_188.Out", "box_UseContextualActionModifier_v3_174.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_71_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_114();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|537939086", "537939086", "Intro_010_B20_NpcMovement", "box_UseContextualActionModifier_v3_71.Disabled", "box_UseContextualActionModifier_v3_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|@move_cultists_to_curch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_271_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|@move_cultists_to_gate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_273_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|@move_cultists_to_gate_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_272_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_120()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|14715827");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_62_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_62_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_62_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103885233265853139",
        -- Entity,
        [1] = "2099901691104073084",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_327()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104326064755984782",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|47108663");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100901376228867093",
        -- Group,
        [1] = "2101648950101712813",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|47795376");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_171_Out,
    });
    params = {
        -- x,
        [0] = -4,
        -- y,
        [1] = 0,
        -- z,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_305()
    local params;
    params = {
        -- Group,
        [0] = "#BEE0F579",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_172()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "2101633267150105230",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104109293310606496",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_181()
    local params;
    params = {
        -- EntityA,
        [1] = "2101633267150105230",
        -- EntityB,
        [2] = "2104038365956418134",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|86094247");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100901376228867093",
        -- Group,
        [1] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|89336416");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_130_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104436098907264271",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|91001890");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_252_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_252_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100942035040144920",
        -- Entity,
        [1] = "2099901701298329082",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|98499464");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_94_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104038135340995826",
        -- Entity,
        [1] = "2099901692102317458",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2099901697456346565",
        -- nearZone,
        [4] = 1.5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_339()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|115274410");
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
                [0] = self.f_box_OutputOrder_v2_242_Out_0,
                [1] = self.f_box_OutputOrder_v2_242_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|118849048");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_72_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100942027456843260",
        -- Entity,
        [1] = "2099901723259705099",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103842404808481375",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|128819857");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_205_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103581258589194830",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|139486234");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_148_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633204327819850",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_270()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100900847366974109",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|144354259");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_107_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104328097150036684",
        -- Entity,
        [1] = "2099901723259705099",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|145047474");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|151408241");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_207_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100942033714744848",
        -- Entity,
        [1] = "2100900847366974109",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_136()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "2101633267150105230",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104109572993109962",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|153504574");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_167_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105127844030977442",
        -- Entity,
        [1] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|161497238");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100901376228867093",
        -- Group,
        [1] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_312()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2101648950101712813",
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_187()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104038365956418134",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_326()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|191973059");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_326_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479232304596213",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_331()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|197261271");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_331_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_331_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633267135425157",
        -- Entity,
        [1] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|201915666");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_198_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104109795417066711",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_329()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2101633267150105230",
        -- nearZone,
        [4] = 11,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.deputee,
        -- id2,
        [3] = "2099901692102317458",
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_89()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105628151855031042",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_287()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2101648950101712813",
        -- farZone,
        [2] = 4,
        -- id2,
        [3] = self.player,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|233533320");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|236490439");
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
                [1] = self.f_box_OutputOrder_v2_238_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|237342018");
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

function export:OnEnter_box_Gate_v3_76()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|251940545");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_236_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104117859931145901",
        -- Entity,
        [1] = "2099901698628654556",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_282()
    local params;
    DrawTextToScreen("Comment: guys_garden", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: guys_garden");
    params = {
        -- EntitySpawner,
        [0] = "2099901706755118651",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|254872006");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_97_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901692100220304",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|256607906");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100901376228867093",
        -- Group,
        [1] = "#A61719F2",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|256840080");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_121_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104454718265847694",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|263061767");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_251_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104289398326591070",
        -- Entity,
        [1] = "2099901701298329082",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|264564797");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_256_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103966167184990284",
        -- Entity,
        [1] = "2100900847366974109",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|273444678");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_28_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901691104073082",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_88()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103595551722444460",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_257()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969384056755347",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|300159169");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_82_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_82_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102587332413781945",
        -- Entity,
        [1] = "2101633279336655548",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|303682362");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_300_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104452762377918015",
        -- Entity,
        [1] = "2101648950101712813",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_317()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2104119713106820681",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_281()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_301()
    local params;
    DrawTextToScreen("Comment: dog_fight_1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: dog_fight_1");
    params = {
        -- EntitySpawner,
        [0] = "2099901711909918325",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|345931218");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|355506673");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_117_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_117_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_117_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104286668874860595",
        -- Entity,
        [1] = "2104326064755984782",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_78()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901692102317458",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_184()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2101633267150105230",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104109572993109962",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_212()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 23,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|382944580");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_193_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479197399598277",
        -- Entity,
        [1] = "2099901701298329082",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_249()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_283()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103595560641631917",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|404194291");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104452299712632227",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|416029712");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_290_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104202787423274317",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_293()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_255()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|450928707");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_22_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_22_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104121412907276569",
        -- Entity,
        [1] = "2101633074230995377",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_15()
    local params;
    params = {
        -- Group,
        [0] = "2099901705167574569",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3465580101",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#BE04C18D",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_104()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|458587561");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_303()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|467953477");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_303_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104119394687833300",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_155()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104452299712632227",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|493950098");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_219_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479197399598277",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|497311186");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104562134003247373",
        -- Group,
        [1] = "2099901711914112639",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|497382623");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_110_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479384497014184",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_316()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103595551722444460",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|529077834");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_49_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_49_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901691104073082",
        -- Entity,
        [1] = "2099901691104073084",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|541696865");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_35_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_35_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_35_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104118478077187557",
        -- Entity,
        [1] = "2099901691104073084",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|561572000");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_134_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633204327819850",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|575329148");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_158_Enabled,
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_158_InterruptCalled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_158_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104436098907264271",
        -- Entity,
        [1] = "2101633191998663195",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_111()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|608216613");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_77_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102118007301067576",
        -- Entity,
        [1] = "2101633279336655548",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|614967684");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_32_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_32_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104575595322034683",
        -- Entity,
        [1] = "2099901706759312961",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_70()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|630834857");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_192_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100942032951381508",
        -- Entity,
        [1] = "2101633249156541023",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|644206701");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_165_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104231457290471137",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_4()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|649464222");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_113_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104328097150036684",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|656132831");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_36_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_36_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_36_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104575595322034681",
        -- Entity,
        [1] = "2101633074230995377",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_261()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_175()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901705167574569",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|697967048");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_221_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100900845359999630",
        -- Entity,
        [1] = "2101633249156541023",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|699616967");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_233_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103581159903512991",
        -- Entity,
        [1] = "2100900847366974109",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_322()
    local params;
    params = {
        -- Group,
        [0] = "#8EBC1DF5",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|727665673");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_93_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_93_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901692100220304",
        -- Entity,
        [1] = "2099901692102317458",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_328()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_168()
    local params;
    params = {
        -- EntityA,
        [1] = self.player,
        -- EntityB,
        [2] = "2104109572993109962",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_332()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|747430634");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_332_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_332_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105127844030977442",
        -- Entity,
        [1] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_231()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969384056755347",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_247()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|841923975");
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

function export:OnEnter_box_EntityStatusListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2099901697456346565",
        -- nearZone,
        [4] = 1.5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|854770062");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_73_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479232304596213",
        -- Entity,
        [1] = "2099901692102317458",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_179()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|882437220");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_69_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104329307005392289",
        -- Entity,
        [1] = "2101633279336655548",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|898235309");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_26_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_26_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100942020230057460",
        -- Entity,
        [1] = "2099901706759312961",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_294()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103595551722444460",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_213()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2100900847366974109",
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_323()
    local params, l0;
    DrawTextToScreen("Comment: remove static meshes behind", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: remove static meshes behind");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|926619841");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_323_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "36167385877830901",
        -- missionLayerId,
        [1] = "27160246081144736",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_277()
    local params;
    params = {
        -- Group,
        [0] = "#27E9A4C3",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|935000372");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_265_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103581159903512991",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|942230560");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_65_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_65_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_65_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100942033714744844",
        -- Entity,
        [1] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2099901691104073084",
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_266()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901698628654556",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|981102248");
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
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|984308878");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_201_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633259891862132",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|985747235");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_126_Out,
    });
    params = {
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
        [2] = "2101633279336655548",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
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

function export:OnEnter_box_EntityStatusListener_259()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101633249156541023",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_101()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1021778539");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_195_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103966150120464415",
        -- Entity,
        [1] = "2101633249156541023",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1024947202");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_51_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901697452152252",
        -- Entity,
        [1] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1037596299");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_118_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104286668874860595",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1078470031");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_275_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104119394687833300",
        -- Entity,
        [1] = "2101648950101712813",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1101310313");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_291_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101648950097518507",
        -- Entity,
        [1] = "2101648950101712813",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1116509213");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_124_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_315()
    local params;
    params = {
        -- Group,
        [0] = "#1B80E486",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_211()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 19,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103842404808481375",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_325()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104276626480076337",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1141662412");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_114_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100942036894027292",
        -- Entity,
        [1] = "2099901692102317458",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1157046618");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_334_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104038365956418134",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1170615832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_125_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2099901705167574569",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1183695054");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_80_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104290602718902606",
        -- Entity,
        [1] = "2101633279336655548",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_178()
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
        [6] = "2104109293310606496",
        -- useSmallestAngleDiff,
        [7] = false,
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

function export:OnEnter_box_Gate_v3_43()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1216693945");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_263_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103581258589194830",
        -- Entity,
        [1] = "2100900847366974109",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_74()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1228433750");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_147_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104109955356364175",
        -- Entity,
        [1] = "2101633191998663195",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.deputee,
        -- id2,
        [3] = "2101633279336655548",
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_313()
    local params;
    DrawTextToScreen("Comment: girl_fence", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: girl_fence");
    params = {
        -- EntitySpawner,
        [0] = "2099901705163380259",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1260817496");
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
                [0] = self.f_box_OutputOrder_v2_173_Out_0,
                [1] = self.f_box_OutputOrder_v2_173_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1262936178");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_177_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103883986712433423",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1264310704");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_119_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104507879932334743",
        -- Entity,
        [1] = "2104326064755984782",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1265862121");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_170_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_170_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_170_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104244957956032190",
        -- Entity,
        [1] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1284662040");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_87_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901692100220304",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_227()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_285()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103595560641631917",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1307247063");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_132_Out,
    });
    params = {
        -- x,
        [0] = 30,
        -- y,
        [1] = 0,
        -- z,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_324()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1308433401");
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
                [0] = self.f_box_OutputOrder_v2_324_Out_0,
                [1] = self.f_box_OutputOrder_v2_324_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = "2099901705167574569",
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3355571366",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1321070220");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_245_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103581258589194830",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1322507924");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_268_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633259891862132",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1332058374");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_86_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901723255510786",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1334256128");
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
                [0] = self.f_box_OutputOrder_v2_310_Out_0,
                [1] = self.f_box_OutputOrder_v2_310_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1347525456");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_208()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 18,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_321()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_321");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1362112591");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_321_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104202787423274317",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_292()
    local params;
    DrawTextToScreen("Comment: dog_fight_2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: dog_fight_2");
    params = {
        -- EntitySpawner,
        [0] = "2099901689074029916",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_214()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_237()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_137()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101633191998663195",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901689080321382",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_302()
    local params;
    DrawTextToScreen("Comment: wolf", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: wolf");
    params = {
        -- EntitySpawner,
        [0] = "2104357693526394794",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.deputee,
        -- id2,
        [3] = "2101633279336655548",
        -- nearZone,
        [4] = 9,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_230()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969384056755347",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1394583481");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_138_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633198067821098",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1407748996");
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
                [0] = self.f_box_OutputOrder_v2_337_Out_0,
                [1] = self.f_box_OutputOrder_v2_337_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1422972740");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_84_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_84_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901723255510786",
        -- Entity,
        [1] = "2099901723259705099",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1423371653");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_183_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633267135425157",
        -- Entity,
        [1] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_57()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_336()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#F43BD08E",
        -- farZone,
        [2] = 5,
        -- id2,
        [3] = self.player,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1433017293");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_91_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104290602718902606",
        -- Entity,
        [1] = "2101633279336655548",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1458387014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_123_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1460082757");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_23_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102294651053564881",
        -- Entity,
        [1] = "2099901691104073084",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1464984791");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101633279336655548",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2104359797026506359",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1481907252");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100901376228867093",
        -- Group,
        [1] = "#6FC5DEB6",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_202()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_122()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 14,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1520165453");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_318_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_151()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104436098907264271",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "2101633191998663195",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_164()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1554022958");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_174_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_174_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103883986712433423",
        -- Entity,
        [1] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1556090061");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_166_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104038365956418134",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1560413658");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_262_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103966150120464415",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901711914112639",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_176()
    local params;
    params = {
        -- EntityA,
        [1] = self.player,
        -- EntityB,
        [2] = "2104109293310606496",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1611099859");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_17_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_17_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901697452152252",
        -- Entity,
        [1] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1614450370");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_115_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_115_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_115_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104454718265847694",
        -- Entity,
        [1] = "2104326064755984782",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1614950552");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_280_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103883850072494673",
        -- Group,
        [1] = "#A61719F2",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_216()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1623080422");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_215_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901701294134769",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_307()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103842404808481375",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_141()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969384056755347",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1648530387");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 15,
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
                [3] = self.f_box_OutputOrder_v2_33_Out_3,
                [4] = self.f_box_OutputOrder_v2_33_Out_4,
                [6] = self.f_box_OutputOrder_v2_33_Out_6,
                [7] = self.f_box_OutputOrder_v2_33_Out_7,
                [9] = self.f_box_OutputOrder_v2_33_Out_9,
                [10] = self.f_box_OutputOrder_v2_33_Out_10,
                [14] = self.f_box_OutputOrder_v2_33_Out_14,
            },
            count = 15,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_276()
    local params;
    DrawTextToScreen("Comment: just to make sure all are removed", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RemoveEntity_v2')-- Comment: just to make sure all are removed");
    params = {
        -- Group,
        [0] = "#8EBC1DF5",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1663050708");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_296_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_296_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104202787423274317",
        -- Entity,
        [1] = "2101648950101712813",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1678987894");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_226_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633259891862132",
        -- Entity,
        [1] = "2101633249156541023",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1680965978");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_39_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104190412810896868",
        -- Entity,
        [1] = "2099901691104073084",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1681587206");
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
                [0] = self.f_box_OutputOrder_v2_162_Out_0,
                [1] = self.f_box_OutputOrder_v2_162_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- farZone,
        [2] = 3.5,
        -- id2,
        [3] = "2099901697456346565",
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1723534071");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_102_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102587332413781945",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_274()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101633074224703915",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_248()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_308()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103842359084276318",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1754776876");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_106_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104290602718902606",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_338()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1792409471");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_338_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100901376228867093",
        -- Group,
        [1] = "#F43BD08E",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1798305649");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_75_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479384497014184",
        -- Entity,
        [1] = "2099901723259705099",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1804787675");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_228_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103966167184990284",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1808313739");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_335_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103883986712433423",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_288()
    local params;
    DrawTextToScreen("Comment: judge", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: judge");
    params = {
        -- EntitySpawner,
        [0] = "2104357712614672392",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1819762005");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_81_Out,
    });
    params = {
        -- Entity,
        [0] = self.deputy,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1819826054");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_197_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099976826997747680",
        -- Entity,
        [1] = "2099901698628654556",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1822474797");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_61_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102294651053564881",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_269()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2101633249156541023",
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_306()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Switch_13()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_109()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_209()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901701298329082",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1890201413");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_146_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633198067821098",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_196()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_330()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_163()
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
        [6] = "2104109572993109962",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1943914252");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_29_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479326452041059",
        -- Entity,
        [1] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1951345464");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_199_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901701294134769",
        -- Entity,
        [1] = "2099901701298329082",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1960840717");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_185_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104452762377918011",
        -- Entity,
        [1] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_191()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_99()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1985718147");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_200_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100900845359999630",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|1988071214");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_90_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479232304596213",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_311()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2000412423");
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
                [0] = self.f_box_OutputOrder_v2_311_Out_0,
                [1] = self.f_box_OutputOrder_v2_311_Out_1,
                [2] = self.f_box_OutputOrder_v2_311_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_186()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2007364724");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_10_Out,
    });
    params = {
        -- Max,
        [0] = 30,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_320()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104452299712632227",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2009098731");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_190()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2104111269803030021",
        -- id2,
        [3] = "2101633267150105230",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_161()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 21,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_279()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101648950101712813",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_309()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_66()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2039157881");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_55_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104452762375820855",
        -- Entity,
        [1] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901691104073084",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_244()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2099901701298329082",
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2048978950");
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
                [0] = self.f_box_OutputOrder_v2_304_Out_0,
                [1] = self.f_box_OutputOrder_v2_304_Out_1,
                [2] = self.f_box_OutputOrder_v2_304_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901706759312961",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_100()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2059796597");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_267_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901701294134769",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2062379898");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_68_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104329307005392289",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_194()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2069397751");
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
                [1] = self.f_box_OutputOrder_v2_229_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2082820401");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_253_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104109795417066711",
        -- Entity,
        [1] = "2099901701298329082",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2088932327");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_169_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_169_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_169_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104038365956418134",
        -- Entity,
        [1] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_260()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_NpcMovement|2146575771");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_71_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104038135340995826",
    };
    return params;
end;

function export:OnExit_box_CreateVector3_171_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_178;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_132_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_163;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.deputee = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_10_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_16;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Start_Diags_Npc_Fence()
    
end;
function export:End_Diags_Npc_Fence()
    
end;
function export:Enable_Obj_Marker()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Combat_Started" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Disable_Fence_SyncSTP" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_FollowBehavior" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="End_Flamer_BurnSTP" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Gates_Closed" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Move_Npc_ToChurch" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Move_Npc_ToGate_1" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Move_Npc_ToGate_2" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_Flamer_BurnSTP" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enable_Obj_Marker" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="End_Diags_Npc_Fence" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Start_Diags_Npc_Fence" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="deputy" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
