LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b60.domino
-- User graph: MIS_310_B60_Main
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/BonusPlanModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[358407707.bnk]], "CSoundResource");
        cboxRes:LoadResource([[794067873.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3597183808.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1923409501.bnk]], "CSoundResource");
        cboxRes:LoadResource([[179921432.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3112841793.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4184550241.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3625928733.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1978115113.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2462076257.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4043051469.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3602822298.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1019042487.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1366514213.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_B60.MIS_310_B60_Main.debug.lua")] = {
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
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    self._name = "MIS_310_B60_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main";
    self.isReload = false;
    self.Champ_InitialLife = 0;
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|18718430");
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
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|60815013");
    l0:SetConnections({
    });
    self.box_MIS_310_COMMON_RELOAD_InventoryBackup_94 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua");
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_RELOAD_InventoryBackup_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|114281889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_RELOAD_InventoryBackup_94_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|134222548");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_BonusPlanModifier_v3_52 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|174501941");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|231111841");
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_310_AnnouncerDialogs_77 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|284337607");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_27 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|296710572");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_27_Disabled,
    });
    self.box_SoundModifier_v2_14 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|303429734");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_14_Started,
    });
    self.box_OnceOnly_v3_84 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|336892103");
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
                [0] = self.f_box_OnceOnly_v3_84_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_61 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|358741938");
    l0:SetConnections({
    });
    self.box_BonusPlanModifier_v3_39 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|566100123");
    l0:SetConnections({
    });
    self.box_MIS_310_AnnouncerDialogs_73 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|569390080");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_73_Finished,
    });
    self.box_Bind_v4_36 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|588686041");
    l0:SetConnections({
    });
    self.box_BonusPlanModifier_v3_41 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|607967540");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_41_Removed,
    });
    self.box_ProximityTrigger_v3_92 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|712263227");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_92_Enter,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|781406154");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Delay_v5_99 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|792813162");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_99_TimeElapsed,
    });
    self.box_Brick_Endure_CORE_v3_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|863489319");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_13_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_13_Waves,
    });
    self.box_MIS_310_AnnouncerDialogs_75 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|866027319");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|911460396");
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
                [0] = self.f_box_OnceOnly_v3_35_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_310_COMMON_DisableNavlinks_96 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua");
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_DisableNavlinks_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|979706479");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_DisableNavlinks_96_Out,
    });
    self.box_SoundModifier_v2_47 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1072230071");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_56 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1078566493");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1115920615");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_OnceOnly_v3_83 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1132876267");
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
                [0] = self.f_box_OnceOnly_v3_83_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v6_42 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1159615923");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_42_MemberRemoved,
    });
    self.box_ContextualActionListener_22 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1188065122");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_22_Start,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1194408918");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_ConsoleCommand_v3_34 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1203478770");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_34_Execute,
    });
    self.box_BonusPlanModifier_v3_37 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1245806427");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_37_Removed,
    });
    self.box_CharacterLoadedIdListener_v2_46 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1276592570");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_46_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_46_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_46_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_46_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_44 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1289680110");
    l0:SetConnections({
    });
    self.box_BonusPlanModifier_v3_38 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1309406540");
    l0:SetConnections({
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_38_Removed,
    });
    self.box_GroupSizeListener_v6_18 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1354757674");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_18_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_18_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_18_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_18_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_18_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_18_MemberSpawned,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1355731972");
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
    self.box_SoundModifier_v2_70 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1447640569");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_70_Started,
    });
    self.box_MIS_310_AnnouncerDialogs_78 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1486833153");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_78_Finished,
    });
    self.box_MIS_310_COMMON_JIP_Inventory_97 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua");
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_JIP_Inventory_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1524926777");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_JIP_Inventory_97_Out,
    });
    self.box_NavLinkModifier_93 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1643441002");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_93_Activated,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1709517132");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_MultipleOR_69 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1721476369");
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
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1730194299");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_BonusPlanModifier_v3_49 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1746603627");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_BonusPlanModifier_v3_49_Added,
    });
    self.box_PlayDialog_v6_87 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1765392843");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_16 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1898905069");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_57 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1903032927");
    l0:SetConnections({
    });
    self.box_MIS_310_EnvSettings_68 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
    l0 = self.box_MIS_310_EnvSettings_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_EnvSettings_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1905425817");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MIS_310_EnvSettings_68_Enabled,
    });
    self.box_HealthListener_v6_74 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1923059672");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_74_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_74_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_74_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_74_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_74_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_74_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_74_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_74_Revived,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1966498719");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_BonusPlanModifier_v3_51 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2066240277");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_BonusPlanModifier_v3_51_Added,
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2098331227");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2103423278");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_21_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_BonusPlanModifier_v3_50 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2107690874");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_BonusPlanModifier_v3_50_Added,
    });
    self.box_ProximityTrigger_v3_71 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2126986604");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_71_Enter,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|501369128", "501369128", "MIS_310_B60_Main", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|18884767", "18884767", "MIS_310_B60_Main", "box_Simple_Node_11.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_42();
    l0 = self.box_GroupSizeListener_v6_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|642746473", "642746473", "MIS_310_B60_Main", "box_Simple_Node_10.Out", "box_GroupSizeListener_v6_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_PawnInvincibleState_v2_64();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1340203238", "1340203238", "MIS_310_B60_Main", "box_Simple_Node_10.Out", "box_PawnInvincibleState_v2_64.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_BonusPlanModifier_v3_37();
    l0 = self.box_BonusPlanModifier_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|51420798", "51420798", "MIS_310_B60_Main", "box_Simple_Node_10.Out", "box_BonusPlanModifier_v3_37.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1299113226", "1299113226", "MIS_310_B60_Main", "box_Simple_Node_10.Out", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_GetLocalPlayer_v2_40();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1108934613", "1108934613", "MIS_310_B60_Main", "box_Simple_Node_10.Out", "box_GetLocalPlayer_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ConsoleCommand_v3_34();
    l0 = self.box_ConsoleCommand_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1022399659", "1022399659", "MIS_310_B60_Main", "box_Simple_Node_10.Out", "box_ConsoleCommand_v3_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_HealthListener_v6_74();
    l0 = self.box_HealthListener_v6_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1611919559", "1611919559", "MIS_310_B60_Main", "box_Simple_Node_10.Out", "box_HealthListener_v6_74.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_73();
    l0 = self.box_MIS_310_AnnouncerDialogs_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1574540058", "1574540058", "MIS_310_B60_Main", "box_Simple_Node_63.Out", "box_MIS_310_AnnouncerDialogs_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_47();
    l0 = self.box_SoundModifier_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2031310340", "2031310340", "MIS_310_B60_Main", "box_Simple_Node_54.Out", "box_SoundModifier_v2_47.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_93();
    l0 = self.box_NavLinkModifier_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2048807850", "2048807850", "MIS_310_B60_Main", "box_Simple_Node_31.Out", "box_NavLinkModifier_93.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_66();
    l0 = self.box_MultipleOR_67;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1091864182", "1091864182", "MIS_310_B60_Main", "box_MultipleOR_67.Out", "box_Compare_Integers_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_79_Out()
    self:OnExit_box_SetFloat_v2_79_Out();
end;

function export:f_box_MIS_310_COMMON_RELOAD_InventoryBackup_94_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_94;
    l1 = self.box_MIS_310_COMMON_DisableNavlinks_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|523621347", "523621347", "MIS_310_B60_Main", "box_MIS_310_COMMON_RELOAD_InventoryBackup_94.Out", "box_MIS_310_COMMON_DisableNavlinks_96.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_95_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_70();
    l0 = self.box_SoundModifier_v2_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|284100292", "284100292", "MIS_310_B60_Main", "box_MissionBlockLayer_95.Activated", "box_SoundModifier_v2_70.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|85407654", "85407654", "MIS_310_B60_Main", "box_OutputOrder_v2_2.Out", "box_Print_v2_8.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|572622560", "572622560", "MIS_310_B60_Main", "box_OutputOrder_v2_2.Out", "box_ActivityEnd_3.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1662174179", "1662174179", "MIS_310_B60_Main", "box_MultipleOR_25.Out", "box_OnceOnly_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BroadcastMessage_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_62();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1221403075", "1221403075", "MIS_310_B60_Main", "box_BroadcastMessage_33.Out", "box_BroadcastMessage_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_OnceOnly_v3_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|566253564", "566253564", "MIS_310_B60_Main", "box_OnceOnly_v3_26.Out", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_27_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_27;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1608285302", "1608285302", "MIS_310_B60_Main", "box_GunsForHireSystemModifier_27.Disabled", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SoundModifier_v2_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_78();
    l0 = self.box_SoundModifier_v2_14;
    l1 = self.box_MIS_310_AnnouncerDialogs_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1270390742", "1270390742", "MIS_310_B60_Main", "box_SoundModifier_v2_14.Started", "box_MIS_310_AnnouncerDialogs_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_84_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_77();
    l0 = self.box_OnceOnly_v3_84;
    l1 = self.box_MIS_310_AnnouncerDialogs_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|885029838", "885029838", "MIS_310_B60_Main", "box_OnceOnly_v3_84.Out", "box_MIS_310_AnnouncerDialogs_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PawnInvincibleState_v2_65_OnUnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_89();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2126129487", "2126129487", "MIS_310_B60_Main", "box_PawnInvincibleState_v2_65.OnUnSet", "box_SetContextualStrategy_89.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|81054885", "81054885", "MIS_310_B60_Main", "box_SetContextualStrategy_91.Out", "box_UseContextualActionModifier_v3_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_29();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1332010226", "1332010226", "MIS_310_B60_Main", "box_OutputOrder_v2_59.Out", "box_ParticleSystem_v3_29.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1030680055", "1030680055", "MIS_310_B60_Main", "box_OutputOrder_v2_59.Out", "box_SoundModifier_v2_60.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_73_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_MIS_310_AnnouncerDialogs_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1160358448", "1160358448", "MIS_310_B60_Main", "box_MIS_310_AnnouncerDialogs_73.Finished", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1971745128", "1971745128", "MIS_310_B60_Main", "box_OutputOrder_v2_90.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_BonusPlanModifier_v3_41_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_39();
    l0 = self.box_BonusPlanModifier_v3_41;
    l1 = self.box_BonusPlanModifier_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1920104323", "1920104323", "MIS_310_B60_Main", "box_BonusPlanModifier_v3_41.Removed", "box_BonusPlanModifier_v3_39.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_20_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|904750476", "904750476", "MIS_310_B60_Main", "box_UseContextualActionModifier_v3_20.Disabled", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_20_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1958024670", "1958024670", "MIS_310_B60_Main", "box_UseContextualActionModifier_v3_20.Enabled", "box_UseContextualActionModifier_v3_20.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_20_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|52997037", "52997037", "MIS_310_B60_Main", "box_UseContextualActionModifier_v3_20.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_20_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_22();
    l0 = self.box_ContextualActionListener_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1361491236", "1361491236", "MIS_310_B60_Main", "box_UseContextualActionModifier_v3_20.UseCalled", "box_ContextualActionListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_88_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_95();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1832078968", "1832078968", "MIS_310_B60_Main", "box_MissionBlockLayer_88.Activated", "box_MissionBlockLayer_95.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_66_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1347332947", "1347332947", "MIS_310_B60_Main", "box_Compare_Integers_66.A_le_B", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_92_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_99();
    l0 = self.box_ProximityTrigger_v3_92;
    l1 = self.box_Delay_v5_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|322121776", "322121776", "MIS_310_B60_Main", "box_ProximityTrigger_v3_92.Enter", "box_Delay_v5_99.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_FloatArithmetics_v2_81_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_82();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|739137690", "739137690", "MIS_310_B60_Main", "box_FloatArithmetics_v2_81.Out", "box_Compare_Floats_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_28_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|397760440", "397760440", "MIS_310_B60_Main", "box_ParticleSystem_v3_28.Started", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_28_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1413574252", "1413574252", "MIS_310_B60_Main", "box_ParticleSystem_v3_28.Stopped", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_19_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|213280150", "213280150", "MIS_310_B60_Main", "box_UseContextualActionModifier_v3_19.Disabled", "box_UseContextualActionModifier_v3_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|352223267", "352223267", "MIS_310_B60_Main", "box_Delay_v5_12.TimeElapsed", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_99_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_98();
    l0 = self.box_Delay_v5_99;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1359964844", "1359964844", "MIS_310_B60_Main", "box_Delay_v5_99.TimeElapsed", "box_HealthModifier_v2_98.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_13_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_14();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l1 = self.box_SoundModifier_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|814032822", "814032822", "MIS_310_B60_Main", "box_Brick_Endure_CORE_v3_13.Success", "box_SoundModifier_v2_14.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Brick_Endure_CORE_v3_13_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1471368525", "1471368525", "MIS_310_B60_Main", "box_Brick_Endure_CORE_v3_13.Waves", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_85_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|422338913", "422338913", "MIS_310_B60_Main", "box_Compare_Floats_85.A_gt_B", "box_OnceOnly_v3_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_79();
    l0 = self.box_OnceOnly_v3_35;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|204987941", "204987941", "MIS_310_B60_Main", "box_OnceOnly_v3_35.Out", "box_SetFloat_v2_79.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_29();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|364716454", "364716454", "MIS_310_B60_Main", "box_OutputOrder_v2_58.Out", "box_ParticleSystem_v3_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_56();
    l0 = self.box_SoundModifier_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1769119946", "1769119946", "MIS_310_B60_Main", "box_OutputOrder_v2_58.Out", "box_SoundModifier_v2_56.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_COMMON_DisableNavlinks_96_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_96;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2111356663", "2111356663", "MIS_310_B60_Main", "box_MIS_310_COMMON_DisableNavlinks_96.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_18();
    l0 = self.box_GroupSizeListener_v6_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1371233142", "1371233142", "MIS_310_B60_Main", "box_OutputOrder_v2_17.Out", "box_GroupSizeListener_v6_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|127173287", "127173287", "MIS_310_B60_Main", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_16.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1667650394", "1667650394", "MIS_310_B60_Main", "box_OutputOrder_v2_30.Out", "box_UseContextualActionModifier_v3_20.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_28();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|216444382", "216444382", "MIS_310_B60_Main", "box_OutputOrder_v2_30.Out", "box_ParticleSystem_v3_28.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1171472167", "1171472167", "MIS_310_B60_Main", "box_OutputOrder_v2_30.Out", "box_Delay_v5_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MIS_310_COMMON_JIP_Inventory_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|893002946", "893002946", "MIS_310_B60_Main", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MIS_310_COMMON_JIP_Inventory_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_88();
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1274322045", "1274322045", "MIS_310_B60_Main", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MissionBlockLayer_88.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_83_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_75();
    l0 = self.box_OnceOnly_v3_83;
    l1 = self.box_MIS_310_AnnouncerDialogs_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|439962801", "439962801", "MIS_310_B60_Main", "box_OnceOnly_v3_83.Out", "box_MIS_310_AnnouncerDialogs_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_42_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = self.box_GroupSizeListener_v6_42;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1011681193", "1011681193", "MIS_310_B60_Main", "box_GroupSizeListener_v6_42.MemberRemoved", "box_Simple_Node_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_22_Start()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_ContextualActionListener_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|717224748", "717224748", "MIS_310_B60_Main", "box_ContextualActionListener_22.Start", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_87();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_PlayDialog_v6_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|316458742", "316458742", "MIS_310_B60_Main", "box_Delay_v5_4.TimeElapsed", "box_PlayDialog_v6_87.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_34_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = self.box_ConsoleCommand_v3_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|505173979", "505173979", "MIS_310_B60_Main", "box_ConsoleCommand_v3_34.Execute", "box_Simple_Node_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BonusPlanModifier_v3_37_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_38();
    l0 = self.box_BonusPlanModifier_v3_37;
    l1 = self.box_BonusPlanModifier_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1934239500", "1934239500", "MIS_310_B60_Main", "box_BonusPlanModifier_v3_37.Removed", "box_BonusPlanModifier_v3_38.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_46_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_46_LoadedIdReceived();
    params = self:OnEnter_box_PlayDialog_v6_44();
    l0 = self.box_CharacterLoadedIdListener_v2_46;
    l1 = self.box_PlayDialog_v6_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|482297802", "482297802", "MIS_310_B60_Main", "box_CharacterLoadedIdListener_v2_46.LoadedIdReceived", "box_PlayDialog_v6_44.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_BonusPlanModifier_v3_38_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_41();
    l0 = self.box_BonusPlanModifier_v3_38;
    l1 = self.box_BonusPlanModifier_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|515188090", "515188090", "MIS_310_B60_Main", "box_BonusPlanModifier_v3_38.Removed", "box_BonusPlanModifier_v3_41.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_18_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_18;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1936889064", "1936889064", "MIS_310_B60_Main", "box_GroupSizeListener_v6_18.Enabled", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_18_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_18;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|388910388", "388910388", "MIS_310_B60_Main", "box_GroupSizeListener_v6_18.MemberRemoved", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_27();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_GunsForHireSystemModifier_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|168137419", "168137419", "MIS_310_B60_Main", "box_MultipleOR_9.Out", "box_GunsForHireSystemModifier_27.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_29_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_57();
    l0 = self.box_SoundModifier_v2_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|753896592", "753896592", "MIS_310_B60_Main", "box_ParticleSystem_v3_29.Started", "box_SoundModifier_v2_57.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_29_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_61();
    l0 = self.box_SoundModifier_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|593029378", "593029378", "MIS_310_B60_Main", "box_ParticleSystem_v3_29.Stopped", "box_SoundModifier_v2_61.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_13();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|620783322", "620783322", "MIS_310_B60_Main", "box_OutputOrder_v2_15.Out", "box_Brick_Endure_CORE_v3_13.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_91();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|853300591", "853300591", "MIS_310_B60_Main", "box_OutputOrder_v2_24.Out", "box_SetContextualStrategy_91.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|745598035", "745598035", "MIS_310_B60_Main", "box_OutputOrder_v2_24.Out", "box_Delay_v5_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1745438976", "1745438976", "MIS_310_B60_Main", "box_OutputOrder_v2_24.Out", "box_Delay_v5_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_71();
    l0 = self.box_ProximityTrigger_v3_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1267614091", "1267614091", "MIS_310_B60_Main", "box_OutputOrder_v2_24.Out", "box_ProximityTrigger_v3_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_92();
    l0 = self.box_ProximityTrigger_v3_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1290831625", "1290831625", "MIS_310_B60_Main", "box_OutputOrder_v2_24.Out", "box_ProximityTrigger_v3_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|63901822", "63901822", "MIS_310_B60_Main", "box_OutputOrder_v2_32.Out", "box_Simple_Node_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2111353926", "2111353926", "MIS_310_B60_Main", "box_OutputOrder_v2_32.Out", "box_Delay_v5_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_70_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_70;
    l1 = self.box_MIS_310_EnvSettings_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1972399132", "1972399132", "MIS_310_B60_Main", "box_SoundModifier_v2_70.Started", "box_MIS_310_EnvSettings_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MIS_310_AnnouncerDialogs_78_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = self.box_MIS_310_AnnouncerDialogs_78;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|874574435", "874574435", "MIS_310_B60_Main", "box_MIS_310_AnnouncerDialogs_78.Finished", "box_Simple_Node_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_JIP_Inventory_97_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_97;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|220857940", "220857940", "MIS_310_B60_Main", "box_MIS_310_COMMON_JIP_Inventory_97.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NavLinkModifier_93_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_65();
    l0 = self.box_NavLinkModifier_93;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|334493993", "334493993", "MIS_310_B60_Main", "box_NavLinkModifier_93.Activated", "box_PawnInvincibleState_v2_65.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_82_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_80();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|903979242", "903979242", "MIS_310_B60_Main", "box_Compare_Floats_82.A_gt_B", "box_Compare_Floats_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_82_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_85();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1951329409", "1951329409", "MIS_310_B60_Main", "box_Compare_Floats_82.A_le_B", "box_Compare_Floats_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_46();
    l0 = self.box_Delay_v5_45;
    l1 = self.box_CharacterLoadedIdListener_v2_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|295388212", "295388212", "MIS_310_B60_Main", "box_Delay_v5_45.TimeElapsed", "box_CharacterLoadedIdListener_v2_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_40_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_36();
    l0 = self.box_Bind_v4_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|784180475", "784180475", "MIS_310_B60_Main", "box_GetLocalPlayer_v2_40.Out", "box_Bind_v4_36.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_69_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_69;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1851294417", "1851294417", "MIS_310_B60_Main", "box_MultipleOR_69.Out", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = self.box_Delay_v5_55;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|236322242", "236322242", "MIS_310_B60_Main", "box_Delay_v5_55.TimeElapsed", "box_Simple_Node_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BonusPlanModifier_v3_49_Added()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_50();
    l0 = self.box_BonusPlanModifier_v3_49;
    l1 = self.box_BonusPlanModifier_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|497714623", "497714623", "MIS_310_B60_Main", "box_BonusPlanModifier_v3_49.Added", "box_BonusPlanModifier_v3_50.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1945702007", "1945702007", "MIS_310_B60_Main", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|518171307", "518171307", "MIS_310_B60_Main", "box_OutputOrder_v2_1.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BonusPlanModifier_v3_49();
    l0 = self.box_BonusPlanModifier_v3_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|74661800", "74661800", "MIS_310_B60_Main", "box_OutputOrder_v2_48.Out", "box_BonusPlanModifier_v3_49.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_33();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1100413741", "1100413741", "MIS_310_B60_Main", "box_OutputOrder_v2_48.Out", "box_BroadcastMessage_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_310_EnvSettings_68_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_94();
    l0 = self.box_MIS_310_EnvSettings_68;
    l1 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|114198913", "114198913", "MIS_310_B60_Main", "box_MIS_310_EnvSettings_68.Enabled", "box_MIS_310_COMMON_RELOAD_InventoryBackup_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_74_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_FloatArithmetics_v2_81();
    l0 = self.box_HealthListener_v6_74;
    l1 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1467585583", "1467585583", "MIS_310_B60_Main", "box_HealthListener_v6_74.Damaged", "box_FloatArithmetics_v2_81.Div", l0:GetLuaBox(), l1:GetLuaBox());
    -- Div
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_74_Enabled()
    local l0, l1;
    l0 = self.box_HealthListener_v6_74;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|597778214", "597778214", "MIS_310_B60_Main", "box_HealthListener_v6_74.Enabled", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|864497806", "864497806", "MIS_310_B60_Main", "box_ActivityInitialized_5.Out", "box_Simple_Node_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_13();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|271391449", "271391449", "MIS_310_B60_Main", "box_SetContextualStrategy_89.Out", "box_Brick_Endure_CORE_v3_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Floats_80_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2126249152", "2126249152", "MIS_310_B60_Main", "box_Compare_Floats_80.A_le_B", "box_OnceOnly_v3_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BonusPlanModifier_v3_51_Added()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_52();
    l0 = self.box_BonusPlanModifier_v3_51;
    l1 = self.box_BonusPlanModifier_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1891255365", "1891255365", "MIS_310_B60_Main", "box_BonusPlanModifier_v3_51.Added", "box_BonusPlanModifier_v3_52.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_23;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|468359808", "468359808", "MIS_310_B60_Main", "box_Delay_v5_23.TimeElapsed", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_21_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_28();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2068171407", "2068171407", "MIS_310_B60_Main", "box_Delay_v5_21.Started", "box_ParticleSystem_v3_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|522609997", "522609997", "MIS_310_B60_Main", "box_Delay_v5_21.TimeElapsed", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BonusPlanModifier_v3_50_Added()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_51();
    l0 = self.box_BonusPlanModifier_v3_50;
    l1 = self.box_BonusPlanModifier_v3_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|102066429", "102066429", "MIS_310_B60_Main", "box_BonusPlanModifier_v3_50.Added", "box_BonusPlanModifier_v3_51.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_71_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|177230503", "177230503", "MIS_310_B60_Main", "box_ProximityTrigger_v3_71.Enter", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_BroadcastMessage_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|436861394", "436861394", "MIS_310_B60_Main", "box_BroadcastMessage_62.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|@beat_end");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|@dlg_champ");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|@sfx_crowd_positive");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|@start_champround");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|36081490");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_79_Out,
    });
    l0 = self.box_HealthListener_v6_74;
    params = {
        -- Float,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_60()
    local params;
    params = {
        -- Pawns,
        [0] = "2109124164999720884",
        -- SoundId,
        [1] = "3602822298",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
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

function export:OnEnter_box_MissionBlockLayer_95()
    local params, l0;
    DrawTextToScreen("Comment: Enable Crowd Layer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Enable Crowd Layer");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|117950182");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_95_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181911775924266",
        -- missionLayerId,
        [1] = "63189111030665258",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|131718673");
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

function export:OnEnter_box_BonusPlanModifier_v3_52()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel4",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|226187377");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_33_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_disable_monsterclosets",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_77()
    local params;
    DrawTextToScreen("Comment: DLG : Oof, our champion's not looking too good! What the hell's Lolipop been eating to hit like that!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Oof, our champion's not looking too good! What the hell's Lolipop been eating to hit like that!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1019042487",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_27()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_14()
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

function export:OnEnter_box_PawnInvincibleState_v2_65()
    local params, l0;
    DrawTextToScreen("Comment: Champ : remove invincibility", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PawnInvincibleState_v2')-- Comment: Champ : remove invincibility");
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|344463399");
    l0:SetConnections({
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_65_OnUnSet,
    });
    params = {
        -- Pawn,
        [0] = "2107644983575069435",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_91()
    local params, l0;
    DrawTextToScreen("Comment: Champ : switch CS", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: Champ : switch CS");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|344852492");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_91_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109845574487381317",
        -- Group,
        [1] = "#F5AAD0A2",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_61()
    local params;
    params = {
        -- Pawns,
        [0] = "2109124162634133426",
        -- SoundId,
        [1] = "1366514213",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|561482298");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_39()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel4",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_73()
    local params;
    DrawTextToScreen("Comment: DLG : Eyes up top, thudfucks! We got our reigning motherfucking champion ziplining in from on fucking high!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Eyes up top, thudfucks! We got our reigning motherfucking champion ziplining in from on fucking high!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1923409501",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_36()
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

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|594789409");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_41()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel3",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|690871014");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_20_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_20_Enabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_20_ForceNormalEndCalled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_20_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108737164563976990",
        -- Entity,
        [2] = "2107644983575069435",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|707650894");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_88_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305027444124",
        -- missionLayerId,
        [1] = "27160322612010360",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|709228739");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_66_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v6_18;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2107644983575069435",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2110324711958252357",
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|762151993");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_81_Out,
    });
    l0 = self.box_HealthListener_v6_74;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = self.Champ_InitialLife,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|763116518");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_28_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_28_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108899452214333948",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|766482873");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_19_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108737387612879242",
        -- Entity,
        [2] = "2107644983575069435",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_99()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|802342978");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2107644983575069435",
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
            item = "MIS_310_B50_GetDown",
            id = "963908",
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

function export:OnEnter_box_MIS_310_AnnouncerDialogs_75()
    local params;
    DrawTextToScreen("Comment: DLG : Is this it? Is this where we lose our undisputed motherfucking champ?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Is this it? Is this where we lose our undisputed motherfucking champ?");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "4043051469",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|880819840");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_85_A_gt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_FloatArithmetics_v2_81,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|926191114");
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
        [8] = "MIS_310_B60 Ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|971144245");
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

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1024610596");
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
        [8] = "MIS_310_B60 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1027513945");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1036620459");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2107644983575069435",
        -- pawns,
        [2] = "2107644983575069435",
        -- value,
        [3] = 75000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1069357087");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_47()
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

function export:OnEnter_box_SoundModifier_v2_56()
    local params;
    params = {
        -- Pawns,
        [0] = "2109124164999720884",
        -- SoundId,
        [1] = "2462076257",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_42()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#F5AAD0A2",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_22()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2108737164563976990",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_34()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "dbg_skipbeat",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_37()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel1",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_44()
    local params, l0;
    DrawTextToScreen("Comment: DLG : This is the big one! All the marbles!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : This is the big one! All the marbles!");
    l0 = self.box_CharacterLoadedIdListener_v2_46;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "794067873",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_38()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel2",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_18()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#F5AAD0A2",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1380116040");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_29_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_29_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108890072989323768",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1427488173");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1431328761");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
                [3] = self.f_box_OutputOrder_v2_24_Out_3,
                [4] = self.f_box_OutputOrder_v2_24_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1440857541");
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

function export:OnEnter_box_SoundModifier_v2_70()
    local params;
    params = {
        -- Pawns,
        [0] = "2109015536816896993",
        -- SoundId,
        [1] = "179921432",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_78()
    local params;
    DrawTextToScreen("Comment: DLG : That's it! Lolipop, some nobody from nowhere put our champion in the fucking weeds!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : That's it! Lolipop, some nobody from nowhere put our champion in the fucking weeds!");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "358407707",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_93()
    local params;
    params = {
        -- Entity,
        [0] = "2108737028832111999",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1685040125");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_82_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_82_A_le_B,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_FloatArithmetics_v2_81,
        -- B,
        [1] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1714020920");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_40_Out,
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
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_49()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel1",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_87()
    local params;
    DrawTextToScreen("Comment: DLG : Champ Taunt", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Champ Taunt");
    params = {
        -- Group,
        [0] = "#F5AAD0A2",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1978115113",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1792086237");
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

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1891710129");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_16()
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

function export:OnEnter_box_SoundModifier_v2_57()
    local params;
    params = {
        -- Pawns,
        [0] = "2109124162634133426",
        -- SoundId,
        [1] = "4184550241",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_74()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2107644983575069435",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1941896653");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_89()
    local params, l0;
    DrawTextToScreen("Comment: Champ : switch CS", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: Champ : switch CS");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|1971240257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_89_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108490820490409531",
        -- Group,
        [1] = "#F5AAD0A2",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2058803442");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_80_A_le_B,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_FloatArithmetics_v2_81,
        -- B,
        [1] = 0.6,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_51()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel3",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_50()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "takedownlevel2",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#F5AAD0A2",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109484335844308166",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_B60.domino|@MIS_310_B60_Main|2136706734");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_62_Out,
    });
    params = {
        -- Message,
        [0] = "mis310_flamer_stop_1",
    };
    return params;
end;

function export:OnExit_box_SetFloat_v2_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.Champ_InitialLife = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_81 = l0:GetDataOutValue(0);
    self._sld_Result_box_FloatArithmetics_v2_81 = l0:GetDataOutValue(0);
    self._sld_Result_box_FloatArithmetics_v2_81 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_46_LoadedIdReceived()
    local l0, l1;
    l0 = self.box_CharacterLoadedIdListener_v2_46;
    l1 = self.box_PlayDialog_v6_44;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_40_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_Bind_v4_36;
    l1:GetLuaBox().EntityA = l0:GetDataOutValue(0);
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
