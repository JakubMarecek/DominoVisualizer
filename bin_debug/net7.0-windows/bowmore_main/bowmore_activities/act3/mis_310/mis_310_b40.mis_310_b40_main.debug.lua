LUAC�d -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b40.domino
-- User graph: MIS_310_B40_Main
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
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
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
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
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
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_Vfx.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1243693292.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3625928733.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2036639880.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3597183808.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1779532777.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3950363582.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1639732246.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1294359508.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3112841793.bnk]], "CSoundResource");
        cboxRes:LoadResource([[280530168.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1165604745.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b40.MIS_310_B40_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_Vfx.debug.lua")] = {
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
    self._name = "MIS_310_B40_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main";
    self.isMonsterClosetsEmpty = false;
    self.isRoundFinished = false;
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|23901499");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|29108043");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_SoundModifier_v2_13 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|34023706");
    l0:SetConnections({
    });
    self.box_BonusPlanModifier_v3_40 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|67620084");
    l0:SetConnections({
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|96360894");
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
    self.box_ActivityInitialized_9 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|132897489");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_9_Out,
    });
    self.box_SoundModifier_v2_99 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|164349765");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_99_Started,
    });
    self.box_MIS_310_AnnouncerDialogs_98 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|359231621");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_98_Finished,
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|374633270");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_SoundModifier_v2_37 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|439377987");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_91 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|544737672");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|618586838");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_16_NextWave,
    });
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|620032215");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_NavLinkModifier_55 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|697505529");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_55_Deactivated,
    });
    self.box_PositionModifier_v2_46 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|720036463");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_46_Done,
    });
    self.box_MIS_310_COMMON_DisableNavlinks_97 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua");
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_DisableNavlinks_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|729033542");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_DisableNavlinks_97_Out,
    });
    self.box_MIS_310_AnnouncerDialogs_77 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|740943614");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_77_Finished,
    });
    self.box_MIS_310_COMMON_JIP_Inventory_100 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua");
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_JIP_Inventory_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|781154642");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_JIP_Inventory_100_Out,
    });
    self.box_GunsForHireSystemModifier_18 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|895204898");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_18_Disabled,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|902730716");
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
    self.box_SpawnAI_Wave_v2_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|938059585");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_14_NextWave,
    });
    self.box_Brick_Endure_CORE_v3_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|985875926");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_17_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_17_Waves,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1001545082");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_73 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1030306421");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_73_LastWave_Cleanup,
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1061742077");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_Bind_v4_42 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1081300132");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_20 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1096949583");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_20_Received,
    });
    self.box_SoundModifier_v2_50 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1124282350");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_83 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1155645746");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_83_NextWave,
    });
    self.box_PlayDialog_v6_52 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1179093419");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_22 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1206014375");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_22_Received,
    });
    self.box_SpawnAI_Wave_v2_72 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1212943859");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_72_NextWave,
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1247711015");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_GroupSizeListener_v6_34 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1268254472");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_34_MemberRemoved,
    });
    self.box_MIS_310_AnnouncerDialogs_76 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1412969954");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_76_Finished,
    });
    self.box_CharacterLoadedIdListener_v2_36 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1470190548");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_36_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_36_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_36_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_36_LoadedIdReceived,
    });
    self.box_BonusPlanModifier_v3_43 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1498632526");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_43_Removed,
    });
    self.box_MIS_310_COMMON_Vfx_23 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_Vfx.debug.lua");
    l0 = self.box_MIS_310_COMMON_Vfx_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_Vfx_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1500028767");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_Vfx_23_Out,
    });
    self.box_MIS_310_AnnouncerDialogs_53 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1594118663");
    l0:SetConnections({
    });
    self.box_Delay_v5_74 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1623031080");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_74_TimeElapsed,
    });
    self.box_MIS_310_EnvSettings_93 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
    l0 = self.box_MIS_310_EnvSettings_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_EnvSettings_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1626941836");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MIS_310_EnvSettings_93_Enabled,
    });
    self.box_BonusPlanModifier_v3_38 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1788704225");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_38_Removed,
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1812524302");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_MIS_310_COMMON_RELOAD_InventoryBackup_94 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua");
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_RELOAD_InventoryBackup_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1920639949");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_RELOAD_InventoryBackup_94_Out,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1930328947");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_MIS_310_COMMON_Vfx_88 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_Vfx.debug.lua");
    l0 = self.box_MIS_310_COMMON_Vfx_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_Vfx_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1941026108");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_Vfx_88_Out,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2008818018");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_SoundModifier_v2_15 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2046512282");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_15_Started,
    });
    self.box_BonusPlanModifier_v3_39 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2057290685");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_39_Removed,
    });
    self.box_ConsoleCommand_v3_31 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2065117082");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_31_Execute,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2102309492", "2102309492", "MIS_310_B40_Main", "In", "box_OutputOrder_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MIS_310_COMMON_Vfx_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1067675524", "1067675524", "MIS_310_B40_Main", "box_Simple_Node_11.Out", "box_MIS_310_COMMON_Vfx_88.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BonusPlanModifier_v3_39();
    l0 = self.box_BonusPlanModifier_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1937390211", "1937390211", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_BonusPlanModifier_v3_39.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeListener_v6_34();
    l0 = self.box_GroupSizeListener_v6_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|640112992", "640112992", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_GroupSizeListener_v6_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_PawnInvincibleState_v2_92();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1942253712", "1942253712", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_PawnInvincibleState_v2_92.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MessageListener_v3_22();
    l0 = self.box_MessageListener_v3_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1655373078", "1655373078", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_MessageListener_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MessageListener_v3_20();
    l0 = self.box_MessageListener_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1315610616", "1315610616", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_MessageListener_v3_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ConsoleCommand_v3_31();
    l0 = self.box_ConsoleCommand_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1559147213", "1559147213", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_ConsoleCommand_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|608806272", "608806272", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_Delay_v5_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_GetLocalPlayer_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|408944463", "408944463", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_GetLocalPlayer_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Brick_Endure_CORE_v3_17();
    l0 = self.box_Brick_Endure_CORE_v3_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1503919653", "1503919653", "MIS_310_B40_Main", "box_Simple_Node_10.Out", "box_Brick_Endure_CORE_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|939339274", "939339274", "MIS_310_B40_Main", "box_Simple_Node_30.Out", "box_SetBoolean_v2_28.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_86_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_17();
    l0 = self.box_Brick_Endure_CORE_v3_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2026692744", "2026692744", "MIS_310_B40_Main", "box_Simple_Node_86.Out", "box_Brick_Endure_CORE_v3_17.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_50();
    l0 = self.box_SoundModifier_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1128097183", "1128097183", "MIS_310_B40_Main", "box_Simple_Node_57.Out", "box_SoundModifier_v2_50.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_37();
    l0 = self.box_SoundModifier_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1309133387", "1309133387", "MIS_310_B40_Main", "box_Simple_Node_56.Out", "box_SoundModifier_v2_37.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_32();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|259443042", "259443042", "MIS_310_B40_Main", "box_Simple_Node_85.Out", "box_BroadcastMessage_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_46();
    l0 = self.box_PositionModifier_v2_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|14349787", "14349787", "MIS_310_B40_Main", "box_Simple_Node_49.Out", "box_PositionModifier_v2_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box_Delay_v5_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|774647422", "774647422", "MIS_310_B40_Main", "box_Delay_v5_82.TimeElapsed", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_36();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_CharacterLoadedIdListener_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|662838657", "662838657", "MIS_310_B40_Main", "box_Delay_v5_51.TimeElapsed", "box_CharacterLoadedIdListener_v2_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_29_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|368257238", "368257238", "MIS_310_B40_Main", "box_SetBoolean_v2_29.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_26();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1330569990", "1330569990", "MIS_310_B40_Main", "box_MultipleOR_27.Out", "box_Compare_Boolean_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = self.box_ActivityInitialized_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1963104511", "1963104511", "MIS_310_B40_Main", "box_ActivityInitialized_9.Out", "box_Simple_Node_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|20902160", "20902160", "MIS_310_B40_Main", "box_OutputOrder_v2_24.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1970558706", "1970558706", "MIS_310_B40_Main", "box_OutputOrder_v2_24.Out", "box_Simple_Node_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_99_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_99;
    l1 = self.box_MIS_310_EnvSettings_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1130903364", "1130903364", "MIS_310_B40_Main", "box_SoundModifier_v2_99.Started", "box_MIS_310_EnvSettings_93.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_BroadcastMessage_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1685289779", "1685289779", "MIS_310_B40_Main", "box_BroadcastMessage_1.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_99();
    l0 = self.box_SoundModifier_v2_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|146790371", "146790371", "MIS_310_B40_Main", "box_BroadcastMessage_19.Out", "box_SoundModifier_v2_99.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_25_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_98();
    l0 = self.box_MIS_310_AnnouncerDialogs_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|430041801", "430041801", "MIS_310_B40_Main", "box_Compare_Boolean_25.A_is_False", "box_MIS_310_AnnouncerDialogs_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_41_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_42();
    l0 = self.box_Bind_v4_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1349211215", "1349211215", "MIS_310_B40_Main", "box_GetLocalPlayer_v2_41.Out", "box_Bind_v4_42.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_98_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_MIS_310_AnnouncerDialogs_98;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1605880126", "1605880126", "MIS_310_B40_Main", "box_MIS_310_AnnouncerDialogs_98.Finished", "box_Delay_v5_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_14();
    l0 = self.box_Delay_v5_81;
    l1 = self.box_SpawnAI_Wave_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|125013609", "125013609", "MIS_310_B40_Main", "box_Delay_v5_81.TimeElapsed", "box_SpawnAI_Wave_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_83();
    l0 = self.box_SpawnAI_Wave_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1964858009", "1964858009", "MIS_310_B40_Main", "box_OutputOrder_v2_101.Out", "box_SpawnAI_Wave_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_53();
    l0 = self.box_MIS_310_AnnouncerDialogs_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|342004254", "342004254", "MIS_310_B40_Main", "box_OutputOrder_v2_101.Out", "box_MIS_310_AnnouncerDialogs_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_16_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_74();
    l0 = self.box_SpawnAI_Wave_v2_16;
    l1 = self.box_Delay_v5_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|550718217", "550718217", "MIS_310_B40_Main", "box_SpawnAI_Wave_v2_16.NextWave", "box_Delay_v5_74.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MIS_310_COMMON_JIP_Inventory_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|854403709", "854403709", "MIS_310_B40_Main", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MIS_310_COMMON_JIP_Inventory_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_95();
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|798227235", "798227235", "MIS_310_B40_Main", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MissionBlockLayer_95.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_45_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_45_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_47();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|410254877", "410254877", "MIS_310_B40_Main", "box_CreateVector3_45.Out", "box_PhysicsImpulse_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_55_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_94();
    l0 = self.box_NavLinkModifier_55;
    l1 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1066197616", "1066197616", "MIS_310_B40_Main", "box_NavLinkModifier_55.Deactivated", "box_MIS_310_COMMON_RELOAD_InventoryBackup_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_46_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_48();
    l0 = self.box_PositionModifier_v2_46;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|368920222", "368920222", "MIS_310_B40_Main", "box_PositionModifier_v2_46.Done", "box_RandomFloat_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|872016132", "872016132", "MIS_310_B40_Main", "box_OutputOrder_v2_66.Out", "box_Delay_v5_90.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_310_COMMON_DisableNavlinks_97_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_97;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1000157912", "1000157912", "MIS_310_B40_Main", "box_MIS_310_COMMON_DisableNavlinks_97.Out", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_310_AnnouncerDialogs_77_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = self.box_MIS_310_AnnouncerDialogs_77;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1464817347", "1464817347", "MIS_310_B40_Main", "box_MIS_310_AnnouncerDialogs_77.Finished", "box_Simple_Node_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_JIP_Inventory_100_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_100;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1102704902", "1102704902", "MIS_310_B40_Main", "box_MIS_310_COMMON_JIP_Inventory_100.Out", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GunsForHireSystemModifier_18_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_18;
    l1 = self.box_ActivityInitialized_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|180755547", "180755547", "MIS_310_B40_Main", "box_GunsForHireSystemModifier_18.Disabled", "box_ActivityInitialized_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_18();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_GunsForHireSystemModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1527766700", "1527766700", "MIS_310_B40_Main", "box_MultipleOR_4.Out", "box_GunsForHireSystemModifier_18.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_14_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_73();
    l0 = self.box_SpawnAI_Wave_v2_14;
    l1 = self.box_SpawnAI_Wave_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|116458028", "116458028", "MIS_310_B40_Main", "box_SpawnAI_Wave_v2_14.NextWave", "box_SpawnAI_Wave_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Endure_CORE_v3_17_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_15();
    l0 = self.box_Brick_Endure_CORE_v3_17;
    l1 = self.box_SoundModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|466361627", "466361627", "MIS_310_B40_Main", "box_Brick_Endure_CORE_v3_17.Success", "box_SoundModifier_v2_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Brick_Endure_CORE_v3_17_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_Brick_Endure_CORE_v3_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1796269121", "1796269121", "MIS_310_B40_Main", "box_Brick_Endure_CORE_v3_17.Waves", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1924616950", "1924616950", "MIS_310_B40_Main", "box_Delay_v5_35.TimeElapsed", "box_OutputOrder_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_73_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_86();
    l0 = self.box_SpawnAI_Wave_v2_73;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|532652574", "532652574", "MIS_310_B40_Main", "box_SpawnAI_Wave_v2_73.LastWave_Cleanup", "box_Simple_Node_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_91();
    l0 = self.box_Delay_v5_90;
    l1 = self.box_MIS_310_AnnouncerDialogs_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|47549698", "47549698", "MIS_310_B40_Main", "box_Delay_v5_90.TimeElapsed", "box_MIS_310_AnnouncerDialogs_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_26_A_and_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|858309403", "858309403", "MIS_310_B40_Main", "box_Compare_Boolean_26.A_and_B", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_26_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_25();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1473860812", "1473860812", "MIS_310_B40_Main", "box_Compare_Boolean_26.A_is_True", "box_Compare_Boolean_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_48_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_48_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_44();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1845825858", "1845825858", "MIS_310_B40_Main", "box_RandomFloat_v2_48.Out", "box_CreateVector3_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_20_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_29();
    l0 = self.box_MessageListener_v3_20;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|835796567", "835796567", "MIS_310_B40_Main", "box_MessageListener_v3_20.Received", "box_SetBoolean_v2_29.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1112378302", "1112378302", "MIS_310_B40_Main", "box_OutputOrder_v2_2.Out", "box_Print_v2_5.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|269928097", "269928097", "MIS_310_B40_Main", "box_OutputOrder_v2_2.Out", "box_ActivityEnd_3.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_83_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_SpawnAI_Wave_v2_83;
    l1 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1065122399", "1065122399", "MIS_310_B40_Main", "box_SpawnAI_Wave_v2_83.NextWave", "box_Delay_v5_75.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_96_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_19();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|729751430", "729751430", "MIS_310_B40_Main", "box_MissionBlockLayer_96.Activated", "box_BroadcastMessage_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_16();
    l0 = self.box_SpawnAI_Wave_v2_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1951797995", "1951797995", "MIS_310_B40_Main", "box_OutputOrder_v2_12.Out", "box_SpawnAI_Wave_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1434149858", "1434149858", "MIS_310_B40_Main", "box_OutputOrder_v2_12.Out", "box_SoundModifier_v2_13.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MessageListener_v3_22_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_29();
    l0 = self.box_MessageListener_v3_22;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2010978987", "2010978987", "MIS_310_B40_Main", "box_MessageListener_v3_22.Received", "box_SetBoolean_v2_29.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_72_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_SpawnAI_Wave_v2_72;
    l1 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|867617350", "867617350", "MIS_310_B40_Main", "box_SpawnAI_Wave_v2_72.NextWave", "box_Delay_v5_82.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2016269297", "2016269297", "MIS_310_B40_Main", "box_OutputOrder_v2_58.Out", "box_Delay_v5_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_77();
    l0 = self.box_MIS_310_AnnouncerDialogs_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|489743135", "489743135", "MIS_310_B40_Main", "box_OutputOrder_v2_58.Out", "box_MIS_310_AnnouncerDialogs_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_49();
    l0 = self.box_Delay_v5_54;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1091911300", "1091911300", "MIS_310_B40_Main", "box_Delay_v5_54.TimeElapsed", "box_Simple_Node_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_34_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_56();
    l0 = self.box_GroupSizeListener_v6_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1685487356", "1685487356", "MIS_310_B40_Main", "box_GroupSizeListener_v6_34.MemberRemoved", "box_Simple_Node_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1702564415", "1702564415", "MIS_310_B40_Main", "box_OutputOrder_v2_103.Out", "box_Simple_Node_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_102();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|159319123", "159319123", "MIS_310_B40_Main", "box_OutputOrder_v2_103.Out", "box_BroadcastMessage_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|960467762", "960467762", "MIS_310_B40_Main", "box_OutputOrder_v2_80.Out", "box_Simple_Node_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1758745876", "1758745876", "MIS_310_B40_Main", "box_OutputOrder_v2_80.Out", "box_Delay_v5_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_76_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_MIS_310_AnnouncerDialogs_76;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1267155358", "1267155358", "MIS_310_B40_Main", "box_MIS_310_AnnouncerDialogs_76.Finished", "box_Delay_v5_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CreateVector3_44_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_44_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_45();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1489229712", "1489229712", "MIS_310_B40_Main", "box_CreateVector3_44.Out", "box_CreateVector3_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_36_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_36_LoadedIdReceived();
    params = self:OnEnter_box_PlayDialog_v6_52();
    l0 = self.box_CharacterLoadedIdListener_v2_36;
    l1 = self.box_PlayDialog_v6_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|99469392", "99469392", "MIS_310_B40_Main", "box_CharacterLoadedIdListener_v2_36.LoadedIdReceived", "box_PlayDialog_v6_52.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_BonusPlanModifier_v3_43_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_38();
    l0 = self.box_BonusPlanModifier_v3_43;
    l1 = self.box_BonusPlanModifier_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1688574708", "1688574708", "MIS_310_B40_Main", "box_BonusPlanModifier_v3_43.Removed", "box_BonusPlanModifier_v3_38.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_MIS_310_COMMON_Vfx_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_55();
    l0 = self.box_MIS_310_COMMON_Vfx_23;
    l1 = self.box_NavLinkModifier_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|831758032", "831758032", "MIS_310_B40_Main", "box_MIS_310_COMMON_Vfx_23.Out", "box_NavLinkModifier_55.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_20();
    l0 = self.box_MessageListener_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1627768631", "1627768631", "MIS_310_B40_Main", "box_OutputOrder_v2_21.Out", "box_MessageListener_v3_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_22();
    l0 = self.box_MessageListener_v3_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1423400990", "1423400990", "MIS_310_B40_Main", "box_OutputOrder_v2_21.Out", "box_MessageListener_v3_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_74_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_72();
    l0 = self.box_Delay_v5_74;
    l1 = self.box_SpawnAI_Wave_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2108022870", "2108022870", "MIS_310_B40_Main", "box_Delay_v5_74.TimeElapsed", "box_SpawnAI_Wave_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_310_EnvSettings_93_Enabled()
    local l0, l1;
    l0 = self.box_MIS_310_EnvSettings_93;
    l1 = self.box_MIS_310_COMMON_Vfx_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|482266201", "482266201", "MIS_310_B40_Main", "box_MIS_310_EnvSettings_93.Enabled", "box_MIS_310_COMMON_Vfx_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_95_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_96();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|137337392", "137337392", "MIS_310_B40_Main", "box_MissionBlockLayer_95.Activated", "box_MissionBlockLayer_96.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BonusPlanModifier_v3_38_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_40();
    l0 = self.box_BonusPlanModifier_v3_38;
    l1 = self.box_BonusPlanModifier_v3_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|849397074", "849397074", "MIS_310_B40_Main", "box_BonusPlanModifier_v3_38.Removed", "box_BonusPlanModifier_v3_40.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_76();
    l0 = self.box_Delay_v5_75;
    l1 = self.box_MIS_310_AnnouncerDialogs_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1976653847", "1976653847", "MIS_310_B40_Main", "box_Delay_v5_75.TimeElapsed", "box_MIS_310_AnnouncerDialogs_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_COMMON_RELOAD_InventoryBackup_94_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_94;
    l1 = self.box_MIS_310_COMMON_DisableNavlinks_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|564416852", "564416852", "MIS_310_B40_Main", "box_MIS_310_COMMON_RELOAD_InventoryBackup_94.Out", "box_MIS_310_COMMON_DisableNavlinks_97.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|90180524", "90180524", "MIS_310_B40_Main", "box_Delay_v5_59.TimeElapsed", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1368401713", "1368401713", "MIS_310_B40_Main", "box_OutputOrder_v2_7.Out", "box_ActivityAcknowledgeGate_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1338260870", "1338260870", "MIS_310_B40_Main", "box_OutputOrder_v2_7.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_Vfx_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_1();
    l0 = self.box_MIS_310_COMMON_Vfx_88;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1001882890", "1001882890", "MIS_310_B40_Main", "box_MIS_310_COMMON_Vfx_88.Out", "box_BroadcastMessage_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_28_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1121539737", "1121539737", "MIS_310_B40_Main", "box_SetBoolean_v2_28.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = self.box_Delay_v5_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1307456484", "1307456484", "MIS_310_B40_Main", "box_Delay_v5_78.TimeElapsed", "box_OutputOrder_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_SoundModifier_v2_15;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1835465599", "1835465599", "MIS_310_B40_Main", "box_SoundModifier_v2_15.Started", "box_Delay_v5_59.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_BonusPlanModifier_v3_39_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_43();
    l0 = self.box_BonusPlanModifier_v3_39;
    l1 = self.box_BonusPlanModifier_v3_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|88817661", "88817661", "MIS_310_B40_Main", "box_BonusPlanModifier_v3_39.Removed", "box_BonusPlanModifier_v3_43.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_BroadcastMessage_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1555217506", "1555217506", "MIS_310_B40_Main", "box_BroadcastMessage_32.Out", "box_OutputOrder_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_31_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = self.box_ConsoleCommand_v3_31;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1718752629", "1718752629", "MIS_310_B40_Main", "box_ConsoleCommand_v3_31.Execute", "box_Simple_Node_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|@beat_end");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|@beatendcheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|@lastwave_cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_86_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|@sfx_crowd_negative");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|@sfx_crowd_positive");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_56_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|@throw_barrels");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|@throw_medkit");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_49_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_13()
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

function export:OnEnter_box_BonusPlanModifier_v3_40()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel4",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|85782732");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|134668356");
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

function export:OnEnter_box_SoundModifier_v2_99()
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

function export:OnEnter_box_BroadcastMessage_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|243283631");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_1_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_disable_monsterclosets",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|253373555");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_19_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_enable_monsterclosets",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|263426172");
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

function export:OnEnter_box_BroadcastMessage_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|285683943");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "mis310_mc_forceclose",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|325117832");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2107644983575069435",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|339856664");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_98()
    local params;
    DrawTextToScreen("Comment: DLG : Hiding in closets", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Hiding in closets");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1779532777",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_37()
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

function export:OnEnter_box_MIS_310_AnnouncerDialogs_91()
    local params;
    DrawTextToScreen("Comment: DLG : Careful, that barrel balloon's gonna pop!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Careful, that barrel balloon's gonna pop!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "280530168",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|579901829");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_16()
    local params;
    DrawTextToScreen("Comment: Spawn 1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Spawn 1");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2107633248898149621",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|647823271");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_45_Out,
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

function export:OnEnter_box_NavLinkModifier_55()
    local params;
    params = {
        -- Entity,
        [0] = "2108737028832111999",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_46()
    local params;
    params = {
        -- blendTime,
        [1] = 0.2,
        -- endTarget,
        [4] = "2109028337562188234",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109028339718060493",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|720798294");
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
                [3] = self.f_box_OutputOrder_v2_66_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_77()
    local params;
    DrawTextToScreen("Comment: DLG : What a round", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : What a round");
    params = {
        -- RelevancyTime,
        [0] = 10,
        -- SoundId,
        [1] = "1294359508",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|809181740");
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
        [8] = "MIS_310_B40 Ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_18()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_14()
    local params;
    DrawTextToScreen("Comment: Spawn 3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Spawn 3");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2109070278393895860",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- opt_AttackerSpawner_2,
        [5] = "2109070281829030889",
        -- opt_AttackerSpawner_3,
        [6] = "2109070282175060994",
        -- Timer,
        [14] = 4,
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_17()
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
            item = "MIS_310_B40_Survive2ndRound",
            id = "963906",
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

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_73()
    local params;
    DrawTextToScreen("Comment: Spawn 4", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Spawn 4");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2109070171097307568",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_90()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1063656310");
    l0:SetConnections({
        -- A_and_B,
        [0] = self.f_box_Compare_Boolean_26_A_and_B,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_26_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isRoundFinished,
        -- B,
        [1] = self.isMonsterClosetsEmpty,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1071106400");
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

function export:OnEnter_box_Bind_v4_42()
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

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1088834262");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "mis310_mc_empty",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_50()
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

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1147004243");
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

function export:OnEnter_box_SpawnAI_Wave_v2_83()
    local params;
    DrawTextToScreen("Comment: Spawn 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Spawn 2");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2109070903114526620",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109070903116623779",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_96()
    local params, l0;
    DrawTextToScreen("Comment: Enable Crowd Layer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Enable Crowd Layer");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1170859574");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_96_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181911775924266",
        -- missionLayerId,
        [1] = "63189111030665258",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_52()
    local params, l0;
    DrawTextToScreen("Comment: DLG : In the nuts. Ya hear me? The nuts!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : In the nuts. Ya hear me? The nuts!");
    l0 = self.box_CharacterLoadedIdListener_v2_36;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1639732246",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1181270067");
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
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_22()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "mis310_mc_occupied",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_72()
    local params;
    DrawTextToScreen("Comment: Spawn 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Spawn 2");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2107633245997788358",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109070246294887296",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1245741369");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_34()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#F65AEFD4",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1283408378");
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

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1311839653");
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

function export:OnEnter_box_MIS_310_AnnouncerDialogs_76()
    local params;
    DrawTextToScreen("Comment: DLG : Drop candies", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Drop candies");
    params = {
        -- RelevancyTime,
        [0] = 10,
        -- SoundId,
        [1] = "2036639880",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1448791051");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_44_Out,
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_43()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel2",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1517995560");
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

function export:OnEnter_box_MIS_310_AnnouncerDialogs_53()
    local params;
    DrawTextToScreen("Comment: DLG : We're partway through the long haul and Lollipop's got no sign of slowing down! What're they running on, battery acid?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : We're partway through the long haul and Lollipop's got no sign of slowing down! What're they running on, battery acid?");
    params = {
        -- RelevancyTime,
        [0] = 30,
        -- SoundId,
        [1] = "1165604745",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1600877488");
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
        [8] = "MIS_310_B40 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_74()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1780028300");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_95_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305027444124",
        -- missionLayerId,
        [1] = "27160322612010360",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_38()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel3",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_94()
    local params;
    DrawTextToScreen("Comment: Only if RELOAD", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_COMMON_RELOAD_InventoryBackup')-- Comment: Only if RELOAD");
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1933520743");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1935471089");
    l0:SetConnections({
    });
    params = {
        -- AngularAmplitude,
        [0] = 1,
        -- AngularVector,
        [1] = self._sld_vector3_box_CreateVector3_45,
        -- DirectionAmplitude,
        [2] = 20,
        -- DirectionVector,
        [4] = self._sld_vector3_box_CreateVector3_44,
        -- targets,
        [5] = "2109028339718060493",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|1969126268");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_15()
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

function export:OnEnter_box_BonusPlanModifier_v3_39()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel1",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b40.domino|@MIS_310_B40_Main|2064762237");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_32_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_listenbarrels_b40",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_31()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "dbg_skipbeat",
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isMonsterClosetsEmpty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_41_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_Bind_v4_42;
    l1:GetLuaBox().EntityA = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_45 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_48 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_44 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_36_LoadedIdReceived()
    local l0, l1;
    l0 = self.box_CharacterLoadedIdListener_v2_36;
    l1 = self.box_PlayDialog_v6_52;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isRoundFinished = l0:GetDataOutValue(0);
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
