LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b50.domino
-- User graph: MIS_310_B50_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/BonusPlanModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsImpulse.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3625928733.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3597183808.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3950363582.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1084415721.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1243693292.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3112841793.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1901638149.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2004257878.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_B50.MIS_310_B50_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "LastWave_Cleanup",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
            [3] = {
                name = "Waves",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [1] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "FailArea",
                type = "entity",
            },
            [3] = {
                name = "Objective",
                type = "oasis",
            },
            [4] = {
                name = "ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "opt_ObjectiveFail",
                type = "oasis",
            },
            [6] = {
                name = "WarningArea",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua")] = {
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
                name = "LastWave_Cleanup",
                delayed = false,
            },
            [2] = {
                name = "NextWave",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AttackersAliveToNextWave",
                type = "int",
            },
            [1] = {
                name = "AttackerSpawner_1",
                type = "entity",
            },
            [2] = {
                name = "CoreNPCGroup",
                type = "group",
            },
            [3] = {
                name = "IsLastWave",
                type = "bool",
            },
            [4] = {
                name = "NextWaveOnTimerEnd",
                type = "bool",
            },
            [5] = {
                name = "opt_AttackerSpawner_2",
                type = "entity",
            },
            [6] = {
                name = "opt_AttackerSpawner_3",
                type = "entity",
            },
            [7] = {
                name = "opt_AttackerSpawner_4",
                type = "entity",
            },
            [8] = {
                name = "opt_AttackerSpawner_5",
                type = "entity",
            },
            [9] = {
                name = "RequestGroup_1",
                type = "string",
            },
            [10] = {
                name = "RequestGroup_2",
                type = "string",
            },
            [11] = {
                name = "RequestGroup_3",
                type = "string",
            },
            [12] = {
                name = "RequestGroup_4",
                type = "string",
            },
            [13] = {
                name = "RequestGroup_5",
                type = "string",
            },
            [14] = {
                name = "Timer",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/BonusPlanModifier_v3.lua")] = {
        stateless = false,
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
                name = "AlreadyAdded",
                delayed = false,
            },
            [2] = {
                name = "AlreadyRemoved",
                delayed = false,
            },
            [3] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "BonusPlanName",
                type = "string",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
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
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua")] = {
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
                name = "ItemFilterDBID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua")] = {
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
        },
        controlOutCount = 2,
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
    self._name = "MIS_310_B50_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main";
    self.isMonsterClosetsEmpty = false;
    self.isRoundFinished = false;
    self.box_BonusPlanModifier_v3_41 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|17945835");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_55 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|21792337");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_23 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|113205862");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_23_Disabled,
    });
    self.box_ConsoleCommand_v3_37 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|115593934");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_37_Execute,
    });
    self.box_MessageListener_v3_33 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|183406371");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_33_Received,
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|324340294");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_63 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|336896865");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_63_LastWave_Cleanup,
    });
    self.box_MIS_310_AnnouncerDialogs_72 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|352295792");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_72_Finished,
    });
    self.box_SoundModifier_v2_52 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|438292068");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_45 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|519499395");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_45_Done,
    });
    self.box_SoundModifier_v2_20 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|645578059");
    l0:SetConnections({
    });
    self.box_Brick_Endure_CORE_v3_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|657182824");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_13_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_13_Waves,
    });
    self.box_Delay_v5_66 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|661150778");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_66_TimeElapsed,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|721133873");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|811593891");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_BonusPlanModifier_v3_42 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|875198997");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_42_Removed,
    });
    self.box_BonusPlanModifier_v3_17 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|923974602");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_17_Removed,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1007062476");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1028292240");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1121327590");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1205519382");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_MIS_310_AnnouncerDialogs_36 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1279729191");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_36_Finished,
    });
    self.box_MIS_310_COMMON_JIP_Inventory_80 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua");
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_JIP_Inventory_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1280812542");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_JIP_Inventory_80_Out,
    });
    self.box_MIS_310_COMMON_DisableNavlinks_79 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua");
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_DisableNavlinks_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1453768492");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_DisableNavlinks_79_Out,
    });
    self.box_BonusPlanModifier_v3_40 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1459696886");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_40_Removed,
    });
    self.box_MIS_310_AnnouncerDialogs_71 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1462378126");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_71_Finished,
    });
    self.box_SpawnAI_Wave_v2_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1524099893");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_14_NextWave,
    });
    self.box_MIS_310_EnvSettings_69 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
    l0 = self.box_MIS_310_EnvSettings_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_EnvSettings_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1536559375");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MIS_310_EnvSettings_69_Enabled,
    });
    self.box_GroupSizeListener_v6_51 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1541153512");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_51_MemberRemoved,
    });
    self.box_NavLinkModifier_70 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1575958352");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_70_Deactivated,
    });
    self.box_SoundModifier_v2_22 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1595026429");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_22_Started,
    });
    self.box_MIS_310_COMMON_RELOAD_InventoryBackup_77 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua");
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_RELOAD_InventoryBackup_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1752643026");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_RELOAD_InventoryBackup_77_Out,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1872208805");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1887368319");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_SoundModifier_v2_73 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1968048592");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_73_Started,
    });
    self.box_Bind_v4_43 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2030589734");
    l0:SetConnections({
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2052028643");
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
    self.box_MessageListener_v3_26 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2077623245");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_26_Received,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2078727596");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|795672406", "795672406", "MIS_310_B50_Main", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|501869832", "501869832", "MIS_310_B50_Main", "box_Simple_Node_11.Out", "box_Delay_v5_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_38();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|472344262", "472344262", "MIS_310_B50_Main", "box_Simple_Node_10.Out", "box_PawnInvincibleState_v2_38.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ConsoleCommand_v3_37();
    l0 = self.box_ConsoleCommand_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|291856795", "291856795", "MIS_310_B50_Main", "box_Simple_Node_10.Out", "box_ConsoleCommand_v3_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeListener_v6_51();
    l0 = self.box_GroupSizeListener_v6_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1713639732", "1713639732", "MIS_310_B50_Main", "box_Simple_Node_10.Out", "box_GroupSizeListener_v6_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MessageListener_v3_33();
    l0 = self.box_MessageListener_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|598242246", "598242246", "MIS_310_B50_Main", "box_Simple_Node_10.Out", "box_MessageListener_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_BonusPlanModifier_v3_42();
    l0 = self.box_BonusPlanModifier_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|150190496", "150190496", "MIS_310_B50_Main", "box_Simple_Node_10.Out", "box_BonusPlanModifier_v3_42.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    params = self:OnEnter_box_GetLocalPlayer_v2_44();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1526104478", "1526104478", "MIS_310_B50_Main", "box_Simple_Node_10.Out", "box_GetLocalPlayer_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MessageListener_v3_26();
    l0 = self.box_MessageListener_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1813584060", "1813584060", "MIS_310_B50_Main", "box_Simple_Node_10.Out", "box_MessageListener_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_BroadcastMessage_19();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|460239500", "460239500", "MIS_310_B50_Main", "box_Simple_Node_10.Out", "box_BroadcastMessage_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_34();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1153100944", "1153100944", "MIS_310_B50_Main", "box_Simple_Node_35.Out", "box_SetBoolean_v2_34.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_13();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|890463791", "890463791", "MIS_310_B50_Main", "box_Simple_Node_68.Out", "box_Brick_Endure_CORE_v3_13.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_52();
    l0 = self.box_SoundModifier_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|723936740", "723936740", "MIS_310_B50_Main", "box_Simple_Node_61.Out", "box_SoundModifier_v2_52.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_55();
    l0 = self.box_SoundModifier_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2058768000", "2058768000", "MIS_310_B50_Main", "box_Simple_Node_62.Out", "box_SoundModifier_v2_55.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_45();
    l0 = self.box_PositionModifier_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2121183081", "2121183081", "MIS_310_B50_Main", "box_Simple_Node_60.Out", "box_PositionModifier_v2_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|568130081", "568130081", "MIS_310_B50_Main", "box_OutputOrder_v2_32.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1688062722", "1688062722", "MIS_310_B50_Main", "box_OutputOrder_v2_32.Out", "box_Simple_Node_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_23_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_23;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|140285469", "140285469", "MIS_310_B50_Main", "box_GunsForHireSystemModifier_23.Disabled", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ConsoleCommand_v3_37_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = self.box_ConsoleCommand_v3_37;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1821924847", "1821924847", "MIS_310_B50_Main", "box_ConsoleCommand_v3_37.Execute", "box_Simple_Node_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_33_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_31();
    l0 = self.box_MessageListener_v3_33;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|353594959", "353594959", "MIS_310_B50_Main", "box_MessageListener_v3_33.Received", "box_SetBoolean_v2_31.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_Delay_v5_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|76567184", "76567184", "MIS_310_B50_Main", "box_Delay_v5_49.TimeElapsed", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_63_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_74();
    l0 = self.box_SpawnAI_Wave_v2_63;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|823346331", "823346331", "MIS_310_B50_Main", "box_SpawnAI_Wave_v2_63.LastWave_Cleanup", "box_BroadcastMessage_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_24_A_and_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|441655513", "441655513", "MIS_310_B50_Main", "box_Compare_Boolean_24.A_and_B", "box_OutputOrder_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_24_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_25();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|582588752", "582588752", "MIS_310_B50_Main", "box_Compare_Boolean_24.A_is_True", "box_Compare_Boolean_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_310_AnnouncerDialogs_72_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_MIS_310_AnnouncerDialogs_72;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1656779589", "1656779589", "MIS_310_B50_Main", "box_MIS_310_AnnouncerDialogs_72.Finished", "box_Delay_v5_49.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_BroadcastMessage_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_70();
    l0 = self.box_NavLinkModifier_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|748238222", "748238222", "MIS_310_B50_Main", "box_BroadcastMessage_75.Out", "box_NavLinkModifier_70.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1443037410", "1443037410", "MIS_310_B50_Main", "box_OutputOrder_v2_56.Out", "box_Delay_v5_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_36();
    l0 = self.box_MIS_310_AnnouncerDialogs_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1128302107", "1128302107", "MIS_310_B50_Main", "box_OutputOrder_v2_56.Out", "box_MIS_310_AnnouncerDialogs_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_BroadcastMessage_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|202904787", "202904787", "MIS_310_B50_Main", "box_BroadcastMessage_74.Out", "box_Simple_Node_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1270017502", "1270017502", "MIS_310_B50_Main", "box_OutputOrder_v2_82.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_81();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|896185131", "896185131", "MIS_310_B50_Main", "box_OutputOrder_v2_82.Out", "box_BroadcastMessage_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_45_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_48();
    l0 = self.box_PositionModifier_v2_45;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1356783515", "1356783515", "MIS_310_B50_Main", "box_PositionModifier_v2_45.Done", "box_RandomFloat_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_44_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_43();
    l0 = self.box_Bind_v4_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|519618655", "519618655", "MIS_310_B50_Main", "box_GetLocalPlayer_v2_44.Out", "box_Bind_v4_43.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_34_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|593145292", "593145292", "MIS_310_B50_Main", "box_SetBoolean_v2_34.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Endure_CORE_v3_13_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_22();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l1 = self.box_SoundModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2084111618", "2084111618", "MIS_310_B50_Main", "box_Brick_Endure_CORE_v3_13.Success", "box_SoundModifier_v2_22.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Brick_Endure_CORE_v3_13_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|255628297", "255628297", "MIS_310_B50_Main", "box_Brick_Endure_CORE_v3_13.Waves", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_66_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_63();
    l0 = self.box_Delay_v5_66;
    l1 = self.box_SpawnAI_Wave_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1300580502", "1300580502", "MIS_310_B50_Main", "box_Delay_v5_66.TimeElapsed", "box_SpawnAI_Wave_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|18664810", "18664810", "MIS_310_B50_Main", "box_ActivityInitialized_5.Out", "box_Simple_Node_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|149111088", "149111088", "MIS_310_B50_Main", "box_Delay_v5_28.TimeElapsed", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BonusPlanModifier_v3_42_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_17();
    l0 = self.box_BonusPlanModifier_v3_42;
    l1 = self.box_BonusPlanModifier_v3_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|342811486", "342811486", "MIS_310_B50_Main", "box_BonusPlanModifier_v3_42.Removed", "box_BonusPlanModifier_v3_17.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_BonusPlanModifier_v3_17_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_40();
    l0 = self.box_BonusPlanModifier_v3_17;
    l1 = self.box_BonusPlanModifier_v3_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1793577573", "1793577573", "MIS_310_B50_Main", "box_BonusPlanModifier_v3_17.Removed", "box_BonusPlanModifier_v3_40.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_13();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_Brick_Endure_CORE_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1537399743", "1537399743", "MIS_310_B50_Main", "box_Delay_v5_15.TimeElapsed", "box_Brick_Endure_CORE_v3_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2139769281", "2139769281", "MIS_310_B50_Main", "box_Delay_v5_57.TimeElapsed", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_71();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_MIS_310_AnnouncerDialogs_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2097456300", "2097456300", "MIS_310_B50_Main", "box_Delay_v5_39.TimeElapsed", "box_MIS_310_AnnouncerDialogs_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_BroadcastMessage_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_21();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1188310201", "1188310201", "MIS_310_B50_Main", "box_BroadcastMessage_19.Out", "box_BroadcastMessage_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = self.box_Delay_v5_58;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2118346051", "2118346051", "MIS_310_B50_Main", "box_Delay_v5_58.TimeElapsed", "box_Simple_Node_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_78_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_73();
    l0 = self.box_SoundModifier_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1016651860", "1016651860", "MIS_310_B50_Main", "box_MissionBlockLayer_78.Activated", "box_SoundModifier_v2_73.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_36_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_MIS_310_AnnouncerDialogs_36;
    l1 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|388372955", "388372955", "MIS_310_B50_Main", "box_MIS_310_AnnouncerDialogs_36.Finished", "box_Delay_v5_58.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_310_COMMON_JIP_Inventory_80_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_80;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|779983394", "779983394", "MIS_310_B50_Main", "box_MIS_310_COMMON_JIP_Inventory_80.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_66();
    l0 = self.box_Delay_v5_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2087352054", "2087352054", "MIS_310_B50_Main", "box_OutputOrder_v2_65.Out", "box_Delay_v5_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_64();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1970446127", "1970446127", "MIS_310_B50_Main", "box_OutputOrder_v2_65.Out", "box_BroadcastMessage_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1331373435", "1331373435", "MIS_310_B50_Main", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1795355778", "1795355778", "MIS_310_B50_Main", "box_OutputOrder_v2_1.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_4();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1089099783", "1089099783", "MIS_310_B50_Main", "box_OutputOrder_v2_12.Out", "box_BroadcastMessage_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1012769851", "1012769851", "MIS_310_B50_Main", "box_OutputOrder_v2_12.Out", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1202634539", "1202634539", "MIS_310_B50_Main", "box_OutputOrder_v2_12.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_DisableNavlinks_79_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_79;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|359234559", "359234559", "MIS_310_B50_Main", "box_MIS_310_COMMON_DisableNavlinks_79.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_BonusPlanModifier_v3_40_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_41();
    l0 = self.box_BonusPlanModifier_v3_40;
    l1 = self.box_BonusPlanModifier_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|915309485", "915309485", "MIS_310_B50_Main", "box_BonusPlanModifier_v3_40.Removed", "box_BonusPlanModifier_v3_41.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_71_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_MIS_310_AnnouncerDialogs_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1381034991", "1381034991", "MIS_310_B50_Main", "box_MIS_310_AnnouncerDialogs_71.Finished", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_14_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_SpawnAI_Wave_v2_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1724006245", "1724006245", "MIS_310_B50_Main", "box_SpawnAI_Wave_v2_14.NextWave", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_EnvSettings_69_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_77();
    l0 = self.box_MIS_310_EnvSettings_69;
    l1 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1340820373", "1340820373", "MIS_310_B50_Main", "box_MIS_310_EnvSettings_69.Enabled", "box_MIS_310_COMMON_RELOAD_InventoryBackup_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_31_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1155406683", "1155406683", "MIS_310_B50_Main", "box_SetBoolean_v2_31.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_51_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = self.box_GroupSizeListener_v6_51;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1891644232", "1891644232", "MIS_310_B50_Main", "box_GroupSizeListener_v6_51.MemberRemoved", "box_Simple_Node_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_70_Deactivated()
    local l0, l1;
    l0 = self.box_NavLinkModifier_70;
    l1 = self.box_MIS_310_EnvSettings_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1504752397", "1504752397", "MIS_310_B50_Main", "box_NavLinkModifier_70.Deactivated", "box_MIS_310_EnvSettings_69.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Compare_Boolean_25_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_72();
    l0 = self.box_MIS_310_AnnouncerDialogs_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|399143365", "399143365", "MIS_310_B50_Main", "box_Compare_Boolean_25.A_is_False", "box_MIS_310_AnnouncerDialogs_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_22_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_SoundModifier_v2_22;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1179382692", "1179382692", "MIS_310_B50_Main", "box_SoundModifier_v2_22.Started", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|98596149", "98596149", "MIS_310_B50_Main", "box_OutputOrder_v2_2.Out", "box_Print_v2_8.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|860561855", "860561855", "MIS_310_B50_Main", "box_OutputOrder_v2_2.Out", "box_ActivityEnd_3.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_RELOAD_InventoryBackup_77_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_77;
    l1 = self.box_MIS_310_COMMON_DisableNavlinks_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1204469453", "1204469453", "MIS_310_B50_Main", "box_MIS_310_COMMON_RELOAD_InventoryBackup_77.Out", "box_MIS_310_COMMON_DisableNavlinks_79.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MIS_310_COMMON_JIP_Inventory_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1189813454", "1189813454", "MIS_310_B50_Main", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MIS_310_COMMON_JIP_Inventory_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_76();
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1036592583", "1036592583", "MIS_310_B50_Main", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MissionBlockLayer_76.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|382550337", "382550337", "MIS_310_B50_Main", "box_Delay_v5_59.TimeElapsed", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_47_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_47_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_46();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1946239694", "1946239694", "MIS_310_B50_Main", "box_CreateVector3_47.Out", "box_PhysicsImpulse_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_73_Started()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_75();
    l0 = self.box_SoundModifier_v2_73;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|222962981", "222962981", "MIS_310_B50_Main", "box_SoundModifier_v2_73.Started", "box_BroadcastMessage_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_14();
    l0 = self.box_SpawnAI_Wave_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1692015292", "1692015292", "MIS_310_B50_Main", "box_OutputOrder_v2_18.Out", "box_SpawnAI_Wave_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_20();
    l0 = self.box_SoundModifier_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|968601012", "968601012", "MIS_310_B50_Main", "box_OutputOrder_v2_18.Out", "box_SoundModifier_v2_20.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_24();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1490403206", "1490403206", "MIS_310_B50_Main", "box_MultipleOR_27.Out", "box_Compare_Boolean_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_76_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_78();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|798781330", "798781330", "MIS_310_B50_Main", "box_MissionBlockLayer_76.Activated", "box_MissionBlockLayer_78.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_16_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_16_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_47();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|834591653", "834591653", "MIS_310_B50_Main", "box_CreateVector3_16.Out", "box_CreateVector3_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_26_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_31();
    l0 = self.box_MessageListener_v3_26;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|969694573", "969694573", "MIS_310_B50_Main", "box_MessageListener_v3_26.Received", "box_SetBoolean_v2_31.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_23();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_GunsForHireSystemModifier_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1741117567", "1741117567", "MIS_310_B50_Main", "box_MultipleOR_9.Out", "box_GunsForHireSystemModifier_23.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_48_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_48_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_16();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|788840229", "788840229", "MIS_310_B50_Main", "box_RandomFloat_v2_48.Out", "box_CreateVector3_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1375750068", "1375750068", "MIS_310_B50_Main", "box_BroadcastMessage_21.Out", "box_Delay_v5_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_26();
    l0 = self.box_MessageListener_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1163502729", "1163502729", "MIS_310_B50_Main", "box_OutputOrder_v2_29.Out", "box_MessageListener_v3_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_33();
    l0 = self.box_MessageListener_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|25604903", "25604903", "MIS_310_B50_Main", "box_OutputOrder_v2_29.Out", "box_MessageListener_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|@beat_end");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_11_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|@beatendcheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|@lastwave_cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|@sfx_crowd_negative");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|@sfx_crowd_positive");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|@throw_medkit");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|16972219");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_310_B50 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_41()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel4",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_55()
    local params;
    DrawTextToScreen("Comment: play cheer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: play cheer");
    params = {
        -- Pawns,
        [0] = "2109028732980224633",
        -- SoundId,
        [1] = "3112841793",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|61712360");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_23()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_37()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "dbg_skipbeat",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_33()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "mis310_mc_occupied",
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|306218867");
    l0:SetConnections({
    });
    params = {
        -- AngularAmplitude,
        [0] = 1,
        -- AngularVector,
        [1] = self._sld_vector3_box_CreateVector3_47,
        -- DirectionAmplitude,
        [2] = 20,
        -- DirectionVector,
        [4] = self._sld_vector3_box_CreateVector3_16,
        -- targets,
        [5] = "2109028339973913039",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_63()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2109070747317100860",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109070743846314222",
        -- opt_AttackerSpawner_3,
        [6] = "2109070743842119911",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|343916206");
    l0:SetConnections({
        -- A_and_B,
        [0] = self.f_box_Compare_Boolean_24_A_and_B,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_24_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isRoundFinished,
        -- B,
        [1] = self.isMonsterClosetsEmpty,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_72()
    local params;
    DrawTextToScreen("Comment: DLG : Hiding in closets", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Hiding in closets");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1084415721",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|367855659");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_75_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_listenbarrels_b50",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_52()
    local params;
    DrawTextToScreen("Comment: play boo", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: play boo");
    params = {
        -- Pawns,
        [0] = "2109028732980224633",
        -- SoundId,
        [1] = "1243693292",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|443406151");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|494160473");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_74_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_flamer_spawn_ne",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|499489574");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_45()
    local params;
    params = {
        -- blendTime,
        [1] = 0.2,
        -- endTarget,
        [4] = "2109028337562188234",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109028339973913039",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|542313039");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|605090989");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_20()
    local params;
    params = {
        -- Pawns,
        [0] = "2108489088603530931",
        -- SoundId,
        [1] = "3597183808",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_13()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = true,
        -- CompletePreviousObjective,
        [1] = true,
        -- FailArea,
        [2] = "2108103027788352400",
        -- Objective,
        [3] = {
            section = "Objectives",
            item = "MIS_310_B50_Survive3rdRound",
            id = "963907",
        },
        -- opt_ObjectiveFail,
        [5] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_ExitWarning",
            id = "426332",
        },
        -- WarningArea,
        [6] = "2108102826612755343",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_66()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|755455724");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_42()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel1",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_17()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel2",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1021716309");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "mis310_mc_forceclose",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1192096690");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_19_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_enable_SW",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_78()
    local params, l0;
    DrawTextToScreen("Comment: Enable Crowd Layer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Enable Crowd Layer");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1240166381");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_78_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181911775924266",
        -- missionLayerId,
        [1] = "63189111030665258",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_36()
    local params;
    DrawTextToScreen("Comment: DLG : Holy crap nuggets, that was some kinda round! Lolipop's shaping up to be a surprise ringer - but can they make it last?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Holy crap nuggets, that was some kinda round! Lolipop's shaping up to be a surprise ringer - but can they make it last?");
    params = {
        -- RelevancyTime,
        [0] = 30,
        -- SoundId,
        [1] = "1901638149",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1316824126");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1351370750");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1351768981");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2107644983575069435",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1440471674");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1445137921");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "mis310_flamer_spawn_sw",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_40()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel3",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_71()
    local params;
    DrawTextToScreen("Comment: DLG :We got some fucking barbecue on the way!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG :We got some fucking barbecue on the way!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "2004257878",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_14()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2107633336223558992",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2107633336229850455",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1539758909");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_51()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#F65AEFD4",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_70()
    local params;
    params = {
        -- Entity,
        [0] = "2108737028832111999",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1590335596");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_25_A_is_False,
    });
    params = {
        -- A,
        [0] = self.isMonsterClosetsEmpty,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_22()
    local params;
    params = {
        -- Pawns,
        [0] = "2108489088603530931",
        -- SoundId,
        [1] = "3625928733",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1611757039");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_77()
    local params;
    DrawTextToScreen("Comment: Only if RELOAD", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_COMMON_RELOAD_InventoryBackup')-- Comment: Only if RELOAD");
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1868039609");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_310_B50 Ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|1932243111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_47_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = -1,
        -- z,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_73()
    local params;
    params = {
        -- Pawns,
        [0] = "2109028732980224633",
        -- SoundId,
        [1] = "3950363582",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- EntityA,
        [1] = l0:GetDataOutValue(0),
        -- EntityB,
        [2] = "2108490826037376573",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2043387183");
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
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2059939147");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "mis310_startflamers",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2064747681");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_76_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305027444124",
        -- missionLayerId,
        [1] = "27160322612010360",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2072651698");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_16_Out,
    });
    params = {
        -- x,
        [0] = self._sld_Result_box_RandomFloat_v2_48,
        -- y,
        [1] = -1,
        -- z,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_26()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "mis310_mc_empty",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2091011874");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_48_Out,
    });
    params = {
        -- Max,
        [0] = 0.1,
        -- Min,
        [1] = -0.1,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2130888613");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_21_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_enable_NE",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B50.domino|@MIS_310_B50_Main|2132461883");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_44_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_Bind_v4_43;
    l1:GetLuaBox().EntityA = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isRoundFinished = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isMonsterClosetsEmpty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_47 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_16 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_48 = l0:GetDataOutValue(0);
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
