LUACҦ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_010/lt01_010_b40.domino
-- User graph: LT01_010_B40
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40_Chatter_Audio.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40_Guards_Audio.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1775149796.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1856814043.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1790631716.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "eMarkerObjectiveArea",
                type = "entity",
            },
            [3] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Player/WieldInventory_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LuaDraw",
            },
            [1] = {
                name = "LuaHolster",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Drawn",
                delayed = false,
            },
            [1] = {
                name = "Holstered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterId",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/PostWWiseEventSetState.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetState",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Set",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundId",
                type = "Sound",
            },
            [1] = {
                name = "SoundType",
                type = "SoundType",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SoundMixing.lua")] = {
        stateless = true,
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
            [0] = {
                name = "SoundMixing",
                type = "SoundMixing",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SoundMusicTrigger.lua")] = {
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
                name = "Skipped",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "Priority",
                type = "int",
            },
            [3] = {
                name = "SoundType",
                type = "SoundType",
            },
            [4] = {
                name = "Stackable",
                type = "bool",
            },
            [5] = {
                name = "StartEvent",
                type = "Sound",
            },
            [6] = {
                name = "StopEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopFadeOut",
                type = "float",
            },
            [8] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [9] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
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
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40_Chatter_Audio.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Father_Audio",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40_Guards_Audio.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Convo_1",
            },
            [1] = {
                name = "Convo_2",
            },
            [2] = {
                name = "Convo_3",
            },
            [3] = {
                name = "Stop_Convo_1",
            },
            [4] = {
                name = "Stop_Convo_2",
            },
            [5] = {
                name = "Stop_Convo_3",
            },
        },
        controlInCount = 6,
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
    self._name = "LT01_010_B40";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40";
    self.Player1 = nil;
    self.PlayerGroup = nil;
    self.PlayerAdded = nil;
    self.box_ContextualActionListener_120 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|9523620");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_120_Start,
    });
    self.box_UniversalInteractionListener_73 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|62244536");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_73_Interacted,
    });
    self.box_WieldInventory_v5_17 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|71172233");
    l0:SetConnections({
    });
    self.box_StateListener_v2_34 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|121150463");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_34_StateStart,
    });
    self.box_InventoryItemListener_28 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|130085166");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_28_ItemAdded,
    });
    self.box_MultipleAND_v2_140 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|174158769");
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
        [0] = self.f_box_MultipleAND_v2_140_Out,
    });
    self.box_UniversalInteractionListener_59 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|183963592");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_59_Interacted,
    });
    self.box_ContextualActionListener_138 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|185001985");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_138_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_138_Interrupt,
        -- Start,
        [8] = self.f_box_ContextualActionListener_138_Start,
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|197090339");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_30_Out,
    });
    self.box_InventoryItemModifier_83 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|210213819");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_83_Out,
    });
    self.box_InventoryItemModifier_80 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|230626935");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_80_Out,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|234510098");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_39_Out,
    });
    self.box_LT01_010_B40_Guards_Audio_22 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40_Guards_Audio.debug.lua");
    l0 = self.box_LT01_010_B40_Guards_Audio_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_010_B40_Guards_Audio_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|247848938");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_79 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|248062219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_79_Out,
    });
    self.box_SpawnAI_36 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|254623569");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_81 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|289817784");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_81_Out,
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|303352340");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_24_Out,
    });
    self.box_InventoryItemModifier_84 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|371923246");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_84_Out,
    });
    self.box_NavLinkModifier_60 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|390391639");
    l0:SetConnections({
    });
    self.box_SoundMusicTriggerBox_66 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|397923902");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_66_Started,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|427375378");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|513971075");
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
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|519549494");
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
                [0] = self.f_box_OnceOnly_v3_44_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_119 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|530294348");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_119_Enter,
    });
    self.box_InventoryItemModifier_56 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|531569362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_56_Out,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|615619954");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|623978931");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_31_Spawned,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|636206582");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_GunsForHireSystemModifier_1 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|639411809");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_1_Disabled,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|661196821");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_CoopActivePlayers_70 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|691173167");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_70_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_70_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_70_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_70_TwoPlayers,
    });
    self.box_InventoryItemModifier_78 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|700419465");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_78_Out,
    });
    self.box_OnceOnly_v3_37 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|711471301");
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
                [0] = self.f_box_OnceOnly_v3_37_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|715070794");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_InventoryItemModifier_58 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|739664323");
    l0:SetConnections({
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|756508037");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
    });
    self.box_ContextualActionListener_137 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|765686889");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_137_Start,
    });
    self.box_SpawnAI_40 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|770380610");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_40_Spawned,
    });
    self.box_InventoryItemModifier_33 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|807348909");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_33_Out,
    });
    self.box_InventoryItemModifier_54 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|833706571");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_54_Out,
    });
    self.box_OnceOnly_v3_130 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|840884395");
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
                [0] = self.f_box_OnceOnly_v3_130_Out_0,
            },
            count = 2,
        },
    });
    self.box_InventoryItemModifier_14 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1082973310");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_14_Out,
    });
    self.box_ProximityTrigger_v2_18 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1086497712");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_18_Enter,
    });
    self.box_InventoryItemModifier_77 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1170955180");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_77_Out,
    });
    self.box_MultipleAND_v2_121 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1249704069");
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
        [0] = self.f_box_MultipleAND_v2_121_Out,
    });
    self.box_LT01_010_B40_Guards_Audio_25 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40_Guards_Audio.debug.lua");
    l0 = self.box_LT01_010_B40_Guards_Audio_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_010_B40_Guards_Audio_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1300628296");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_139 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1353333389");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_139_SomeoneNear,
    });
    self.box_InventoryItemModifier_11 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1425722698");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_11_Out,
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1448807524");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 2,
        },
    });
    self.box_InventoryItemModifier_71 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1456267265");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_71_Out,
    });
    self.box_InventoryItemModifier_76 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1526128680");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_76_Out,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1538417391");
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
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1560749435");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_43 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1582952368");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_43_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_43_Out,
    });
    self.box_ContextualActionListener_122 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1599582331");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_122_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_122_Interrupt,
        -- Start,
        [8] = self.f_box_ContextualActionListener_122_Start,
    });
    self.box_Brick_Secure_Area_v5_49 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1607872786");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_49_Success,
    });
    self.box_SpawnAI_51 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1663152003");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_51_Out,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1670930502");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_MultipleOR_145 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1691855775");
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
        [0] = self.f_box_MultipleOR_145_Out,
    });
    self.box_LT01_010_B40_Chatter_Audio_10 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40_Chatter_Audio.debug.lua");
    l0 = self.box_LT01_010_B40_Chatter_Audio_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_010_B40_Chatter_Audio_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1716058121");
    l0:SetConnections({
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1719827053");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_23_Out,
    });
    self.box_ProximityRadiusListener_v3_52 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1740172556");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_52_AllFar,
    });
    self.box_ProximityTrigger_v2_41 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1763939958");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_41_Enter,
    });
    self.box_InventoryItemModifier_8 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1859600112");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_8_Out,
    });
    self.box_LT01_010_B40_Guards_Audio_21 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B40.LT01_010_B40_Guards_Audio.debug.lua");
    l0 = self.box_LT01_010_B40_Guards_Audio_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_010_B40_Guards_Audio_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1937667872");
    l0:SetConnections({
    });
    self.box_SpawnAI_35 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1956029318");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_35_Out,
    });
    self.box_InventoryItemModifier_82 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2001008923");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_82_Out,
    });
    self.box_MultipleOR_146 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2018512845");
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
        [0] = self.f_box_MultipleOR_146_Out,
    });
    self.box_InventoryItemModifier_75 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2041471753");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_75_Out,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2055723216");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_19_Out,
    });
    self.box_ProximityTrigger_v2_50 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2106193003");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_50_Enter,
    });
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2112028179");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_42_Out,
    });
    self.box_PostWWiseEventSetState_67 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2130001669");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1344720122", "1344720122", "LT01_010_B40", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_LT01_010_B40_Chatter_Audio_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1482341773", "1482341773", "LT01_010_B40", "box_Simple_Node_115.Out", "box_LT01_010_B40_Chatter_Audio_10.Father_Audio", clone:GetLuaBox(), l0:GetLuaBox());
    -- Father_Audio
    l0:Exec(0, {
    });
end;

function export:f_box_ContextualActionListener_120_Start()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_121();
    l0 = self.box_ContextualActionListener_120;
    l1 = self.box_MultipleAND_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1878768951", "1878768951", "LT01_010_B40", "box_ContextualActionListener_120.Start", "box_MultipleAND_v2_121.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_UniversalInteractionListener_73_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_UniversalInteractionListener_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2010774351", "2010774351", "LT01_010_B40", "box_UniversalInteractionListener_73.Interacted", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_34_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_34;
    l1 = self.box_OnceOnly_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|884897415", "884897415", "LT01_010_B40", "box_StateListener_v2_34.StateStart", "box_OnceOnly_v3_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InventoryItemListener_28_ItemAdded()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_17();
    l0 = self.box_InventoryItemListener_28;
    l1 = self.box_WieldInventory_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|849700622", "849700622", "LT01_010_B40", "box_InventoryItemListener_28.ItemAdded", "box_WieldInventory_v5_17.LuaDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaDraw
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_139();
    l0 = self.box_MultipleAND_v2_140;
    l1 = self.box_ProximityRadiusListener_v3_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1281770995", "1281770995", "LT01_010_B40", "box_MultipleAND_v2_140.Out", "box_ProximityRadiusListener_v3_139.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1503825464", "1503825464", "LT01_010_B40", "box_ActivityMiscInfoModifier_v2_32.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_59_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_UniversalInteractionListener_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|388249672", "388249672", "LT01_010_B40", "box_UniversalInteractionListener_59.Interacted", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_138_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_138;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|823854453", "823854453", "LT01_010_B40", "box_ContextualActionListener_138.End", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ContextualActionListener_138_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_138;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1027603684", "1027603684", "LT01_010_B40", "box_ContextualActionListener_138.Interrupt", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_138_Start()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_140();
    l0 = self.box_ContextualActionListener_138;
    l1 = self.box_MultipleAND_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1466184828", "1466184828", "LT01_010_B40", "box_ContextualActionListener_138.Start", "box_MultipleAND_v2_140.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SpawnAI_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_40();
    l0 = self.box_SpawnAI_30;
    l1 = self.box_SpawnAI_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1130252838", "1130252838", "LT01_010_B40", "box_SpawnAI_30.Out", "box_SpawnAI_40.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_79();
    l0 = self.box_InventoryItemModifier_83;
    l1 = self.box_InventoryItemModifier_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1605554915", "1605554915", "LT01_010_B40", "box_InventoryItemModifier_83.Out", "box_InventoryItemModifier_79.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_InventoryItemModifier_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_54();
    l0 = self.box_InventoryItemModifier_80;
    l1 = self.box_InventoryItemModifier_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1405323706", "1405323706", "LT01_010_B40", "box_InventoryItemModifier_80.Out", "box_InventoryItemModifier_54.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_SpawnAI_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_SpawnAI_39;
    l1 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1886176576", "1886176576", "LT01_010_B40", "box_SpawnAI_39.Out", "box_SpawnAI_42.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_76();
    l0 = self.box_InventoryItemModifier_79;
    l1 = self.box_InventoryItemModifier_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1177184837", "1177184837", "LT01_010_B40", "box_InventoryItemModifier_79.Out", "box_InventoryItemModifier_76.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_UseContextualActionModifier_v3_47_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1043398025", "1043398025", "LT01_010_B40", "box_UseContextualActionModifier_v3_47.UseCalled", "box_Delay_v5_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_InventoryItemModifier_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_75();
    l0 = self.box_InventoryItemModifier_81;
    l1 = self.box_InventoryItemModifier_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|344262988", "344262988", "LT01_010_B40", "box_InventoryItemModifier_81.Out", "box_InventoryItemModifier_75.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_SpawnAI_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_24;
    l1 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|53542474", "53542474", "LT01_010_B40", "box_SpawnAI_24.Out", "box_SpawnAI_23.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1686909288", "1686909288", "LT01_010_B40", "box_OutputOrder_v2_113.Out", "box_ActivityEnd_4.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_116();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|635300428", "635300428", "LT01_010_B40", "box_OutputOrder_v2_113.Out", "box_Simple_Node_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_72();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1289285116", "1289285116", "LT01_010_B40", "box_GetPlayerGroup_v2_9.Out", "box_ActivityForceAndLockTracking_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_33();
    l0 = self.box_InventoryItemModifier_84;
    l1 = self.box_InventoryItemModifier_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|999077604", "999077604", "LT01_010_B40", "box_InventoryItemModifier_84.Out", "box_InventoryItemModifier_33.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_SoundMusicTriggerBox_66_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_67();
    l0 = self.box_SoundMusicTriggerBox_66;
    l1 = self.box_PostWWiseEventSetState_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2105321280", "2105321280", "LT01_010_B40", "box_SoundMusicTriggerBox_66.Started", "box_PostWWiseEventSetState_67.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_55();
    l0 = self.box_MultipleOR_62;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|72931652", "72931652", "LT01_010_B40", "box_MultipleOR_62.Out", "box_SetContextualStrategy_55.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_8();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_InventoryItemModifier_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1927856911", "1927856911", "LT01_010_B40", "box_MultipleOR_7.Out", "box_InventoryItemModifier_8.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = self.box_OnceOnly_v3_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|553059861", "553059861", "LT01_010_B40", "box_OnceOnly_v3_44.Out", "box_OutputOrder_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_119_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_ProximityTrigger_v2_119;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|689953954", "689953954", "LT01_010_B40", "box_ProximityTrigger_v2_119.Enter", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_11();
    l0 = self.box_InventoryItemModifier_56;
    l1 = self.box_InventoryItemModifier_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|899094016", "899094016", "LT01_010_B40", "box_InventoryItemModifier_56.Out", "box_InventoryItemModifier_11.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1310678877", "1310678877", "LT01_010_B40", "box_OutputOrder_v2_29.Out", "box_GetPlayerGroup_v2_9.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_28();
    l0 = self.box_InventoryItemListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2081206805", "2081206805", "LT01_010_B40", "box_OutputOrder_v2_29.Out", "box_InventoryItemListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|264741469", "264741469", "LT01_010_B40", "box_Delay_v5_13.TimeElapsed", "box_Gate_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_31_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = self.box_SpawnAI_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|807105271", "807105271", "LT01_010_B40", "box_SpawnAI_31.Spawned", "box_OutputOrder_v2_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Secure_Area_v5_49();
    l0 = self.box_MultipleOR_106;
    l1 = self.box_Brick_Secure_Area_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1821846530", "1821846530", "LT01_010_B40", "box_MultipleOR_106.Out", "box_Brick_Secure_Area_v5_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_1_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_32();
    l0 = self.box_GunsForHireSystemModifier_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|323550795", "323550795", "LT01_010_B40", "box_GunsForHireSystemModifier_1.Disabled", "box_ActivityMiscInfoModifier_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_1();
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_GunsForHireSystemModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2051710292", "2051710292", "LT01_010_B40", "box_ActivityInitialized_3.Out", "box_GunsForHireSystemModifier_1.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_70_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_70_PlayerAdded();
    params = self:OnEnter_box_InventoryItemModifier_71();
    l0 = self.box_CoopActivePlayers_70;
    l1 = self.box_InventoryItemModifier_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|408376412", "408376412", "LT01_010_B40", "box_CoopActivePlayers_70.PlayerAdded", "box_InventoryItemModifier_71.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_CoopActivePlayers_70_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_70_PlayerRemoved();
end;

function export:f_box_InventoryItemModifier_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_81();
    l0 = self.box_InventoryItemModifier_78;
    l1 = self.box_InventoryItemModifier_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|997172730", "997172730", "LT01_010_B40", "box_InventoryItemModifier_78.Out", "box_InventoryItemModifier_81.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_37_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_OnceOnly_v3_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1678359861", "1678359861", "LT01_010_B40", "box_OnceOnly_v3_37.Out", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|139972627", "139972627", "LT01_010_B40", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1284499003", "1284499003", "LT01_010_B40", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1732209812", "1732209812", "LT01_010_B40", "box_SpawnAI_20.Out", "box_SpawnAI_31.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_137_Start()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_140();
    l0 = self.box_ContextualActionListener_137;
    l1 = self.box_MultipleAND_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|11614647", "11614647", "LT01_010_B40", "box_ContextualActionListener_137.Start", "box_MultipleAND_v2_140.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_SpawnAI_40_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_40;
    l1 = self.box_LT01_010_B40_Guards_Audio_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1977579616", "1977579616", "LT01_010_B40", "box_SpawnAI_40.Spawned", "box_LT01_010_B40_Guards_Audio_25.Convo_1", l0:GetLuaBox(), l1:GetLuaBox());
    -- Convo_1
    l1:Exec(0, {
    });
end;

function export:f_box_InventoryItemModifier_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_56();
    l0 = self.box_InventoryItemModifier_33;
    l1 = self.box_InventoryItemModifier_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|502504672", "502504672", "LT01_010_B40", "box_InventoryItemModifier_33.Out", "box_InventoryItemModifier_56.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_InventoryItemModifier_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_14();
    l0 = self.box_InventoryItemModifier_54;
    l1 = self.box_InventoryItemModifier_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|719379088", "719379088", "LT01_010_B40", "box_InventoryItemModifier_54.Out", "box_InventoryItemModifier_14.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_130_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_130;
    l1 = self.box_LT01_010_B40_Guards_Audio_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|833340156", "833340156", "LT01_010_B40", "box_OnceOnly_v3_130.Out", "box_LT01_010_B40_Guards_Audio_22.Convo_2", l0:GetLuaBox(), l1:GetLuaBox());
    -- Convo_2
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_73();
    l0 = self.box_UniversalInteractionListener_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|654755205", "654755205", "LT01_010_B40", "box_OutputOrder_v2_15.Out", "box_UniversalInteractionListener_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_18();
    l0 = self.box_ProximityTrigger_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1971706827", "1971706827", "LT01_010_B40", "box_OutputOrder_v2_15.Out", "box_ProximityTrigger_v2_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_41();
    l0 = self.box_ProximityTrigger_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|583140512", "583140512", "LT01_010_B40", "box_OutputOrder_v2_15.Out", "box_ProximityTrigger_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_119();
    l0 = self.box_ProximityTrigger_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|129066197", "129066197", "LT01_010_B40", "box_OutputOrder_v2_15.Out", "box_ProximityTrigger_v2_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_LT01_010_B40_Chatter_Audio_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1381271253", "1381271253", "LT01_010_B40", "box_OutputOrder_v2_15.Out", "box_LT01_010_B40_Chatter_Audio_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_15_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_66();
    l0 = self.box_SoundMusicTriggerBox_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1788863524", "1788863524", "LT01_010_B40", "box_OutputOrder_v2_15.Out", "box_SoundMusicTriggerBox_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_68();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|462910791", "462910791", "LT01_010_B40", "box_OutputOrder_v2_15.Out", "box_SoundMixing_68.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1160825688", "1160825688", "LT01_010_B40", "box_OutputOrder_v2_15.Out", "box_CoopActivePlayers_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_120();
    l0 = self.box_ContextualActionListener_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|433406209", "433406209", "LT01_010_B40", "box_OutputOrder_v2_123.Out", "box_ContextualActionListener_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_122();
    l0 = self.box_ContextualActionListener_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1901822030", "1901822030", "LT01_010_B40", "box_OutputOrder_v2_123.Out", "box_ContextualActionListener_122.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_48();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1904117497", "1904117497", "LT01_010_B40", "box_OutputOrder_v2_53.Out", "box_UseContextualActionModifier_v3_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1772655835", "1772655835", "LT01_010_B40", "box_OutputOrder_v2_53.Out", "box_Simple_Node_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_58();
    l0 = self.box_InventoryItemModifier_14;
    l1 = self.box_InventoryItemModifier_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|290901341", "290901341", "LT01_010_B40", "box_InventoryItemModifier_14.Out", "box_InventoryItemModifier_58.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_18_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_ProximityTrigger_v2_18;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|213940678", "213940678", "LT01_010_B40", "box_ProximityTrigger_v2_18.Enter", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_82();
    l0 = self.box_InventoryItemModifier_77;
    l1 = self.box_InventoryItemModifier_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1783428722", "1783428722", "LT01_010_B40", "box_InventoryItemModifier_77.Out", "box_InventoryItemModifier_82.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|53784155", "53784155", "LT01_010_B40", "box_OutputOrder_v2_5.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|761617005", "761617005", "LT01_010_B40", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_60();
    l0 = self.box_NavLinkModifier_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2010790452", "2010790452", "LT01_010_B40", "box_OutputOrder_v2_61.Out", "box_NavLinkModifier_60.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|421032432", "421032432", "LT01_010_B40", "box_OutputOrder_v2_61.Out", "box_SpawnAI_39.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_121_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_121;
    l1 = self.box_OnceOnly_v3_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|93864310", "93864310", "LT01_010_B40", "box_MultipleAND_v2_121.Out", "box_OnceOnly_v3_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_139_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_139;
    l1 = self.box_LT01_010_B40_Guards_Audio_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1411376238", "1411376238", "LT01_010_B40", "box_ProximityRadiusListener_v3_139.SomeoneNear", "box_LT01_010_B40_Guards_Audio_21.Convo_3", l0:GetLuaBox(), l1:GetLuaBox());
    -- Convo_3
    l1:Exec(2, {
    });
end;

function export:f_box_SetContextualStrategy_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1055362619", "1055362619", "LT01_010_B40", "box_SetContextualStrategy_55.Out", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InventoryItemModifier_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_80();
    l0 = self.box_InventoryItemModifier_11;
    l1 = self.box_InventoryItemModifier_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|305173226", "305173226", "LT01_010_B40", "box_InventoryItemModifier_11.Out", "box_InventoryItemModifier_80.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_12;
    l1 = self.box_LT01_010_B40_Guards_Audio_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1163607361", "1163607361", "LT01_010_B40", "box_OnceOnly_v3_12.Out", "box_LT01_010_B40_Guards_Audio_22.Stop_Convo_2", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_Convo_2
    l1:Exec(4, {
    });
end;

function export:f_box_InventoryItemModifier_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_84();
    l0 = self.box_InventoryItemModifier_71;
    l1 = self.box_InventoryItemModifier_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|533185250", "533185250", "LT01_010_B40", "box_InventoryItemModifier_71.Out", "box_InventoryItemModifier_84.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_InventoryItemModifier_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_77();
    l0 = self.box_InventoryItemModifier_76;
    l1 = self.box_InventoryItemModifier_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1382176942", "1382176942", "LT01_010_B40", "box_InventoryItemModifier_76.Out", "box_InventoryItemModifier_77.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_52();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_ProximityRadiusListener_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2025995345", "2025995345", "LT01_010_B40", "box_MultipleOR_46.Out", "box_ProximityRadiusListener_v3_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_16;
    l1 = self.box_LT01_010_B40_Guards_Audio_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1492471498", "1492471498", "LT01_010_B40", "box_OnceOnly_v3_16.Out", "box_LT01_010_B40_Guards_Audio_21.Stop_Convo_3", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop_Convo_3
    l1:Exec(5, {
    });
end;

function export:f_box_Gate_v3_43_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_43;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1051828718", "1051828718", "LT01_010_B40", "box_Gate_v3_43.Opened", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_43_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_43;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|161461672", "161461672", "LT01_010_B40", "box_Gate_v3_43.Out", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_122_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_122;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1933907928", "1933907928", "LT01_010_B40", "box_ContextualActionListener_122.End", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_122_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_122;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1321079716", "1321079716", "LT01_010_B40", "box_ContextualActionListener_122.Interrupt", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ContextualActionListener_122_Start()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_121();
    l0 = self.box_ContextualActionListener_122;
    l1 = self.box_MultipleAND_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1094395383", "1094395383", "LT01_010_B40", "box_ContextualActionListener_122.Start", "box_MultipleAND_v2_121.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Secure_Area_v5_49_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_Brick_Secure_Area_v5_49;
    l1 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1421510560", "1421510560", "LT01_010_B40", "box_Brick_Secure_Area_v5_49.Success", "box_Gate_v3_43.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_35();
    l0 = self.box_SpawnAI_51;
    l1 = self.box_SpawnAI_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1249497297", "1249497297", "LT01_010_B40", "box_SpawnAI_51.Out", "box_SpawnAI_35.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_36();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_SpawnAI_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2106671562", "2106671562", "LT01_010_B40", "box_Delay_v5_38.TimeElapsed", "box_SpawnAI_36.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_145_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_145;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2026921158", "2026921158", "LT01_010_B40", "box_MultipleOR_145.Out", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_23;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1638419869", "1638419869", "LT01_010_B40", "box_SpawnAI_23.Out", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityForceAndLockTracking_72_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|85587398", "85587398", "LT01_010_B40", "box_ActivityForceAndLockTracking_72.Enabled", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_50();
    l0 = self.box_ProximityTrigger_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1970327261", "1970327261", "LT01_010_B40", "box_OutputOrder_v2_27.Out", "box_ProximityTrigger_v2_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1690864746", "1690864746", "LT01_010_B40", "box_OutputOrder_v2_27.Out", "box_SpawnAI_24.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_34();
    l0 = self.box_StateListener_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1254041674", "1254041674", "LT01_010_B40", "box_OutputOrder_v2_27.Out", "box_StateListener_v2_34.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_52_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_52;
    l1 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|712472222", "712472222", "LT01_010_B40", "box_ProximityRadiusListener_v3_52.AllFar", "box_OnceOnly_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_41_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_59();
    l0 = self.box_ProximityTrigger_v2_41;
    l1 = self.box_UniversalInteractionListener_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1544745145", "1544745145", "LT01_010_B40", "box_ProximityTrigger_v2_41.Enter", "box_UniversalInteractionListener_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_83();
    l0 = self.box_InventoryItemModifier_8;
    l1 = self.box_InventoryItemModifier_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1915660721", "1915660721", "LT01_010_B40", "box_InventoryItemModifier_8.Out", "box_InventoryItemModifier_83.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_51();
    l0 = self.box_SpawnAI_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|356787331", "356787331", "LT01_010_B40", "box_OutputOrder_v2_45.Out", "box_SpawnAI_51.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1054712341", "1054712341", "LT01_010_B40", "box_OutputOrder_v2_45.Out", "box_Gate_v3_43.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|641557126", "641557126", "LT01_010_B40", "box_OutputOrder_v2_45.Out", "box_MultipleOR_146.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_45_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_LT01_010_B40_Guards_Audio_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1066795620", "1066795620", "LT01_010_B40", "box_OutputOrder_v2_45.Out", "box_LT01_010_B40_Guards_Audio_25.Stop_Convo_1", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop_Convo_1
    l0:Exec(3, {
    });
end;

function export:f_box_OutputOrder_v2_45_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2111011812", "2111011812", "LT01_010_B40", "box_OutputOrder_v2_45.Out", "box_MultipleOR_145.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|184134864", "184134864", "LT01_010_B40", "box_OutputOrder_v2_132.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_132_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_69();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|196169455", "196169455", "LT01_010_B40", "box_OutputOrder_v2_132.Out", "box_SoundMixing_69.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_137();
    l0 = self.box_ContextualActionListener_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|962452733", "962452733", "LT01_010_B40", "box_OutputOrder_v2_136.Out", "box_ContextualActionListener_137.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_136_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_138();
    l0 = self.box_ContextualActionListener_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1810427010", "1810427010", "LT01_010_B40", "box_OutputOrder_v2_136.Out", "box_ContextualActionListener_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_57_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|784881508", "784881508", "LT01_010_B40", "box_GetHealthState_57.Critical", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_57_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1628078153", "1628078153", "LT01_010_B40", "box_GetHealthState_57.Dead", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_57_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|954576540", "954576540", "LT01_010_B40", "box_GetHealthState_57.Down", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetHealthState_57_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|846531415", "846531415", "LT01_010_B40", "box_GetHealthState_57.Healthy", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_57();
    l0 = self.box_SpawnAI_35;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1911753345", "1911753345", "LT01_010_B40", "box_SpawnAI_35.Out", "box_GetHealthState_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_78();
    l0 = self.box_InventoryItemModifier_82;
    l1 = self.box_InventoryItemModifier_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1832053942", "1832053942", "LT01_010_B40", "box_InventoryItemModifier_82.Out", "box_InventoryItemModifier_78.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_146_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_146;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|694864619", "694864619", "LT01_010_B40", "box_MultipleOR_146.Out", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InventoryItemModifier_75_Out()
    local l0, l1;
    l0 = self.box_InventoryItemModifier_75;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1558879309", "1558879309", "LT01_010_B40", "box_InventoryItemModifier_75.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_SpawnAI_19;
    l1 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1888883519", "1888883519", "LT01_010_B40", "box_SpawnAI_19.Out", "box_SpawnAI_30.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_48_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1988617767", "1988617767", "LT01_010_B40", "box_UseContextualActionModifier_v3_48.Disabled", "box_UseContextualActionModifier_v3_47.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_50_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = self.box_ProximityTrigger_v2_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|494888412", "494888412", "LT01_010_B40", "box_ProximityTrigger_v2_50.Enter", "box_OutputOrder_v2_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_SpawnAI_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1762742556", "1762742556", "LT01_010_B40", "box_SpawnAI_42.Out", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|@n_cleanUp");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|@n_startFatherDialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_120()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103692268901766970",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2103360252528347582",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_17()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015220298226478",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#42012D7A",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015220298226478",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_140()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|174288973");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_32_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2103360252528347582",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_138()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2104534573860788493",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099710208291902837",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_83()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847278116",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_80()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015203377185800",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101063796446465558",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_79()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015279628760114",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_36()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103694793212229247",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|262455477");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_47_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101067304663004068",
        -- Entity,
        [1] = "2101067285851550615",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_81()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847315810",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099434419250014926",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|307493044");
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
                [0] = self.f_box_OutputOrder_v2_113_Out_0,
                [1] = self.f_box_OutputOrder_v2_113_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|345523643");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_84()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847278116",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_60()
    local params;
    params = {
        -- Entity,
        [0] = "2103360338138292685",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_66()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "1775149796",
        -- StopEvent,
        [6] = "1790631716",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_119()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.PlayerGroup,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103690125432096118",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_56()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847129732",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|540150949");
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

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 12,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2098177033216495630",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_1()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_78()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015271057271553",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_58()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927638943126",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100785886745603662",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_137()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2104534573860788495",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_40()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101067276716356399",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_33()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015279628760114",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_54()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015271057271553",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|904691646");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "---- LT01_010_B40 ---- SCRIPT IS RUNNING.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|961837521");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
                [4] = self.f_box_OutputOrder_v2_15_Out_4,
                [5] = self.f_box_OutputOrder_v2_15_Out_5,
                [6] = self.f_box_OutputOrder_v2_15_Out_6,
                [7] = self.f_box_OutputOrder_v2_15_Out_7,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1009012177");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_MIS_LT01_010_Forced_Baptism_Fake_Occlusion",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1039834000");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1068846927");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_14()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847315810",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.PlayerGroup,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099626988833613080",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_77()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847222583",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1221389081");
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

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1240262524");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_121()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1265223628");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_MIS_LT01_010_Forced_Baptism_Fake_Occlusion",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_139()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = "2104534573860788494",
        -- nearZone,
        [4] = 9,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1385136284");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_55_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103790588624121683",
        -- Group,
        [1] = "2103692946944569407",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_11()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847222583",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_71()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015269155144374",
        -- players,
        [2] = self.PlayerAdded,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_76()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142847129732",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
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

function export:OnEnter_box_ContextualActionListener_122()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2101075829432806895",
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_49()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = false,
        -- gEnemyGroup,
        [3] = "#B9968BDE",
        -- Objective,
        [4] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Secure_Area",
            id = "376594",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_51()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103761836571665309",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1693793205");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103692946940375095",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1719883636");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_72_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1725833786");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = 4,
        -- id2,
        [3] = "2103790508770859007",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.PlayerGroup,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099599367093626034",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_8()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015269155144374",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1892648256");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
                [3] = self.f_box_OutputOrder_v2_45_Out_3,
                [4] = self.f_box_OutputOrder_v2_45_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1912462474");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
                [1] = self.f_box_OutputOrder_v2_132_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1937709184");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
                [1] = self.f_box_OutputOrder_v2_136_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|1951391447");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_57_Critical,
        -- Dead,
        [1] = self.f_box_GetHealthState_57_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_57_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_57_Healthy,
    });
    params = {
        -- Pawn,
        [0] = "2103692946944569407",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_35()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103191221278101138",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_82()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015203377185800",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_75()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927638943126",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 999,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2098177038914457697",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B40.domino|@LT01_010_B40|2095734784");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_48_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101067574862165161",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103191481285089465",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101063868519288713",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_67()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_Step_04", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_Step_04");
    params = {
        -- SoundId,
        [0] = "1856814043",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_70_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_70;
    self.PlayerAdded = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_70_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_70;
    self.PlayerAdded = l0:GetDataOutValue(2);
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
