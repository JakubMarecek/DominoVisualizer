LUACa -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b30.domino
-- User graph: MIS_310_B30_Main
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
        cboxRes:LoadResource([[2594281451.bnk]], "CSoundResource");
        cboxRes:LoadResource([[255965798.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3597183808.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1084415721.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1243693292.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3112841793.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2806914641.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3673287441.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3625928733.bnk]], "CSoundResource");
        cboxRes:LoadResource([[750185539.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3950363582.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3950404772.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4043051469.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b30.MIS_310_B30_Main.debug.lua")] = {
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
    self._name = "MIS_310_B30_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main";
    self.isMonsterClosetsEmpty = false;
    self.isRoundFinished = false;
    self.box_MIS_310_COMMON_Vfx_81 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_Vfx.debug.lua");
    l0 = self.box_MIS_310_COMMON_Vfx_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_Vfx_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|28408413");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_Vfx_81_Out,
    });
    self.box_SpawnAI_Wave_v2_54 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|79165491");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_54_NextWave,
    });
    self.box_MIS_310_COMMON_DisableNavlinks_84 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua");
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_DisableNavlinks_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|108824324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_DisableNavlinks_84_Out,
    });
    self.box_GroupSizeListener_v6_53 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|132212902");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_53_MemberRemoved,
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|150640710");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|170892716");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|274326467");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_SoundModifier_v2_28 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|318121487");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_71 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|326268464");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_71_Finished,
    });
    self.box_NavLinkModifier_69 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|403032250");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_69_Deactivated,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|412295232");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|458209946");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_SoundModifier_v2_37 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|488241395");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_37_Started,
    });
    self.box_MIS_310_AnnouncerDialogs_70 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|537165138");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_70_Finished,
    });
    self.box_ConsoleCommand_v3_76 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|601830155");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_76_Execute,
    });
    self.box_MIS_310_COMMON_RELOAD_InventoryBackup_82 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua");
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_RELOAD_InventoryBackup_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|622456095");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_RELOAD_InventoryBackup_82_Out,
    });
    self.box_PositionModifier_v2_51 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|662639402");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_51_Done,
    });
    self.box_MIS_310_AnnouncerDialogs_74 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|731524832");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_74_Finished,
    });
    self.box_Bind_v4_44 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|814054014");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_73 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|831456556");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_73_Finished,
    });
    self.box_SpawnAI_Wave_v2_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|840223979");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_13_NextWave,
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|873627547");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_42 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|913794760");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_42_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_42_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_42_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_42_LoadedIdReceived,
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|955127895");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1029330365");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_GunsForHireSystemModifier_38 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1037486012");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_38_Disabled,
    });
    self.box_Brick_Endure_CORE_v3_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1045507887");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_9_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_9_Waves,
    });
    self.box_SoundModifier_v2_90 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1107823249");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_90_Started,
    });
    self.box_MessageListener_v3_26 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1125664787");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_26_Received,
    });
    self.box_ConsoleCommand_v3_77 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1132398527");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_77_Execute,
    });
    self.box_PlayDialog_v6_39 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1149988467");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1280207086");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_10_NextWave,
    });
    self.box_MessageListener_v3_24 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1283533562");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_24_Received,
    });
    self.box_SpawnAI_Wave_v2_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1298698005");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_29_LastWave_Cleanup,
    });
    self.box_BonusPlanModifier_v3_49 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1298720769");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_49_Removed,
    });
    self.box_ConsoleCommand_v3_75 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1370549824");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_75_Execute,
    });
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1418068425");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1430993904");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_30_NextWave,
    });
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1625576252");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_16 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1763173643");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_16_Execute,
    });
    self.box_MIS_310_EnvSettings_68 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
    l0 = self.box_MIS_310_EnvSettings_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_EnvSettings_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1766456489");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MIS_310_EnvSettings_68_Enabled,
    });
    self.box_BonusPlanModifier_v3_47 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1779056766");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_47_Removed,
    });
    self.box_BonusPlanModifier_v3_48 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1818543704");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_48_Removed,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1841891019");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_MultipleOR_80 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1850215742");
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
        [0] = self.f_box_MultipleOR_80_Out,
    });
    self.box_SoundModifier_v2_22 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1898233045");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_57 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1940489460");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_57_Finished,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1994615789");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1999614899");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_MIS_310_COMMON_JIP_Inventory_89 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua");
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_JIP_Inventory_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2016761689");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_JIP_Inventory_89_Out,
    });
    self.box_BonusPlanModifier_v3_50 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2063467101");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_72 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2110024212");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_72_Finished,
    });
    self.box_SoundModifier_v2_59 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2112470951");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1339487297", "1339487297", "MIS_310_B30_Main", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1315814904", "1315814904", "MIS_310_B30_Main", "box_Simple_Node_11.Out", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_53();
    l0 = self.box_GroupSizeListener_v6_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1245459089", "1245459089", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_GroupSizeListener_v6_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MessageListener_v3_24();
    l0 = self.box_MessageListener_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1337472068", "1337472068", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_MessageListener_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GetLocalPlayer_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1496147874", "1496147874", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_GetLocalPlayer_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_PawnInvincibleState_v2_66();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|780103713", "780103713", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_PawnInvincibleState_v2_66.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MessageListener_v3_26();
    l0 = self.box_MessageListener_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|188335733", "188335733", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_MessageListener_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1350528052", "1350528052", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_ConsoleCommand_v3_16();
    l0 = self.box_ConsoleCommand_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1561888136", "1561888136", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_ConsoleCommand_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_BroadcastMessage_15();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|748898300", "748898300", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_BroadcastMessage_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_BonusPlanModifier_v3_47();
    l0 = self.box_BonusPlanModifier_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|197806455", "197806455", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_BonusPlanModifier_v3_47.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|310365687", "310365687", "MIS_310_B30_Main", "box_Simple_Node_12.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|539097505", "539097505", "MIS_310_B30_Main", "box_Simple_Node_35.Out", "box_SetBoolean_v2_27.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_9();
    l0 = self.box_Brick_Endure_CORE_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1307693345", "1307693345", "MIS_310_B30_Main", "box_Simple_Node_67.Out", "box_Brick_Endure_CORE_v3_9.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_59();
    l0 = self.box_SoundModifier_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|669208065", "669208065", "MIS_310_B30_Main", "box_Simple_Node_63.Out", "box_SoundModifier_v2_59.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1411708487", "1411708487", "MIS_310_B30_Main", "box_Simple_Node_62.Out", "box_SoundModifier_v2_60.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_70();
    l0 = self.box_MIS_310_AnnouncerDialogs_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1001089104", "1001089104", "MIS_310_B30_Main", "box_Simple_Node_61.Out", "box_MIS_310_AnnouncerDialogs_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_34_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_71();
    l0 = self.box_MIS_310_AnnouncerDialogs_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1349903899", "1349903899", "MIS_310_B30_Main", "box_Compare_Boolean_34.A_is_False", "box_MIS_310_AnnouncerDialogs_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_COMMON_Vfx_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_69();
    l0 = self.box_MIS_310_COMMON_Vfx_81;
    l1 = self.box_NavLinkModifier_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1607208602", "1607208602", "MIS_310_B30_Main", "box_MIS_310_COMMON_Vfx_81.Out", "box_NavLinkModifier_69.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1790901002", "1790901002", "MIS_310_B30_Main", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|999892919", "999892919", "MIS_310_B30_Main", "box_OutputOrder_v2_3.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_54_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_30();
    l0 = self.box_SpawnAI_Wave_v2_54;
    l1 = self.box_SpawnAI_Wave_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2053756887", "2053756887", "MIS_310_B30_Main", "box_SpawnAI_Wave_v2_54.NextWave", "box_SpawnAI_Wave_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_310_COMMON_DisableNavlinks_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_83();
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_84;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1552828319", "1552828319", "MIS_310_B30_Main", "box_MIS_310_COMMON_DisableNavlinks_84.Out", "box_MissionBlockLayer_83.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_53_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = self.box_GroupSizeListener_v6_53;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|51764644", "51764644", "MIS_310_B30_Main", "box_GroupSizeListener_v6_53.MemberRemoved", "box_Simple_Node_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|755967946", "755967946", "MIS_310_B30_Main", "box_OutputOrder_v2_19.Out", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|240832144", "240832144", "MIS_310_B30_Main", "box_OutputOrder_v2_19.Out", "box_Simple_Node_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = self.box_Delay_v5_55;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|47143555", "47143555", "MIS_310_B30_Main", "box_Delay_v5_55.TimeElapsed", "box_Simple_Node_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_31();
    l0 = self.box_MultipleOR_33;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1662687556", "1662687556", "MIS_310_B30_Main", "box_MultipleOR_33.Out", "box_Compare_Boolean_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_42();
    l0 = self.box_Delay_v5_20;
    l1 = self.box_CharacterLoadedIdListener_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|540036595", "540036595", "MIS_310_B30_Main", "box_Delay_v5_20.TimeElapsed", "box_CharacterLoadedIdListener_v2_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PhysicsImpulse_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1638999415", "1638999415", "MIS_310_B30_Main", "box_PhysicsImpulse_40.Out", "box_Delay_v5_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1600258501", "1600258501", "MIS_310_B30_Main", "box_OutputOrder_v2_1.Out", "box_Print_v2_4.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|745139146", "745139146", "MIS_310_B30_Main", "box_OutputOrder_v2_1.Out", "box_ActivityEnd_7.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_310_AnnouncerDialogs_71_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_MIS_310_AnnouncerDialogs_71;
    l1 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1058690695", "1058690695", "MIS_310_B30_Main", "box_MIS_310_AnnouncerDialogs_71.Finished", "box_Delay_v5_58.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NavLinkModifier_69_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_82();
    l0 = self.box_NavLinkModifier_69;
    l1 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1791203487", "1791203487", "MIS_310_B30_Main", "box_NavLinkModifier_69.Deactivated", "box_MIS_310_COMMON_RELOAD_InventoryBackup_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_38();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_GunsForHireSystemModifier_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1034515775", "1034515775", "MIS_310_B30_Main", "box_MultipleOR_6.Out", "box_GunsForHireSystemModifier_38.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MIS_310_COMMON_JIP_Inventory_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1041388812", "1041388812", "MIS_310_B30_Main", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MIS_310_COMMON_JIP_Inventory_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MIS_310_EnvSettings_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1267717410", "1267717410", "MIS_310_B30_Main", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MIS_310_EnvSettings_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_SoundModifier_v2_37_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_SoundModifier_v2_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1950395931", "1950395931", "MIS_310_B30_Main", "box_SoundModifier_v2_37.Started", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1283033498", "1283033498", "MIS_310_B30_Main", "box_OutputOrder_v2_56.Out", "box_Delay_v5_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_22();
    l0 = self.box_SoundModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1838570456", "1838570456", "MIS_310_B30_Main", "box_OutputOrder_v2_56.Out", "box_SoundModifier_v2_22.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_70_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_51();
    l0 = self.box_MIS_310_AnnouncerDialogs_70;
    l1 = self.box_PositionModifier_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1360027837", "1360027837", "MIS_310_B30_Main", "box_MIS_310_AnnouncerDialogs_70.Finished", "box_PositionModifier_v2_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_76_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_74();
    l0 = self.box_ConsoleCommand_v3_76;
    l1 = self.box_MIS_310_AnnouncerDialogs_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1389992768", "1389992768", "MIS_310_B30_Main", "box_ConsoleCommand_v3_76.Execute", "box_MIS_310_AnnouncerDialogs_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_COMMON_RELOAD_InventoryBackup_82_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_82;
    l1 = self.box_MIS_310_COMMON_DisableNavlinks_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1161531675", "1161531675", "MIS_310_B30_Main", "box_MIS_310_COMMON_RELOAD_InventoryBackup_82.Out", "box_MIS_310_COMMON_DisableNavlinks_84.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_PositionModifier_v2_51_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_52();
    l0 = self.box_PositionModifier_v2_51;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|524825267", "524825267", "MIS_310_B30_Main", "box_PositionModifier_v2_51.Done", "box_RandomFloat_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_10();
    l0 = self.box_SpawnAI_Wave_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1801903067", "1801903067", "MIS_310_B30_Main", "box_OutputOrder_v2_23.Out", "box_SpawnAI_Wave_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_28();
    l0 = self.box_SoundModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1985365412", "1985365412", "MIS_310_B30_Main", "box_OutputOrder_v2_23.Out", "box_SoundModifier_v2_28.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_74_Finished()
    local l0, l1;
    l0 = self.box_MIS_310_AnnouncerDialogs_74;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2076249509", "2076249509", "MIS_310_B30_Main", "box_MIS_310_AnnouncerDialogs_74.Finished", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CreateVector3_45_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_45_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_46();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1372399026", "1372399026", "MIS_310_B30_Main", "box_CreateVector3_45.Out", "box_CreateVector3_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_83_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_90();
    l0 = self.box_SoundModifier_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|208324452", "208324452", "MIS_310_B30_Main", "box_MissionBlockLayer_83.Activated", "box_SoundModifier_v2_90.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_73_Finished()
    local l0, l1;
    l0 = self.box_MIS_310_AnnouncerDialogs_73;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|121888132", "121888132", "MIS_310_B30_Main", "box_MIS_310_AnnouncerDialogs_73.Finished", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_Wave_v2_13_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_SpawnAI_Wave_v2_13;
    l1 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|103554383", "103554383", "MIS_310_B30_Main", "box_SpawnAI_Wave_v2_13.NextWave", "box_Delay_v5_65.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_13();
    l0 = self.box_Delay_v5_64;
    l1 = self.box_SpawnAI_Wave_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2030764343", "2030764343", "MIS_310_B30_Main", "box_Delay_v5_64.TimeElapsed", "box_SpawnAI_Wave_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_42_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_42_LoadedIdReceived();
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_CharacterLoadedIdListener_v2_42;
    l1 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1326981433", "1326981433", "MIS_310_B30_Main", "box_CharacterLoadedIdListener_v2_42.LoadedIdReceived", "box_PlayDialog_v6_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_BroadcastMessage_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1521382896", "1521382896", "MIS_310_B30_Main", "box_BroadcastMessage_15.Out", "box_Delay_v5_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_9();
    l0 = self.box_Delay_v5_25;
    l1 = self.box_Brick_Endure_CORE_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1901485094", "1901485094", "MIS_310_B30_Main", "box_Delay_v5_25.TimeElapsed", "box_Brick_Endure_CORE_v3_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_57();
    l0 = self.box_Delay_v5_17;
    l1 = self.box_MIS_310_AnnouncerDialogs_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1369753410", "1369753410", "MIS_310_B30_Main", "box_Delay_v5_17.TimeElapsed", "box_MIS_310_AnnouncerDialogs_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_38_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_38;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1158414161", "1158414161", "MIS_310_B30_Main", "box_GunsForHireSystemModifier_38.Disabled", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Endure_CORE_v3_9_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_37();
    l0 = self.box_Brick_Endure_CORE_v3_9;
    l1 = self.box_SoundModifier_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|63986954", "63986954", "MIS_310_B30_Main", "box_Brick_Endure_CORE_v3_9.Success", "box_SoundModifier_v2_37.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Brick_Endure_CORE_v3_9_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_Brick_Endure_CORE_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|975529152", "975529152", "MIS_310_B30_Main", "box_Brick_Endure_CORE_v3_9.Waves", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_52_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_45();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|899536888", "899536888", "MIS_310_B30_Main", "box_RandomFloat_v2_52.Out", "box_CreateVector3_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_90_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_90;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2072556580", "2072556580", "MIS_310_B30_Main", "box_SoundModifier_v2_90.Started", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_26_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_32();
    l0 = self.box_MessageListener_v3_26;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1424009277", "1424009277", "MIS_310_B30_Main", "box_MessageListener_v3_26.Received", "box_SetBoolean_v2_32.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_77_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_72();
    l0 = self.box_ConsoleCommand_v3_77;
    l1 = self.box_MIS_310_AnnouncerDialogs_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1219137924", "1219137924", "MIS_310_B30_Main", "box_ConsoleCommand_v3_77.Execute", "box_MIS_310_AnnouncerDialogs_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_10_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_SpawnAI_Wave_v2_10;
    l1 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|906461367", "906461367", "MIS_310_B30_Main", "box_SpawnAI_Wave_v2_10.NextWave", "box_Delay_v5_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MessageListener_v3_24_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_32();
    l0 = self.box_MessageListener_v3_24;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|23545715", "23545715", "MIS_310_B30_Main", "box_MessageListener_v3_24.Received", "box_SetBoolean_v2_32.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_29_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = self.box_SpawnAI_Wave_v2_29;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|988623748", "988623748", "MIS_310_B30_Main", "box_SpawnAI_Wave_v2_29.LastWave_Cleanup", "box_Simple_Node_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BonusPlanModifier_v3_49_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_50();
    l0 = self.box_BonusPlanModifier_v3_49;
    l1 = self.box_BonusPlanModifier_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|717211664", "717211664", "MIS_310_B30_Main", "box_BonusPlanModifier_v3_49.Removed", "box_BonusPlanModifier_v3_50.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1728149988", "1728149988", "MIS_310_B30_Main", "box_OutputOrder_v2_92.Out", "box_Simple_Node_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_91();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|194163293", "194163293", "MIS_310_B30_Main", "box_OutputOrder_v2_92.Out", "box_BroadcastMessage_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_75_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_73();
    l0 = self.box_ConsoleCommand_v3_75;
    l1 = self.box_MIS_310_AnnouncerDialogs_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|364240827", "364240827", "MIS_310_B30_Main", "box_ConsoleCommand_v3_75.Execute", "box_MIS_310_AnnouncerDialogs_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_54();
    l0 = self.box_Delay_v5_65;
    l1 = self.box_SpawnAI_Wave_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|522878533", "522878533", "MIS_310_B30_Main", "box_Delay_v5_65.TimeElapsed", "box_SpawnAI_Wave_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_41_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_44();
    l0 = self.box_Bind_v4_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1055887151", "1055887151", "MIS_310_B30_Main", "box_GetLocalPlayer_v2_41.Out", "box_Bind_v4_44.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_30_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_29();
    l0 = self.box_SpawnAI_Wave_v2_30;
    l1 = self.box_SpawnAI_Wave_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|349426652", "349426652", "MIS_310_B30_Main", "box_SpawnAI_Wave_v2_30.NextWave", "box_SpawnAI_Wave_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_32_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1377257953", "1377257953", "MIS_310_B30_Main", "box_SetBoolean_v2_32.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CreateVector3_46_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_46_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_40();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1859507322", "1859507322", "MIS_310_B30_Main", "box_CreateVector3_46.Out", "box_PhysicsImpulse_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_26();
    l0 = self.box_MessageListener_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1917169641", "1917169641", "MIS_310_B30_Main", "box_OutputOrder_v2_14.Out", "box_MessageListener_v3_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_24();
    l0 = self.box_MessageListener_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|488678573", "488678573", "MIS_310_B30_Main", "box_OutputOrder_v2_14.Out", "box_MessageListener_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_16_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = self.box_ConsoleCommand_v3_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1838671599", "1838671599", "MIS_310_B30_Main", "box_ConsoleCommand_v3_16.Execute", "box_Simple_Node_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_EnvSettings_68_Enabled()
    local l0, l1;
    l0 = self.box_MIS_310_EnvSettings_68;
    l1 = self.box_MIS_310_COMMON_Vfx_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|282058335", "282058335", "MIS_310_B30_Main", "box_MIS_310_EnvSettings_68.Enabled", "box_MIS_310_COMMON_Vfx_81.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Boolean_31_A_and_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1181404876", "1181404876", "MIS_310_B30_Main", "box_Compare_Boolean_31.A_and_B", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_31_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_34();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1213701824", "1213701824", "MIS_310_B30_Main", "box_Compare_Boolean_31.A_is_True", "box_Compare_Boolean_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BonusPlanModifier_v3_47_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_48();
    l0 = self.box_BonusPlanModifier_v3_47;
    l1 = self.box_BonusPlanModifier_v3_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1207428137", "1207428137", "MIS_310_B30_Main", "box_BonusPlanModifier_v3_47.Removed", "box_BonusPlanModifier_v3_48.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_BonusPlanModifier_v3_48_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_49();
    l0 = self.box_BonusPlanModifier_v3_48;
    l1 = self.box_BonusPlanModifier_v3_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|807260280", "807260280", "MIS_310_B30_Main", "box_BonusPlanModifier_v3_48.Removed", "box_BonusPlanModifier_v3_49.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_Delay_v5_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|928162087", "928162087", "MIS_310_B30_Main", "box_Delay_v5_58.TimeElapsed", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_79();
    l0 = self.box_MultipleOR_80;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|319783932", "319783932", "MIS_310_B30_Main", "box_MultipleOR_80.Out", "box_Print_v2_79.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_75();
    l0 = self.box_ConsoleCommand_v3_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|511587828", "511587828", "MIS_310_B30_Main", "box_OutputOrder_v2_78.Out", "box_ConsoleCommand_v3_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_76();
    l0 = self.box_ConsoleCommand_v3_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1319195593", "1319195593", "MIS_310_B30_Main", "box_OutputOrder_v2_78.Out", "box_ConsoleCommand_v3_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_77();
    l0 = self.box_ConsoleCommand_v3_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|385177400", "385177400", "MIS_310_B30_Main", "box_OutputOrder_v2_78.Out", "box_ConsoleCommand_v3_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_57_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_MIS_310_AnnouncerDialogs_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1479292164", "1479292164", "MIS_310_B30_Main", "box_MIS_310_AnnouncerDialogs_57.Finished", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_27_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|941420644", "941420644", "MIS_310_B30_Main", "box_SetBoolean_v2_27.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = self.box_Delay_v5_36;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|198555768", "198555768", "MIS_310_B30_Main", "box_Delay_v5_36.TimeElapsed", "box_Simple_Node_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1878810805", "1878810805", "MIS_310_B30_Main", "box_ActivityInitialized_8.Out", "box_Simple_Node_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_JIP_Inventory_89_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_89;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1872778066", "1872778066", "MIS_310_B30_Main", "box_MIS_310_COMMON_JIP_Inventory_89.Out", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MIS_310_AnnouncerDialogs_72_Finished()
    local l0, l1;
    l0 = self.box_MIS_310_AnnouncerDialogs_72;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|885493240", "885493240", "MIS_310_B30_Main", "box_MIS_310_AnnouncerDialogs_72.Finished", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_Simple_Node_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|@beat_end");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_11_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|@beatendcheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|@lastwave_cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|@sfx_crowd_negative");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|@sfx_crowd_positive");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|@throw_medkit");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2079075");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_34_A_is_False,
    });
    params = {
        -- A,
        [0] = self.isMonsterClosetsEmpty,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|31291765");
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

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|54429356");
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
        [8] = "MIS_310_B30 Ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_54()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2109029731807602097",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- opt_AttackerSpawner_2,
        [5] = "2109029743186748922",
        -- Timer,
        [14] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_53()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#F65AEFD4",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|132500368");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|307661225");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PhysicsImpulse_40_Out,
    });
    params = {
        -- AngularAmplitude,
        [0] = 1,
        -- AngularVector,
        [1] = self._sld_vector3_box_CreateVector3_46,
        -- DirectionAmplitude,
        [2] = 20,
        -- DirectionVector,
        [4] = self._sld_vector3_box_CreateVector3_45,
        -- targets,
        [5] = "2109027612383779727",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|311257017");
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

function export:OnEnter_box_SoundModifier_v2_28()
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

function export:OnEnter_box_MIS_310_AnnouncerDialogs_71()
    local params;
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1084415721",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_69()
    local params;
    params = {
        -- Entity,
        [0] = "2108737028832111999",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|432812891");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_37()
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

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|512505570");
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

function export:OnEnter_box_MIS_310_AnnouncerDialogs_70()
    local params;
    DrawTextToScreen("Comment: DLG : throw him medkit", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : throw him medkit");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "750185539",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_76()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "play2",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_82()
    local params;
    DrawTextToScreen("Comment: Only if RELOAD", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_COMMON_RELOAD_InventoryBackup')-- Comment: Only if RELOAD");
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_51()
    local params;
    params = {
        -- blendTime,
        [1] = 0.2,
        -- endTarget,
        [4] = "2109028337562188234",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109027612383779727",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|724840046");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_74()
    local params;
    DrawTextToScreen("Comment: Looks like Lolipop's  got dreams of being a plumber! Who's gonna tell 'em no one's got running water?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: Looks like Lolipop's  got dreams of being a plumber! Who's gonna tell 'em no one's got running water?");
    params = {
        -- RelevancyTime,
        [0] = 30,
        -- SoundId,
        [1] = "2594281451",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|800415028");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_45_Out,
    });
    params = {
        -- x,
        [0] = self._sld_Result_box_RandomFloat_v2_52,
        -- y,
        [1] = -1,
        -- z,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_44()
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

function export:OnEnter_box_MissionBlockLayer_83()
    local params, l0;
    DrawTextToScreen("Comment: Enable Crowd Layer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Enable Crowd Layer");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|819308712");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_83_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181911775924266",
        -- missionLayerId,
        [1] = "63189111030665258",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_73()
    local params;
    DrawTextToScreen("Comment: DLG : You don't bring your best game to our arena? That's a paddling!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : You don't bring your best game to our arena? That's a paddling!");
    params = {
        -- RelevancyTime,
        [0] = 30,
        -- SoundId,
        [1] = "255965798",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_13()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2107631952635910224",
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

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|901084950");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2107644983575069435",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|953812375");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_15_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_enable_monsterclosets",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_38()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_9()
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
            item = "MIS_310_B30_Survive1stRound",
            id = "963905",
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

function export:OnEnter_box_RandomFloat_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1090873541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_52_Out,
    });
    params = {
        -- Max,
        [0] = 0.1,
        -- Min,
        [1] = -0.1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_90()
    local params;
    DrawTextToScreen("Comment: play cheer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: play cheer");
    params = {
        -- Pawns,
        [0] = "2109028732980224633",
        -- SoundId,
        [1] = "3673287441",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
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

function export:OnEnter_box_ConsoleCommand_v3_77()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "play3",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_39()
    local params, l0;
    DrawTextToScreen("Comment: DLG : Hit 'em where it counts!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Hit 'em where it counts!");
    l0 = self.box_CharacterLoadedIdListener_v2_42;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3950404772",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_10()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2107631975144643023",
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

function export:OnEnter_box_MessageListener_v3_24()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "mis310_mc_occupied",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_29()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2109029890257932069",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109029891816116174",
        -- opt_AttackerSpawner_3,
        [6] = "2109030056507567128",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_49()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel3",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1308993951");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1353613356");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Exit Worked",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_75()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "play1",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1428195615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_30()
    local params;
    DrawTextToScreen("Comment: Spawn cougar", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Spawn cougar");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2108504099566655437",
        -- CoreNPCGroup,
        [2] = "#F65AEFD4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- opt_AttackerSpawner_2,
        [5] = "2109953971035585557",
        -- opt_AttackerSpawner_3,
        [6] = "2109953974302948397",
        -- Timer,
        [14] = 12,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1491506772");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1588583801");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "mis310_mc_forceclose",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1594209292");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_46_Out,
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

function export:OnEnter_box_SoundModifier_v2_60()
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

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1678414258");
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

function export:OnEnter_box_ConsoleCommand_v3_16()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "dbg_skipbeat",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1771277493");
    l0:SetConnections({
        -- A_and_B,
        [0] = self.f_box_Compare_Boolean_31_A_and_B,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_31_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isRoundFinished,
        -- B,
        [1] = self.isMonsterClosetsEmpty,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_47()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel1",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_48()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel2",
        -- Entities,
        [1] = "#ED455357",
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

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1888543547");
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

function export:OnEnter_box_SoundModifier_v2_22()
    local params;
    DrawTextToScreen("Comment: play cheer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: play cheer");
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

function export:OnEnter_box_MIS_310_AnnouncerDialogs_57()
    local params;
    DrawTextToScreen("Comment: DLG : Well, Lolipop, that was better than finding shit in your stew, no doubt - but what's this next round gonna hold?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Well, Lolipop, that was better than finding shit in your stew, no doubt - but what's this next round gonna hold?");
    params = {
        -- RelevancyTime,
        [0] = 30,
        -- SoundId,
        [1] = "2806914641",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|1981602326");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b30.domino|@MIS_310_B30_Main|2004800241");
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
        [8] = "MIS_310_B30 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_50()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel4",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_72()
    local params;
    DrawTextToScreen("Comment: DLG : Is this it? Is this where we lose our undisputed motherfucking champ?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Is this it? Is this where we lose our undisputed motherfucking champ?");
    params = {
        -- RelevancyTime,
        [0] = 30,
        -- SoundId,
        [1] = "4043051469",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_59()
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

function export:OnExit_box_CreateVector3_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_45 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_42_LoadedIdReceived()
    local l0, l1;
    l0 = self.box_CharacterLoadedIdListener_v2_42;
    l1 = self.box_PlayDialog_v6_39;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_52 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_41_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_Bind_v4_44;
    l1:GetLuaBox().EntityA = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isMonsterClosetsEmpty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self._sld_vector3_box_CreateVector3_46 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_27_Out()
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
