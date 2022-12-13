LUACۙ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b20.domino
-- User graph: MIS_310_B20
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Gate" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/HideEntityHealth.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_Vfx.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2652772400.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3112841793.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1734731852.bnk]], "CSoundResource");
        cboxRes:LoadResource([[39000607.bnk]], "CSoundResource");
        cboxRes:LoadResource([[179921432.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3109898787.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1539841633.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1226586258.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3673287441.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2206184533.bnk]], "CSoundResource");
        cboxRes:LoadResource([[196530011.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3554481400.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4260845172.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3588815718.bnk]], "CSoundResource");
        cboxRes:LoadResource([[559086960.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3190546630.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2656448267.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3335134368.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3708482307.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2422245109.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2105803309.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3361015910.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4111202581.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1838756389.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1929426874.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1454929686.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2944532629.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2247661237.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2869418176.bnk]], "CSoundResource");
        cboxRes:LoadResource([[138148059.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_B20.debug.lua")] = {
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
            [0] = {
                name = "Gate",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua")] = {
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
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
            [4] = {
                name = "TimerExpired",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresAllPlayer",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [5] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [6] = {
                name = "eMarker",
                type = "entity",
            },
            [7] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [8] = {
                name = "eTrigger",
                type = "entity",
            },
            [9] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [10] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [11] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [12] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 13,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "BlendTime",
                type = "float",
            },
            [1] = {
                name = "Object",
                type = "entity",
            },
            [2] = {
                name = "Rot_X",
                type = "float",
            },
            [3] = {
                name = "Rot_Y",
                type = "float",
            },
            [4] = {
                name = "Rot_Z",
                type = "float",
            },
            [5] = {
                name = "X",
                type = "float",
            },
            [6] = {
                name = "Y",
                type = "float",
            },
            [7] = {
                name = "Z",
                type = "float",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.BindMarkerOverHead.debug.lua")] = {
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
                name = "Unbound",
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
                name = "eMobileMarker",
                type = "entity",
            },
            [2] = {
                name = "eTarget",
                type = "entity",
            },
            [3] = {
                name = "XValue",
                type = "float",
            },
            [4] = {
                name = "YValue",
                type = "float",
            },
            [5] = {
                name = "ZValue",
                type = "float",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PlayDialog",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FinishedOrInterrupted",
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "RegionEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
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
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
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
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
            },
        },
        controlInCount = 3,
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
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
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/UI/HideEntityHealth.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Hide",
            },
            [1] = {
                name = "Show",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Hidden",
                delayed = false,
            },
            [1] = {
                name = "Shown",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "TrackedMaterials",
            },
            [41] = {
                name = "Tutorial",
            },
        },
        controlInCount = 42,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
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
    self._name = "MIS_310_B20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20";
    self.players = nil;
    self.lilfucker = nil;
    self.box_PlayDialog_v6_66 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|19659829");
    l0:SetConnections({
    });
    self.box_SpawnAI_85 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|35538567");
    l0:SetConnections({
    });
    self.box_Delay_v5_146 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|50176789");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_146_TimeElapsed,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|57981172");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_BindMarkerOverHead_156 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead.debug.lua");
    l0 = self.box_BindMarkerOverHead_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|70518168");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_BindMarkerOverHead_156_Bound,
    });
    self.box_Custom_PlayDialog_122 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|83152544");
    l0:SetConnections({
        -- FinishedOrInterrupted,
        [0] = self.f_box_Custom_PlayDialog_122_FinishedOrInterrupted,
    });
    self.box_ProximityRadiusListener_v3_47 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|124949222");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_47_SomeoneNear,
    });
    self.box_AddWorldOffset_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|139782230");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_AddWorldOffset_13_Done,
        -- Started,
        [2] = self.f_box_AddWorldOffset_13_Started,
    });
    self.box_ProximityTrigger_v3_69 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|145879092");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_69_Enter,
    });
    self.box_EntityStatusListener_157 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|173117518");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_157_Loaded,
    });
    self.box_Delay_v5_147 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|214902013");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_147_TimeElapsed,
    });
    self.box_SpawnAI_126 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|215331080");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_126_Spawned,
    });
    self.box_GunsForHireSystemModifier_51 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|262725621");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_51_Disabled,
    });
    self.box_MIS_310_COMMON_DisableNavlinks_162 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua");
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_DisableNavlinks_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|276227161");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_DisableNavlinks_162_Out,
    });
    self.box_GroupIter_164 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|279644792");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_164_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_164_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_164_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_164_Stopped,
    });
    self.box_ProximityRadiusListener_v3_114 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|308607211");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_114_SomeoneNear,
    });
    self.box_PlayerSpeedModifier_v3_56 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|322086947");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PlayerSpeedModifier_v3_56_Done,
    });
    self.box_PlayDialog_v6_101 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|337548632");
    l0:SetConnections({
    });
    self.box_IgnoreSignal_v2_57 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|365489334");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_57_Disabled,
    });
    self.box_AddWorldOffset_104 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|371220959");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_170 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|382844283");
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
                [0] = self.f_box_OnceOnly_v3_170_Out_0,
            },
            count = 2,
        },
    });
    self.box_AddWorldOffset_115 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|394652202");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_100 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|421932951");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_100_Enter,
    });
    self.box_ProximityTrigger_v3_73 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|437611603");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_73_Enter,
    });
    self.box_MultipleAND_v2_40 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|438808284");
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
        [0] = self.f_box_MultipleAND_v2_40_Out,
    });
    self.box_SoundModifier_v2_132 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|466494553");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_132_Started,
    });
    self.box_AddWorldOffset_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|473690612");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_123 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|492551927");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_123_Finished,
    });
    self.box_SoundModifier_v2_135 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|505062098");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_109 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|566056366");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_116 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|567641576");
    l0:SetConnections({
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|573648170");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_MIS_310_COMMON_Vfx_10 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_Vfx.debug.lua");
    l0 = self.box_MIS_310_COMMON_Vfx_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_Vfx_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|600298956");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_Vfx_10_Out,
    });
    self.box_AddWorldOffset_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|618082006");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_AddWorldOffset_33_Started,
    });
    self.box_AddWorldOffset_34 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|630749945");
    l0:SetConnections({
    });
    self.box_RegenerateNavmesh_169 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|649271291");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_169_Out,
    });
    self.box_NoWeaponMode_v3_99 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|682600089");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_99_OnLeave,
    });
    self.box_Custom_PlayDialog_63 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|726056771");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_127 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|731293459");
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
                [0] = self.f_box_OnceOnly_v3_127_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_105 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|734340191");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_105_SomeoneNear,
    });
    self.box_NavLinkModifier_163 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|754848030");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_163_Deactivated,
    });
    self.box_AddWorldOffset_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|771817845");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_AddWorldOffset_25_Started,
    });
    self.box_Custom_PlayDialog_121 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|813390365");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_60 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|868638385");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_60_Out,
    });
    self.box_IgnoreSignal_v2_84 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|881095520");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_84_Enabled,
    });
    self.box_ActivityInitialized_9 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|897642940");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_9_Out,
    });
    self.box_RemoveEntity_v2_176 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|899111994");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_176_Out,
    });
    self.box_AddWorldOffset_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|906502263");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_AddWorldOffset_24_Done,
        -- Started,
        [2] = self.f_box_AddWorldOffset_24_Started,
    });
    self.box_IgnoreSignal_v2_55 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|908856701");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_55_Enabled,
    });
    self.box_AddWorldOffset_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|913774180");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_AddWorldOffset_35_Done,
    });
    self.box_Reach_GoTo_v3_87 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|933709417");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_87_Success,
    });
    self.box_SoundModifier_v2_48 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|949590292");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_44 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|954669855");
    l0:SetConnections({
    });
    self.box_IgnoreSignal_v2_112 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|971152044");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_112_Enabled,
    });
    self.box_PlayDialog_v6_61 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|988214668");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_83 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|998366929");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_83_SomeoneNear,
    });
    self.box_PlayDialog_v6_77 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1003355986");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_129 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1007454045");
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
                [0] = self.f_box_OnceOnly_v3_129_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_58 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1017715369");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_58_SomeoneNear,
    });
    self.box_ProximityTrigger_v3_72 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1019790136");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_72_Enter,
    });
    self.box_ProximityRadiusListener_v3_76 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1026567944");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_76_SomeoneNear,
    });
    self.box_SoundModifier_v2_41 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1028839875");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_49 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1039998604");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_153 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1040374211");
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
                [0] = self.f_box_OnceOnly_v3_153_Out_0,
            },
            count = 2,
        },
    });
    self.box_Reach_GoTo_v3_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1066269490");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_14_Success,
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1145058380");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_Custom_PlayDialog_39 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1150770436");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Custom_PlayDialog_39_Started,
    });
    self.box_PlayDialog_v6_62 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1165548927");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_62_Started,
    });
    self.box_ContextualActionListener_145 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1180818484");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_145_Enabled,
        -- Start,
        [8] = self.f_box_ContextualActionListener_145_Start,
    });
    self.box_MIS_310_COMMON_RELOAD_InventoryBackup_158 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua");
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_RELOAD_InventoryBackup_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1237597785");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_RELOAD_InventoryBackup_158_Out,
    });
    self.box_IgnoreSignal_v2_113 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1245538967");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_113_Disabled,
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1251247473");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1272857976");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_2_Success,
    });
    self.box_OnceOnly_v3_174 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1291396343");
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
                [0] = self.f_box_OnceOnly_v3_174_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v3_90 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1300676531");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_90_Enter,
    });
    self.box_Custom_PlayDialog_117 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1331109507");
    l0:SetConnections({
        -- FinishedOrInterrupted,
        [0] = self.f_box_Custom_PlayDialog_117_FinishedOrInterrupted,
    });
    self.box_Custom_PlayDialog_110 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1331707587");
    l0:SetConnections({
        -- FinishedOrInterrupted,
        [0] = self.f_box_Custom_PlayDialog_110_FinishedOrInterrupted,
    });
    self.box_ProximityRadiusListener_v3_80 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1340271752");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_80_SomeoneNear,
    });
    self.box_OnceOnly_v3_171 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1413270991");
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
                [0] = self.f_box_OnceOnly_v3_171_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_166 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1475367816");
    l0:SetConnections({
    });
    self.box_AddWorldOffset_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1487439871");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_AddWorldOffset_30_Started,
    });
    self.box_VisibilityModifier_89 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1505494621");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_89_Disabled,
    });
    self.box_Reach_GoTo_v3_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1514207225");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_22_Success,
    });
    self.box_IgnoreSignal_v2_96 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1539646916");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_96_Enabled,
    });
    self.box_GroupSizeListener_v6_32 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1546741871");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_32_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_32_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_32_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_32_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_32_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_32_MemberSpawned,
    });
    self.box_AddWorldOffset_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1564688985");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_AddWorldOffset_21_Done,
        -- Started,
        [2] = self.f_box_AddWorldOffset_21_Started,
    });
    self.box_IgnoreSignal_v2_94 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1565664843");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_94_Disabled,
    });
    self.box_PlayDialog_v6_78 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1586655518");
    l0:SetConnections({
    });
    self.box_IgnoreSignal_v2_95 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1587898614");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_95_Enabled,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1612317718");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_SoundModifier_v2_46 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1631243963");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_54 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1645927932");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_54_ApplySpeedFactorOut,
        -- ForceWalkOut,
        [2] = self.f_box_PlayerSpeedModifier_v3_54_ForceWalkOut,
    });
    self.box_PhysicsModifier_155 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1668154814");
    l0:SetConnections({
    });
    self.box_Delay_v5_168 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1700923940");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_168_TimeElapsed,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1710567141");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_AddWorldOffset_161 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1714846617");
    l0:SetConnections({
    });
    self.box_NoWeaponMode_v3_98 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1728833839");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_98_OnEnter,
    });
    self.box_MIS_310_EnvSettings_124 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua");
    l0 = self.box_MIS_310_EnvSettings_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_EnvSettings_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1737351342");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MIS_310_EnvSettings_124_Enabled,
    });
    self.box_SoundModifier_v2_45 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1741198705");
    l0:SetConnections({
    });
    self.box_AddWorldOffset_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1784521167");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_AddWorldOffset_26_Started,
    });
    self.box_Reach_GoTo_v3_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1827938963");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_17_Success,
    });
    self.box_OnceOnly_v3_173 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1852967041");
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
                [0] = self.f_box_OnceOnly_v3_173_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_310_AnnouncerDialogs_133 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1866507563");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_133_Finished,
    });
    self.box_MIS_310_COMMON_JIP_Inventory_175 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua");
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_COMMON_JIP_Inventory_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1877713717");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_COMMON_JIP_Inventory_175_Out,
    });
    self.box_Custom_PlayDialog_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1880234322");
    l0:SetConnections({
        -- FinishedOrInterrupted,
        [0] = self.f_box_Custom_PlayDialog_12_FinishedOrInterrupted,
    });
    self.box_MultipleOR_152 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1895271308");
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
        [0] = self.f_box_MultipleOR_152_Out,
    });
    self.box_MIS_310_AnnouncerDialogs_134 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_AnnouncerDialogs.debug.lua");
    l0 = self.box_MIS_310_AnnouncerDialogs_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_AnnouncerDialogs_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1895393063");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_310_AnnouncerDialogs_134_Finished,
    });
    self.box_MultipleAND_v2_160 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1925384144");
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
        [0] = self.f_box_MultipleAND_v2_160_Out,
    });
    self.box_AddWorldOffset_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.AddWorldOffset.debug.lua");
    l0 = self.box_AddWorldOffset_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddWorldOffset_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1936575786");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_AddWorldOffset_19_Done,
        -- Started,
        [2] = self.f_box_AddWorldOffset_19_Started,
    });
    self.box_IgnoreSignal_v2_86 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1991530283");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_86_Disabled,
    });
    self.box_SoundModifier_v2_111 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1994345388");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_82 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2013058561");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_172 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2027769178");
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
                [0] = self.f_box_OnceOnly_v3_172_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v3_71 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2039490009");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_71_Enter,
    });
    self.box_SoundModifier_v2_50 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2052615739");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_92 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2065736933");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_92_Started,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2076038654");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_IgnoreSignal_v2_91 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2112776886");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_91_Disabled,
    });
    self.box_PlayDialog_v6_79 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2114164286");
    l0:SetConnections({
    });
    self.box_Custom_PlayDialog_119 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2121584216");
    l0:SetConnections({
        -- FinishedOrInterrupted,
        [0] = self.f_box_Custom_PlayDialog_119_FinishedOrInterrupted,
    });
    self.box_PlayDialog_v6_64 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2122371863");
    l0:SetConnections({
    });
    self.box_Delay_v5_151 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2134545402");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_151_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1768177308", "1768177308", "MIS_310_B20", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_176();
    l0 = self.box_RemoveEntity_v2_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1552723584", "1552723584", "MIS_310_B20", "box_Simple_Node_42.Out", "box_RemoveEntity_v2_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|292530515", "292530515", "MIS_310_B20", "box_Simple_Node_43.Out", "box_OutputOrder_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_PhysicsModifier_155();
    l0 = self.box_PhysicsModifier_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|37300598", "37300598", "MIS_310_B20", "box_Simple_Node_43.Out", "box_PhysicsModifier_155.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_71();
    l0 = self.box_ProximityTrigger_v3_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|398364875", "398364875", "MIS_310_B20", "box_Simple_Node_43.Out", "box_ProximityTrigger_v3_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v3_69();
    l0 = self.box_ProximityTrigger_v3_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2126524372", "2126524372", "MIS_310_B20", "box_Simple_Node_43.Out", "box_ProximityTrigger_v3_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupIter_164();
    l0 = self.box_GroupIter_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1930980817", "1930980817", "MIS_310_B20", "box_Simple_Node_43.Out", "box_GroupIter_164.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_90();
    l0 = self.box_ProximityTrigger_v3_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1763878111", "1763878111", "MIS_310_B20", "box_Simple_Node_43.Out", "box_ProximityTrigger_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v3_73();
    l0 = self.box_ProximityTrigger_v3_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1178218780", "1178218780", "MIS_310_B20", "box_Simple_Node_43.Out", "box_ProximityTrigger_v3_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_PlayerSpeedModifier_v3_54();
    l0 = self.box_PlayerSpeedModifier_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1364964253", "1364964253", "MIS_310_B20", "box_Simple_Node_43.Out", "box_PlayerSpeedModifier_v3_54.ForceWalk", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceWalk
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v3_100();
    l0 = self.box_ProximityTrigger_v3_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|168883749", "168883749", "MIS_310_B20", "box_Simple_Node_43.Out", "box_ProximityTrigger_v3_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v3_72();
    l0 = self.box_ProximityTrigger_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1110266521", "1110266521", "MIS_310_B20", "box_Simple_Node_43.Out", "box_ProximityTrigger_v3_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GetPlayerGroup_v2_52();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1022584215", "1022584215", "MIS_310_B20", "box_Simple_Node_43.Out", "box_GetPlayerGroup_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_VisibilityModifier_89();
    l0 = self.box_VisibilityModifier_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|774788127", "774788127", "MIS_310_B20", "box_Simple_Node_43.Out", "box_VisibilityModifier_89.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_143_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddWorldOffset_115();
    l0 = self.box_AddWorldOffset_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|214830697", "214830697", "MIS_310_B20", "box_Simple_Node_143.Out", "box_AddWorldOffset_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_120_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_107();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|493945197", "493945197", "MIS_310_B20", "box_Simple_Node_120.Out", "box_UseContextualActionModifier_v3_107.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1828671636", "1828671636", "MIS_310_B20", "box_Simple_Node_75.Out", "box_PlayDialog_v6_65.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_146_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_167();
    l0 = self.box_Delay_v5_146;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1472289132", "1472289132", "MIS_310_B20", "box_Delay_v5_146.TimeElapsed", "box_OutputOrder_v2_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_AddWorldOffset_21();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_AddWorldOffset_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|249863622", "249863622", "MIS_310_B20", "box_Delay_v5_29.TimeElapsed", "box_AddWorldOffset_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_53_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|550386191", "550386191", "MIS_310_B20", "box_GetPlayerGroup_v2_53.Out", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BindMarkerOverHead_156_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_128();
    l0 = self.box_BindMarkerOverHead_156;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2116225081", "2116225081", "MIS_310_B20", "box_BindMarkerOverHead_156.Bound", "box_AddActivityObjective_v2_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_PlayDialog_122_FinishedOrInterrupted()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_121();
    l0 = self.box_Custom_PlayDialog_122;
    l1 = self.box_Custom_PlayDialog_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|717055755", "717055755", "MIS_310_B20", "box_Custom_PlayDialog_122.FinishedOrInterrupted", "box_Custom_PlayDialog_121.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_47_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_47;
    l1 = self.box_OnceOnly_v3_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1469728982", "1469728982", "MIS_310_B20", "box_ProximityRadiusListener_v3_47.SomeoneNear", "box_OnceOnly_v3_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddWorldOffset_13_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_109();
    l0 = self.box_AddWorldOffset_13;
    l1 = self.box_NavLinkModifier_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|948313684", "948313684", "MIS_310_B20", "box_AddWorldOffset_13.Done", "box_NavLinkModifier_109.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_AddWorldOffset_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_AddWorldOffset_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|802315301", "802315301", "MIS_310_B20", "box_AddWorldOffset_13.Started", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_69_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_ProximityTrigger_v3_69;
    l1 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1905790759", "1905790759", "MIS_310_B20", "box_ProximityTrigger_v3_69.Enter", "box_PlayDialog_v6_62.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_157_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_BindMarkerOverHead_156();
    l0 = self.box_EntityStatusListener_157;
    l1 = self.box_BindMarkerOverHead_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1378763629", "1378763629", "MIS_310_B20", "box_EntityStatusListener_157.Loaded", "box_BindMarkerOverHead_156.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_147_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_63();
    l0 = self.box_Delay_v5_147;
    l1 = self.box_Custom_PlayDialog_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1767361713", "1767361713", "MIS_310_B20", "box_Delay_v5_147.TimeElapsed", "box_Custom_PlayDialog_63.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_126_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_132();
    l0 = self.box_SpawnAI_126;
    l1 = self.box_SoundModifier_v2_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1118391831", "1118391831", "MIS_310_B20", "box_SpawnAI_126.Spawned", "box_SoundModifier_v2_132.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_106_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_106();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|942980287", "942980287", "MIS_310_B20", "box_UseContextualActionModifier_v3_106.Enabled", "box_UseContextualActionModifier_v3_106.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_143();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1406917819", "1406917819", "MIS_310_B20", "box_OutputOrder_v2_142.Out", "box_Simple_Node_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_50();
    l0 = self.box_SoundModifier_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1032206198", "1032206198", "MIS_310_B20", "box_OutputOrder_v2_142.Out", "box_SoundModifier_v2_50.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_51_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_51;
    l1 = self.box_ActivityInitialized_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|274221142", "274221142", "MIS_310_B20", "box_GunsForHireSystemModifier_51.Disabled", "box_ActivityInitialized_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MIS_310_COMMON_DisableNavlinks_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_169();
    l0 = self.box_MIS_310_COMMON_DisableNavlinks_162;
    l1 = self.box_RegenerateNavmesh_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1507473965", "1507473965", "MIS_310_B20", "box_MIS_310_COMMON_DisableNavlinks_162.Out", "box_RegenerateNavmesh_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupIter_164_EndIter()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_32();
    l0 = self.box_GroupIter_164;
    l1 = self.box_GroupSizeListener_v6_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|83333712", "83333712", "MIS_310_B20", "box_GroupIter_164.EndIter", "box_GroupSizeListener_v6_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupIter_164_PawnIter()
    local params, l0, l1;
    params = self:OnEnter_box_HideEntityHealth_165();
    l0 = self.box_GroupIter_164;
    l1 = Boxes[GetPathID("Domino/System/UI/HideEntityHealth.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2146280077", "2146280077", "MIS_310_B20", "box_GroupIter_164.PawnIter", "box_HideEntityHealth_165.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_17();
    l0 = self.box_Reach_GoTo_v3_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1850311020", "1850311020", "MIS_310_B20", "box_OutputOrder_v2_16.Out", "box_Reach_GoTo_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddWorldOffset_30();
    l0 = self.box_AddWorldOffset_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1832483542", "1832483542", "MIS_310_B20", "box_OutputOrder_v2_16.Out", "box_AddWorldOffset_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_87();
    l0 = self.box_Reach_GoTo_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1901626066", "1901626066", "MIS_310_B20", "box_OutputOrder_v2_16.Out", "box_Reach_GoTo_v3_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1143088055", "1143088055", "MIS_310_B20", "box_OutputOrder_v2_159.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_141();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1301560193", "1301560193", "MIS_310_B20", "box_OutputOrder_v2_159.Out", "box_MissionBlockLayer_141.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_114_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_114;
    l1 = self.box_OnceOnly_v3_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|872172404", "872172404", "MIS_310_B20", "box_ProximityRadiusListener_v3_114.SomeoneNear", "box_OnceOnly_v3_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayerSpeedModifier_v3_56_Done()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_57();
    l0 = self.box_PlayerSpeedModifier_v3_56;
    l1 = self.box_IgnoreSignal_v2_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|821438418", "821438418", "MIS_310_B20", "box_PlayerSpeedModifier_v3_56.Done", "box_IgnoreSignal_v2_57.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_144_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_131();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1749316276", "1749316276", "MIS_310_B20", "box_UseContextualActionModifier_v3_144.Disabled", "box_UseContextualActionModifier_v3_131.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|869477499", "869477499", "MIS_310_B20", "box_OutputOrder_v2_1.Out", "box_Print_v2_5.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|331828288", "331828288", "MIS_310_B20", "box_OutputOrder_v2_1.Out", "box_ActivityEnd_8.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_57_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_86();
    l0 = self.box_IgnoreSignal_v2_57;
    l1 = self.box_IgnoreSignal_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1680379018", "1680379018", "MIS_310_B20", "box_IgnoreSignal_v2_57.Disabled", "box_IgnoreSignal_v2_86.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_139_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddWorldOffset_33();
    l0 = self.box_AddWorldOffset_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|795582362", "795582362", "MIS_310_B20", "box_OutputOrder_v2_139.Out", "box_AddWorldOffset_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_139_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_60();
    l0 = self.box_RemoveEntity_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|99600621", "99600621", "MIS_310_B20", "box_OutputOrder_v2_139.Out", "box_RemoveEntity_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_170_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = self.box_OnceOnly_v3_170;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|8587426", "8587426", "MIS_310_B20", "box_OnceOnly_v3_170.Out", "box_OutputOrder_v2_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_100_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_119();
    l0 = self.box_ProximityTrigger_v3_100;
    l1 = self.box_Custom_PlayDialog_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1809177368", "1809177368", "MIS_310_B20", "box_ProximityTrigger_v3_100.Enter", "box_Custom_PlayDialog_119.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_52_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_105();
    l0 = self.box_ProximityRadiusListener_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|912590697", "912590697", "MIS_310_B20", "box_GetPlayerGroup_v2_52.Out", "box_ProximityRadiusListener_v3_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_73_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_64();
    l0 = self.box_ProximityTrigger_v3_73;
    l1 = self.box_PlayDialog_v6_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|140336448", "140336448", "MIS_310_B20", "box_ProximityTrigger_v3_73.Enter", "box_PlayDialog_v6_64.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = self.box_MultipleAND_v2_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1480006519", "1480006519", "MIS_310_B20", "box_MultipleAND_v2_40.Out", "box_OutputOrder_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_132_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_157();
    l0 = self.box_SoundModifier_v2_132;
    l1 = self.box_EntityStatusListener_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|484396543", "484396543", "MIS_310_B20", "box_SoundModifier_v2_132.Started", "box_EntityStatusListener_157.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_130_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_160();
    l0 = self.box_MultipleAND_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1328282330", "1328282330", "MIS_310_B20", "box_MissionBlockLayer_130.Activated", "box_MultipleAND_v2_160.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PlayDialog_v6_123_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_123;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1901317838", "1901317838", "MIS_310_B20", "box_PlayDialog_v6_123.Finished", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_163();
    l0 = self.box_NavLinkModifier_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1403532674", "1403532674", "MIS_310_B20", "box_OutputOrder_v2_7.Out", "box_NavLinkModifier_163.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_PlayDialog_117();
    l0 = self.box_Custom_PlayDialog_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1066846168", "1066846168", "MIS_310_B20", "box_OutputOrder_v2_7.Out", "box_Custom_PlayDialog_117.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_138_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_138();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|508896819", "508896819", "MIS_310_B20", "box_UseContextualActionModifier_v3_138.Enabled", "box_UseContextualActionModifier_v3_138.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1993714789", "1993714789", "MIS_310_B20", "box_Delay_v5_18.TimeElapsed", "box_OutputOrder_v2_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_Vfx_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_51();
    l0 = self.box_MIS_310_COMMON_Vfx_10;
    l1 = self.box_GunsForHireSystemModifier_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1946429197", "1946429197", "MIS_310_B20", "box_MIS_310_COMMON_Vfx_10.Out", "box_GunsForHireSystemModifier_51.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_AddWorldOffset_33_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_48();
    l0 = self.box_AddWorldOffset_33;
    l1 = self.box_SoundModifier_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1014115104", "1014115104", "MIS_310_B20", "box_AddWorldOffset_33.Started", "box_SoundModifier_v2_48.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RegenerateNavmesh_169_Out()
    local l0, l1;
    l0 = self.box_RegenerateNavmesh_169;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2100056116", "2100056116", "MIS_310_B20", "box_RegenerateNavmesh_169.Out", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_177_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2098990587", "2098990587", "MIS_310_B20", "box_MissionBlockLayer_177.Activated", "box_MIS_310_COMMON_JIP_Inventory_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_NoWeaponMode_v3_99_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_113();
    l0 = self.box_NoWeaponMode_v3_99;
    l1 = self.box_IgnoreSignal_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1151755593", "1151755593", "MIS_310_B20", "box_NoWeaponMode_v3_99.OnLeave", "box_IgnoreSignal_v2_113.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_127_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_78();
    l0 = self.box_OnceOnly_v3_127;
    l1 = self.box_PlayDialog_v6_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|713214807", "713214807", "MIS_310_B20", "box_OnceOnly_v3_127.Out", "box_PlayDialog_v6_78.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_105_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_105;
    l1 = self.box_OnceOnly_v3_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1137410065", "1137410065", "MIS_310_B20", "box_ProximityRadiusListener_v3_105.SomeoneNear", "box_OnceOnly_v3_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NavLinkModifier_163_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_20();
    l0 = self.box_NavLinkModifier_163;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|588560330", "588560330", "MIS_310_B20", "box_NavLinkModifier_163.Deactivated", "box_MissionBlockLayer_20.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_134();
    l0 = self.box_MIS_310_AnnouncerDialogs_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|205535353", "205535353", "MIS_310_B20", "box_OutputOrder_v2_88.Out", "box_MIS_310_AnnouncerDialogs_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_130();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|939854155", "939854155", "MIS_310_B20", "box_OutputOrder_v2_88.Out", "box_MissionBlockLayer_130.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_56();
    l0 = self.box_PlayerSpeedModifier_v3_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|852122977", "852122977", "MIS_310_B20", "box_OutputOrder_v2_88.Out", "box_PlayerSpeedModifier_v3_56.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_AddWorldOffset_25_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AddWorldOffset_104();
    l0 = self.box_AddWorldOffset_25;
    l1 = self.box_AddWorldOffset_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|463020391", "463020391", "MIS_310_B20", "box_AddWorldOffset_25.Started", "box_AddWorldOffset_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_118_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_158();
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|882329108", "882329108", "MIS_310_B20", "box_ActivityObjectiveMarkerModifier_v3_118.Enabled", "box_MIS_310_COMMON_RELOAD_InventoryBackup_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|407464077", "407464077", "MIS_310_B20", "box_OutputOrder_v2_150.Out", "box_Delay_v5_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_149();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1699512736", "1699512736", "MIS_310_B20", "box_OutputOrder_v2_150.Out", "box_UseContextualActionModifier_v3_149.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_147();
    l0 = self.box_Delay_v5_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1048369134", "1048369134", "MIS_310_B20", "box_OutputOrder_v2_150.Out", "box_Delay_v5_147.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_140();
    l0 = self.box_RemoveEntity_v2_60;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1568123226", "1568123226", "MIS_310_B20", "box_RemoveEntity_v2_60.Out", "box_MissionBlockLayer_140.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_128_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_118();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2099258495", "2099258495", "MIS_310_B20", "box_AddActivityObjective_v2_128.Out", "box_ActivityObjectiveMarkerModifier_v3_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_84_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_95();
    l0 = self.box_IgnoreSignal_v2_84;
    l1 = self.box_IgnoreSignal_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|389098657", "389098657", "MIS_310_B20", "box_IgnoreSignal_v2_84.Enabled", "box_IgnoreSignal_v2_95.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_53();
    l0 = self.box_ActivityInitialized_9;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1679208830", "1679208830", "MIS_310_B20", "box_ActivityInitialized_9.Out", "box_GetPlayerGroup_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_RemoveEntity_v2_176;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1613584910", "1613584910", "MIS_310_B20", "box_RemoveEntity_v2_176.Out", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddWorldOffset_24_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = self.box_AddWorldOffset_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|923416140", "923416140", "MIS_310_B20", "box_AddWorldOffset_24.Done", "box_OutputOrder_v2_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddWorldOffset_24_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_142();
    l0 = self.box_AddWorldOffset_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1071011152", "1071011152", "MIS_310_B20", "box_AddWorldOffset_24.Started", "box_OutputOrder_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_84();
    l0 = self.box_IgnoreSignal_v2_55;
    l1 = self.box_IgnoreSignal_v2_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1021961114", "1021961114", "MIS_310_B20", "box_IgnoreSignal_v2_55.Enabled", "box_IgnoreSignal_v2_84.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddWorldOffset_35_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_AnnouncerDialogs_133();
    l0 = self.box_AddWorldOffset_35;
    l1 = self.box_MIS_310_AnnouncerDialogs_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1801126574", "1801126574", "MIS_310_B20", "box_AddWorldOffset_35.Done", "box_MIS_310_AnnouncerDialogs_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|242609516", "242609516", "MIS_310_B20", "box_OutputOrder_v2_31.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_103();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1490751650", "1490751650", "MIS_310_B20", "box_OutputOrder_v2_31.Out", "box_UseContextualActionModifier_v3_103.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_87_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_139();
    l0 = self.box_Reach_GoTo_v3_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|806998238", "806998238", "MIS_310_B20", "box_Reach_GoTo_v3_87.Success", "box_OutputOrder_v2_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_14();
    l0 = self.box_Reach_GoTo_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1293826747", "1293826747", "MIS_310_B20", "box_OutputOrder_v2_23.Out", "box_Reach_GoTo_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_59();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1308967349", "1308967349", "MIS_310_B20", "box_OutputOrder_v2_23.Out", "box_GetPlayerGroup_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_112_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_98();
    l0 = self.box_IgnoreSignal_v2_112;
    l1 = self.box_NoWeaponMode_v3_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1036676548", "1036676548", "MIS_310_B20", "box_IgnoreSignal_v2_112.Enabled", "box_NoWeaponMode_v3_98.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_83_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_83;
    l1 = self.box_OnceOnly_v3_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|336100029", "336100029", "MIS_310_B20", "box_ProximityRadiusListener_v3_83.SomeoneNear", "box_OnceOnly_v3_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_129_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_79();
    l0 = self.box_OnceOnly_v3_129;
    l1 = self.box_PlayDialog_v6_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1404179880", "1404179880", "MIS_310_B20", "box_OnceOnly_v3_129.Out", "box_PlayDialog_v6_79.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_58_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_58;
    l1 = self.box_OnceOnly_v3_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|546347310", "546347310", "MIS_310_B20", "box_ProximityRadiusListener_v3_58.SomeoneNear", "box_OnceOnly_v3_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_72_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_66();
    l0 = self.box_ProximityTrigger_v3_72;
    l1 = self.box_PlayDialog_v6_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|709445176", "709445176", "MIS_310_B20", "box_ProximityTrigger_v3_72.Enter", "box_PlayDialog_v6_66.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_76_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_76;
    l1 = self.box_OnceOnly_v3_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1621595646", "1621595646", "MIS_310_B20", "box_ProximityRadiusListener_v3_76.SomeoneNear", "box_OnceOnly_v3_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_153_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_40();
    l0 = self.box_OnceOnly_v3_153;
    l1 = self.box_MultipleAND_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|987761221", "987761221", "MIS_310_B20", "box_OnceOnly_v3_153.Out", "box_MultipleAND_v2_40.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_154_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_131();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2009616376", "2009616376", "MIS_310_B20", "box_OutputOrder_v2_154.Out", "box_UseContextualActionModifier_v3_131.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_151();
    l0 = self.box_Delay_v5_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|218023849", "218023849", "MIS_310_B20", "box_OutputOrder_v2_154.Out", "box_Delay_v5_151.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_PlayDialog_12();
    l0 = self.box_Custom_PlayDialog_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|97351411", "97351411", "MIS_310_B20", "box_OutputOrder_v2_137.Out", "box_Custom_PlayDialog_12.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_136();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1868233839", "1868233839", "MIS_310_B20", "box_OutputOrder_v2_137.Out", "box_UseContextualActionModifier_v3_136.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_14_Success()
    local params, l0, l1;
    params = self:OnEnter_box_AddWorldOffset_19();
    l0 = self.box_Reach_GoTo_v3_14;
    l1 = self.box_AddWorldOffset_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|814028965", "814028965", "MIS_310_B20", "box_Reach_GoTo_v3_14.Success", "box_AddWorldOffset_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_103_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_102();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|853549284", "853549284", "MIS_310_B20", "box_UseContextualActionModifier_v3_103.Disabled", "box_UseContextualActionModifier_v3_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_103_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_103();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|635678754", "635678754", "MIS_310_B20", "box_UseContextualActionModifier_v3_103.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_103.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_131_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_145();
    l0 = self.box_ContextualActionListener_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|800509559", "800509559", "MIS_310_B20", "box_UseContextualActionModifier_v3_131.Enabled", "box_ContextualActionListener_145.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_Delay_v5_67;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|398661172", "398661172", "MIS_310_B20", "box_Delay_v5_67.TimeElapsed", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_PlayDialog_39_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_144();
    l0 = self.box_Custom_PlayDialog_39;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1612988185", "1612988185", "MIS_310_B20", "box_Custom_PlayDialog_39.Started", "box_UseContextualActionModifier_v3_144.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_62_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_85();
    l0 = self.box_PlayDialog_v6_62;
    l1 = self.box_SpawnAI_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1288655128", "1288655128", "MIS_310_B20", "box_PlayDialog_v6_62.Started", "box_SpawnAI_85.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_145_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_154();
    l0 = self.box_ContextualActionListener_145;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1263223655", "1263223655", "MIS_310_B20", "box_ContextualActionListener_145.Enabled", "box_OutputOrder_v2_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_145_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_146();
    l0 = self.box_ContextualActionListener_145;
    l1 = self.box_Delay_v5_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2031157142", "2031157142", "MIS_310_B20", "box_ContextualActionListener_145.Start", "box_Delay_v5_146.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_148_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_148();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|93159018", "93159018", "MIS_310_B20", "box_UseContextualActionModifier_v3_148.Enabled", "box_UseContextualActionModifier_v3_148.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|881275572", "881275572", "MIS_310_B20", "box_OutputOrder_v2_70.Out", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|297226981", "297226981", "MIS_310_B20", "box_OutputOrder_v2_70.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_38_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|963277369", "963277369", "MIS_310_B20", "box_MissionBlockLayer_38.Disabled", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_RELOAD_InventoryBackup_158_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_RELOAD_InventoryBackup_158;
    l1 = self.box_MIS_310_COMMON_DisableNavlinks_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2108759626", "2108759626", "MIS_310_B20", "box_MIS_310_COMMON_RELOAD_InventoryBackup_158.Out", "box_MIS_310_COMMON_DisableNavlinks_162.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddWorldOffset_25();
    l0 = self.box_AddWorldOffset_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2122291976", "2122291976", "MIS_310_B20", "box_OutputOrder_v2_28.Out", "box_AddWorldOffset_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddWorldOffset_26();
    l0 = self.box_AddWorldOffset_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|590919719", "590919719", "MIS_310_B20", "box_OutputOrder_v2_28.Out", "box_AddWorldOffset_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_135();
    l0 = self.box_SoundModifier_v2_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1561864456", "1561864456", "MIS_310_B20", "box_OutputOrder_v2_28.Out", "box_SoundModifier_v2_135.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_113_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideDisabledLogicId_179();
    l0 = self.box_IgnoreSignal_v2_113;
    l1 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1043726211", "1043726211", "MIS_310_B20", "box_IgnoreSignal_v2_113.Disabled", "box_OverrideDisabledLogicId_179.Interaction", l0:GetLuaBox(), l1:GetLuaBox());
    -- Interaction
    l1:Exec(29, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_Reach_GoTo_v3_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1442234688", "1442234688", "MIS_310_B20", "box_Reach_GoTo_v3_2.Success", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_174_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_101();
    l0 = self.box_OnceOnly_v3_174;
    l1 = self.box_PlayDialog_v6_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|228054904", "228054904", "MIS_310_B20", "box_OnceOnly_v3_174.Out", "box_PlayDialog_v6_101.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_90_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_116();
    l0 = self.box_ProximityTrigger_v3_90;
    l1 = self.box_PlayDialog_v6_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1492746480", "1492746480", "MIS_310_B20", "box_ProximityTrigger_v3_90.Enter", "box_PlayDialog_v6_116.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Custom_PlayDialog_117_FinishedOrInterrupted()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_110();
    l0 = self.box_Custom_PlayDialog_117;
    l1 = self.box_Custom_PlayDialog_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|590568241", "590568241", "MIS_310_B20", "box_Custom_PlayDialog_117.FinishedOrInterrupted", "box_Custom_PlayDialog_110.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_Custom_PlayDialog_110_FinishedOrInterrupted()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_39();
    l0 = self.box_Custom_PlayDialog_110;
    l1 = self.box_Custom_PlayDialog_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1998122736", "1998122736", "MIS_310_B20", "box_Custom_PlayDialog_110.FinishedOrInterrupted", "box_Custom_PlayDialog_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_80_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_80;
    l1 = self.box_OnceOnly_v3_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|413378265", "413378265", "MIS_310_B20", "box_ProximityRadiusListener_v3_80.SomeoneNear", "box_OnceOnly_v3_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|732639384", "732639384", "MIS_310_B20", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1853966360", "1853966360", "MIS_310_B20", "box_OutputOrder_v2_4.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_171_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddWorldOffset_13();
    l0 = self.box_OnceOnly_v3_171;
    l1 = self.box_AddWorldOffset_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1459702576", "1459702576", "MIS_310_B20", "box_OnceOnly_v3_171.Out", "box_AddWorldOffset_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_2();
    l0 = self.box_Reach_GoTo_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1934896805", "1934896805", "MIS_310_B20", "box_OutputOrder_v2_27.Out", "box_Reach_GoTo_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|684010811", "684010811", "MIS_310_B20", "box_OutputOrder_v2_27.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_92();
    l0 = self.box_SoundModifier_v2_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1367328614", "1367328614", "MIS_310_B20", "box_OutputOrder_v2_93.Out", "box_SoundModifier_v2_92.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|13712625", "13712625", "MIS_310_B20", "box_OutputOrder_v2_93.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddWorldOffset_30_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_46();
    l0 = self.box_AddWorldOffset_30;
    l1 = self.box_SoundModifier_v2_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|791541755", "791541755", "MIS_310_B20", "box_AddWorldOffset_30.Started", "box_SoundModifier_v2_46.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_89_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddWorldOffset_68();
    l0 = self.box_VisibilityModifier_89;
    l1 = self.box_AddWorldOffset_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1493948819", "1493948819", "MIS_310_B20", "box_VisibilityModifier_89.Disabled", "box_AddWorldOffset_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_107_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_106();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|414579833", "414579833", "MIS_310_B20", "box_UseContextualActionModifier_v3_107.Disabled", "box_UseContextualActionModifier_v3_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_107_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_107();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1056096685", "1056096685", "MIS_310_B20", "box_UseContextualActionModifier_v3_107.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_22_Success()
    local params, l0, l1;
    params = self:OnEnter_box_AddWorldOffset_24();
    l0 = self.box_Reach_GoTo_v3_22;
    l1 = self.box_AddWorldOffset_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|26819160", "26819160", "MIS_310_B20", "box_Reach_GoTo_v3_22.Success", "box_AddWorldOffset_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_102_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_102();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1453054255", "1453054255", "MIS_310_B20", "box_UseContextualActionModifier_v3_102.Enabled", "box_UseContextualActionModifier_v3_102.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_96_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_112();
    l0 = self.box_IgnoreSignal_v2_96;
    l1 = self.box_IgnoreSignal_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2090455995", "2090455995", "MIS_310_B20", "box_IgnoreSignal_v2_96.Enabled", "box_IgnoreSignal_v2_112.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_32_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_HideEntityHealth_11();
    l0 = self.box_GroupSizeListener_v6_32;
    l1 = Boxes[GetPathID("Domino/System/UI/HideEntityHealth.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|650426392", "650426392", "MIS_310_B20", "box_GroupSizeListener_v6_32.MemberAdded", "box_HideEntityHealth_11.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddWorldOffset_21_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v3_22();
    l0 = self.box_AddWorldOffset_21;
    l1 = self.box_Reach_GoTo_v3_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1669443354", "1669443354", "MIS_310_B20", "box_AddWorldOffset_21.Done", "box_Reach_GoTo_v3_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddWorldOffset_21_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_49();
    l0 = self.box_AddWorldOffset_21;
    l1 = self.box_SoundModifier_v2_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1402879254", "1402879254", "MIS_310_B20", "box_AddWorldOffset_21.Started", "box_SoundModifier_v2_49.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_94_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_99();
    l0 = self.box_IgnoreSignal_v2_94;
    l1 = self.box_NoWeaponMode_v3_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1162785565", "1162785565", "MIS_310_B20", "box_IgnoreSignal_v2_94.Disabled", "box_NoWeaponMode_v3_99.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_95_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_96();
    l0 = self.box_IgnoreSignal_v2_95;
    l1 = self.box_IgnoreSignal_v2_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|384124230", "384124230", "MIS_310_B20", "box_IgnoreSignal_v2_95.Enabled", "box_IgnoreSignal_v2_96.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_177();
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1154581781", "1154581781", "MIS_310_B20", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MissionBlockLayer_177.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_125();
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|885333813", "885333813", "MIS_310_B20", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MissionBlockLayer_125.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerSpeedModifier_v3_54_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_55();
    l0 = self.box_PlayerSpeedModifier_v3_54;
    l1 = self.box_IgnoreSignal_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2039512416", "2039512416", "MIS_310_B20", "box_PlayerSpeedModifier_v3_54.ApplySpeedFactorOut", "box_IgnoreSignal_v2_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayerSpeedModifier_v3_54_ForceWalkOut()
    local params, l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_54();
    l0 = self.box_PlayerSpeedModifier_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|163111609", "163111609", "MIS_310_B20", "box_PlayerSpeedModifier_v3_54.ForceWalkOut", "box_PlayerSpeedModifier_v3_54.ApplySpeedFactor", l0:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_168_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_123();
    l0 = self.box_Delay_v5_168;
    l1 = self.box_PlayDialog_v6_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|481264076", "481264076", "MIS_310_B20", "box_Delay_v5_168.TimeElapsed", "box_PlayDialog_v6_123.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_37_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_37;
    l1 = self.box_MIS_310_EnvSettings_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|264415858", "264415858", "MIS_310_B20", "box_MultipleOR_37.Out", "box_MIS_310_EnvSettings_124.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MissionBlockLayer_20_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2066854521", "2066854521", "MIS_310_B20", "box_MissionBlockLayer_20.Activated", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NoWeaponMode_v3_98_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideDisabledLogicId_178();
    l0 = self.box_NoWeaponMode_v3_98;
    l1 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|56950719", "56950719", "MIS_310_B20", "box_NoWeaponMode_v3_98.OnEnter", "box_OverrideDisabledLogicId_178.Interaction", l0:GetLuaBox(), l1:GetLuaBox());
    -- Interaction
    l1:Exec(29, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_59_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_58();
    l0 = self.box_ProximityRadiusListener_v3_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|169434548", "169434548", "MIS_310_B20", "box_GetPlayerGroup_v2_59.Out", "box_ProximityRadiusListener_v3_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MIS_310_EnvSettings_124_Enabled()
    local l0, l1;
    l0 = self.box_MIS_310_EnvSettings_124;
    l1 = self.box_MIS_310_COMMON_Vfx_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1668092156", "1668092156", "MIS_310_B20", "box_MIS_310_EnvSettings_124.Enabled", "box_MIS_310_COMMON_Vfx_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, {
    });
end;

function export:f_box_AddWorldOffset_26_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AddWorldOffset_161();
    l0 = self.box_AddWorldOffset_26;
    l1 = self.box_AddWorldOffset_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1290344746", "1290344746", "MIS_310_B20", "box_AddWorldOffset_26.Started", "box_AddWorldOffset_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_125_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_126();
    l0 = self.box_SpawnAI_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1756257599", "1756257599", "MIS_310_B20", "box_MissionBlockLayer_125.Activated", "box_SpawnAI_126.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_17_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = self.box_Reach_GoTo_v3_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|278895951", "278895951", "MIS_310_B20", "box_Reach_GoTo_v3_17.Success", "box_OutputOrder_v2_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_173_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_77();
    l0 = self.box_OnceOnly_v3_173;
    l1 = self.box_PlayDialog_v6_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2033828863", "2033828863", "MIS_310_B20", "box_OnceOnly_v3_173.Out", "box_PlayDialog_v6_77.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MIS_310_AnnouncerDialogs_133_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = self.box_MIS_310_AnnouncerDialogs_133;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1471314133", "1471314133", "MIS_310_B20", "box_MIS_310_AnnouncerDialogs_133.Finished", "box_OutputOrder_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_COMMON_JIP_Inventory_175_Out()
    local l0, l1;
    l0 = self.box_MIS_310_COMMON_JIP_Inventory_175;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|545657178", "545657178", "MIS_310_B20", "box_MIS_310_COMMON_JIP_Inventory_175.Out", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Custom_PlayDialog_12_FinishedOrInterrupted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_Custom_PlayDialog_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|634720970", "634720970", "MIS_310_B20", "box_Custom_PlayDialog_12.FinishedOrInterrupted", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_152_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_152;
    l1 = self.box_OnceOnly_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1123833852", "1123833852", "MIS_310_B20", "box_MultipleOR_152.Out", "box_OnceOnly_v3_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MIS_310_AnnouncerDialogs_134_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_160();
    l0 = self.box_MIS_310_AnnouncerDialogs_134;
    l1 = self.box_MultipleAND_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1724098637", "1724098637", "MIS_310_B20", "box_MIS_310_AnnouncerDialogs_134.Finished", "box_MultipleAND_v2_160.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_MultipleAND_v2_160;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1815558739", "1815558739", "MIS_310_B20", "box_MultipleAND_v2_160.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddWorldOffset_19_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_38();
    l0 = self.box_AddWorldOffset_19;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1764025116", "1764025116", "MIS_310_B20", "box_AddWorldOffset_19.Done", "box_MissionBlockLayer_38.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddWorldOffset_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_45();
    l0 = self.box_AddWorldOffset_19;
    l1 = self.box_SoundModifier_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1982408965", "1982408965", "MIS_310_B20", "box_AddWorldOffset_19.Started", "box_SoundModifier_v2_45.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_86_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_91();
    l0 = self.box_IgnoreSignal_v2_86;
    l1 = self.box_IgnoreSignal_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|754964832", "754964832", "MIS_310_B20", "box_IgnoreSignal_v2_86.Disabled", "box_IgnoreSignal_v2_91.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddWorldOffset_35();
    l0 = self.box_AddWorldOffset_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1699253208", "1699253208", "MIS_310_B20", "box_OutputOrder_v2_36.Out", "box_AddWorldOffset_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddWorldOffset_34();
    l0 = self.box_AddWorldOffset_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|245048398", "245048398", "MIS_310_B20", "box_OutputOrder_v2_36.Out", "box_AddWorldOffset_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_41();
    l0 = self.box_SoundModifier_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|315384064", "315384064", "MIS_310_B20", "box_OutputOrder_v2_36.Out", "box_SoundModifier_v2_41.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_172_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_82();
    l0 = self.box_OnceOnly_v3_172;
    l1 = self.box_PlayDialog_v6_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|277473747", "277473747", "MIS_310_B20", "box_OnceOnly_v3_172.Out", "box_PlayDialog_v6_82.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_71_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_61();
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_PlayDialog_v6_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|295539322", "295539322", "MIS_310_B20", "box_ProximityTrigger_v3_71.Enter", "box_PlayDialog_v6_61.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_167_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1558383253", "1558383253", "MIS_310_B20", "box_OutputOrder_v2_167.Out", "box_Delay_v5_168.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_167_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_166();
    l0 = self.box_PlayDialog_v6_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1616120232", "1616120232", "MIS_310_B20", "box_OutputOrder_v2_167.Out", "box_PlayDialog_v6_166.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_92_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_111();
    l0 = self.box_SoundModifier_v2_92;
    l1 = self.box_SoundModifier_v2_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|957495306", "957495306", "MIS_310_B20", "box_SoundModifier_v2_92.Started", "box_SoundModifier_v2_111.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_40();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_MultipleAND_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|749886955", "749886955", "MIS_310_B20", "box_Delay_v5_15.TimeElapsed", "box_MultipleAND_v2_40.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_UseContextualActionModifier_v3_149_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_148();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1380052872", "1380052872", "MIS_310_B20", "box_UseContextualActionModifier_v3_149.Disabled", "box_UseContextualActionModifier_v3_148.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_91_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_94();
    l0 = self.box_IgnoreSignal_v2_91;
    l1 = self.box_IgnoreSignal_v2_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|539665572", "539665572", "MIS_310_B20", "box_IgnoreSignal_v2_91.Disabled", "box_IgnoreSignal_v2_94.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_44();
    l0 = self.box_SoundModifier_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1507958696", "1507958696", "MIS_310_B20", "box_OutputOrder_v2_108.Out", "box_SoundModifier_v2_44.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|670369263", "670369263", "MIS_310_B20", "box_OutputOrder_v2_108.Out", "box_Simple_Node_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Custom_PlayDialog_119_FinishedOrInterrupted()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_122();
    l0 = self.box_Custom_PlayDialog_119;
    l1 = self.box_Custom_PlayDialog_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2026059215", "2026059215", "MIS_310_B20", "box_Custom_PlayDialog_119.FinishedOrInterrupted", "box_Custom_PlayDialog_122.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_136_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_138();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2045837592", "2045837592", "MIS_310_B20", "box_UseContextualActionModifier_v3_136.Disabled", "box_UseContextualActionModifier_v3_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_136_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_136();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|779175277", "779175277", "MIS_310_B20", "box_UseContextualActionModifier_v3_136.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_136.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_47();
    l0 = self.box_ProximityRadiusListener_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1243695804", "1243695804", "MIS_310_B20", "box_OutputOrder_v2_81.Out", "box_ProximityRadiusListener_v3_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_80();
    l0 = self.box_ProximityRadiusListener_v3_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|234360773", "234360773", "MIS_310_B20", "box_OutputOrder_v2_81.Out", "box_ProximityRadiusListener_v3_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_83();
    l0 = self.box_ProximityRadiusListener_v3_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|833865744", "833865744", "MIS_310_B20", "box_OutputOrder_v2_81.Out", "box_ProximityRadiusListener_v3_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_76();
    l0 = self.box_ProximityRadiusListener_v3_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|752067845", "752067845", "MIS_310_B20", "box_OutputOrder_v2_81.Out", "box_ProximityRadiusListener_v3_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_114();
    l0 = self.box_ProximityRadiusListener_v3_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|932416779", "932416779", "MIS_310_B20", "box_OutputOrder_v2_81.Out", "box_ProximityRadiusListener_v3_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_151_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_151;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1742327003", "1742327003", "MIS_310_B20", "box_Delay_v5_151.TimeElapsed", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|@beat_end");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|@close_fakewall");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_143_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|@kid_goprocess");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_120_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|@playdlg_shock");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_66()
    local params;
    DrawTextToScreen("Comment: DLG : Won't last two seconds! You gonna pee yourself? I love it when they pee!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Won't last two seconds! You gonna pee yourself? I love it when they pee!");
    params = {
        -- Group,
        [0] = "2107727646157713903",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3109898787",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_85()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109582353383852467",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_146()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|67035678");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_53_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_156()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2107577798395697368",
        -- eTarget,
        [2] = "2109513989072363637",
        -- XValue,
        [3] = 0.45,
        -- YValue,
        [4] = 0,
        -- ZValue,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_122()
    local params;
    DrawTextToScreen("Comment: DLG : You're gonna diiie in theeerree!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : You're gonna diiie in theeerree!");
    params = {
        -- Group,
        [0] = "2108972525273753587",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2869418176",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.players,
        -- id2,
        [3] = "2108142255641471402",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_13()
    local params;
    DrawTextToScreen("Comment: Open", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'AddWorldOffset')-- Comment: Open");
    params = {
        -- BlendTime,
        [0] = 2,
        -- Object,
        [1] = "2108144818698864223",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = 0.5,
        -- Y,
        [6] = 2.01,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_69()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108988270294652480",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_157()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109513989072363637",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_147()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_126()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109513989066072173",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|231974672");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_106_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109096249117406738",
        -- Entity,
        [2] = "2109513989072363637",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|244338823");
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
                [0] = self.f_box_OutputOrder_v2_142_Out_0,
                [1] = self.f_box_OutputOrder_v2_142_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_51()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_164()
    local params;
    params = {
        -- entities,
        [0] = "#6ED549D5",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|288940206");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|304775981");
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
                [0] = self.f_box_OutputOrder_v2_159_Out_0,
                [1] = self.f_box_OutputOrder_v2_159_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.players,
        -- id2,
        [3] = "2108822351679326694",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_56()
    local params;
    params = {
        -- blendTime,
        [0] = 2,
        -- factor,
        [1] = 1,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|322851153");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_144_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108490594513886311",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_101()
    local params;
    DrawTextToScreen("Comment: DLG : Hah! The scab's all weedy!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Hah! The scab's all weedy!");
    params = {
        -- Group,
        [0] = "2108822351679326694",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2105803309",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|348921540");
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

function export:OnEnter_box_IgnoreSignal_v2_57()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sprint",
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_104()
    local params;
    params = {
        -- BlendTime,
        [0] = 2,
        -- Object,
        [1] = "2109956932704937156",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = -2.2,
        -- Y,
        [6] = 0.31,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|376426325");
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
                [0] = self.f_box_OutputOrder_v2_139_Out_0,
                [1] = self.f_box_OutputOrder_v2_139_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_115()
    local params;
    params = {
        -- BlendTime,
        [0] = 0,
        -- Object,
        [1] = "2109761281211763468",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = 0,
        -- Y,
        [6] = 0,
        -- Z,
        [7] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_100()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109085108534285457",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|430002064");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_52_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108988340530370118",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_40()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_132()
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

function export:OnEnter_box_AddWorldOffset_68()
    local params;
    params = {
        -- BlendTime,
        [0] = 0,
        -- Object,
        [1] = "2109761281211763468",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = 0,
        -- Y,
        [6] = 0,
        -- Z,
        [7] = -5,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_130()
    local params, l0;
    DrawTextToScreen("Comment: Enable Crowd Layer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Enable Crowd Layer");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|485411817");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_130_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181911775924266",
        -- missionLayerId,
        [1] = "63189111030665258",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_123()
    local params;
    DrawTextToScreen("Comment: DLG : Here comes Little Fucker's latest human sacrifice: LOLLIPOP!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Here comes Little Fucker's latest human sacrifice: LOLLIPOP!");
    params = {
        -- Group,
        [0] = "2109508925691792224",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1734731852",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|503472053");
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

function export:OnEnter_box_SoundModifier_v2_135()
    local params;
    params = {
        -- Pawns,
        [0] = "2107712485762021482",
        -- SoundId,
        [1] = "3588815718",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|546469015");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_138_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109094896232049800",
        -- Entity,
        [2] = "2109513989072363637",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_109()
    local params;
    params = {
        -- Entity,
        [0] = "2109970489991502018",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_116()
    local params;
    DrawTextToScreen("Comment: DLG : Oof, this is gonna be a slaughter.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Oof, this is gonna be a slaughter.");
    params = {
        -- Group,
        [0] = "2109112930950796538",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "39000607",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_HideEntityHealth_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/HideEntityHealth.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HideEntityHealth_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|610748714");
    l0:SetConnections({
    });
    l0 = self.box_GroupSizeListener_v6_32;
    params = {
        -- entityId,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_33()
    local params;
    DrawTextToScreen("Comment: Close Process 2nd Door", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'AddWorldOffset')-- Comment: Close Process 2nd Door");
    params = {
        -- BlendTime,
        [0] = 1,
        -- Object,
        [1] = "2109264423444033760",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = 0.5,
        -- Y,
        [6] = 2.01,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_34()
    local params;
    params = {
        -- BlendTime,
        [0] = 1,
        -- Object,
        [1] = "2107712485762021482",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = -2.2,
        -- Y,
        [6] = 0.31,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_169()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2110035656561409180",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|666531247");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_177_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160308378824354",
        -- missionLayerId,
        [1] = "45174706888796260",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_99()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_63()
    local params;
    DrawTextToScreen("Comment: DLG : You're gonna eat the dirt!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : You're gonna eat the dirt!");
    params = {
        -- Group,
        [0] = "2109995401655359769",
        -- RelevancyTime,
        [1] = 8,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2247661237",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2109513989072363637",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_163()
    local params;
    params = {
        -- Entity,
        [0] = "2109970489991502018",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|770049786");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
                [3] = self.f_box_OutputOrder_v2_88_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_25()
    local params;
    params = {
        -- BlendTime,
        [0] = 2,
        -- Object,
        [1] = "2107812164654859716",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = -2.2,
        -- Y,
        [6] = 0.31,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|812624151");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_118_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107577798395697368",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_310_B20_ExitSewers",
            id = "1021429",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_121()
    local params;
    DrawTextToScreen("Comment: DLG : Shut it! Lolipop's gonna wipe the floor with those chumps!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : Shut it! Lolipop's gonna wipe the floor with those chumps!");
    params = {
        -- Group,
        [0] = "2109109467697129909",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2944532629",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|826620114");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
                [2] = self.f_box_OutputOrder_v2_150_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_60()
    local params;
    params = {
        -- Group,
        [0] = "#2F456D78",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|880841703");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_128_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_310_B20_ExitSewers",
            id = "1021429",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_84()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_176()
    local params;
    params = {
        -- Group,
        [0] = "2109761281211763468",
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_24()
    local params;
    DrawTextToScreen("Comment: Close behind player", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'AddWorldOffset')-- Comment: Close behind player");
    params = {
        -- BlendTime,
        [0] = 0.5,
        -- Object,
        [1] = "2108143919402331301",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = -2,
        -- Y,
        [6] = 0.3,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_55()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sprint",
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_35()
    local params;
    params = {
        -- BlendTime,
        [0] = 1,
        -- Object,
        [1] = "2107812164654859716",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = 2.2,
        -- Y,
        [6] = -0.31,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|924071777");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_87()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = true,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eTrigger,
        [8] = "2108144912175220320",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_48()
    local params;
    params = {
        -- Pawns,
        [0] = "2109264423444033760",
        -- SoundId,
        [1] = "2422245109",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_44()
    local params;
    params = {
        -- Pawns,
        [0] = "2108144818698864223",
        -- SoundId,
        [1] = "3708482307",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|964307587");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_112()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "climb",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_61()
    local params;
    DrawTextToScreen("Comment: DLG : THAT'S Meatface? [dismissive noise]I'm betting on the dogs!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : THAT'S Meatface? [dismissive noise]I'm betting on the dogs!");
    params = {
        -- Group,
        [0] = "2109164357274315199",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3335134368",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.players,
        -- id2,
        [3] = "2108142256151079362",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_77()
    local params;
    DrawTextToScreen("Comment: DLG : First rule of the fighting pit is you gotta tell everyone you know. Get the word out, get exposure, all that.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : First rule of the fighting pit is you gotta tell everyone you know. Get the word out, get exposure, all that.");
    params = {
        -- Group,
        [0] = "2108142254437706080",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4111202581",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2108144818698864223",
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1017815211");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108988335117620804",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.players,
        -- id2,
        [3] = "2108142254437706080",
        -- nearZone,
        [4] = 9,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_41()
    local params;
    params = {
        -- Pawns,
        [0] = "2107712485762021482",
        -- SoundId,
        [1] = "1539841633",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_49()
    local params;
    params = {
        -- Pawns,
        [0] = "2108143919402331301",
        -- SoundId,
        [1] = "3708482307",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1051816694");
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
                [0] = self.f_box_OutputOrder_v2_154_Out_0,
                [1] = self.f_box_OutputOrder_v2_154_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1055151093");
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

function export:OnEnter_box_Reach_GoTo_v3_14()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = true,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = false,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2108143558530697362",
        -- eTrigger,
        [8] = "2108735639055773353",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_310_B20_GoProcess",
            id = "1026741",
        },
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_140()
    local params, l0;
    DrawTextToScreen("Comment: Disabled Process room Layer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Disabled Process room Layer");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1068349065");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160308378824354",
        -- missionLayerId,
        [1] = "36167507633565346",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1070923725");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_103_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_103_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109094896232049800",
        -- Entity,
        [2] = "2109513989072363637",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1079651979");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_131_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109883921576502205",
        -- Entity,
        [2] = "2108490579622009944",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_39()
    local params;
    DrawTextToScreen("Comment: DLG : [laugh]Alright, squirt, \"Lolipop\" it is. Get into the ring, Lolipop.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : [laugh]Alright, squirt, \"Lolipop\" it is. Get into the ring, Lolipop.");
    params = {
        -- Group,
        [0] = "2108490579622009944",
        -- RelevancyTime,
        [1] = 8,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2656448267",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_62()
    local params;
    DrawTextToScreen("Comment: DLG : You're dead, Lolipop! You're alive now but you're still dead!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : You're dead, Lolipop! You're alive now but you're still dead!");
    params = {
        -- Group,
        [0] = "2107726662517923378",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3190546630",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_145()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109883921576502205",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1213184572");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_148_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109885440740857864",
        -- Entity,
        [2] = "2108490579622009944",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1232647463");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1233747729");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_38_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160308378824354",
        -- missionLayerId,
        [1] = "45174706888796260",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_COMMON_RELOAD_InventoryBackup_158()
    local params;
    DrawTextToScreen("Comment: Only if RELOAD", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_COMMON_RELOAD_InventoryBackup')-- Comment: Only if RELOAD");
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1242318619");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_113()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "climb",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    DrawTextToScreen("Comment: DLG : There's a nasty shock waiting for you in there!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : There's a nasty shock waiting for you in there!");
    params = {
        -- Group,
        [0] = "2108987274617198878",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "559086960",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_2()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresAllPlayer,
        [2] = true,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = false,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2107755722560247593",
        -- eRadiusTarget,
        [7] = "2107658610776503058",
        -- fDistanceFromTarget,
        [9] = 15,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_310_B20_EnterArena",
            id = "963903",
        },
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1288100029");
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
        [8] = "MIS_310_B20 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_HideEntityHealth_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/HideEntityHealth.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HideEntityHealth_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1291551093");
    l0:SetConnections({
    });
    l0 = self.box_GroupIter_164;
    params = {
        -- entityId,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109761258323446536",
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_117()
    local params;
    DrawTextToScreen("Comment: DLG : Hey, you need a fighting name before you go in there. So we know who to bet against. Hm...", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : Hey, you need a fighting name before you go in there. So we know who to bet against. Hm...");
    params = {
        -- Group,
        [0] = "2108490579622009944",
        -- RelevancyTime,
        [1] = 8,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "196530011",
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_110()
    local params;
    DrawTextToScreen("Comment: DLG : They're Lolipop! Clearly a Lolipop, all over their face!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : They're Lolipop! Clearly a Lolipop, all over their face!");
    params = {
        -- Group,
        [0] = "2109513989072363637",
        -- RelevancyTime,
        [1] = 8,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "138148059",
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1333120359");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.players,
        -- id2,
        [3] = "2108142256625035764",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1381795011");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1432471903");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_166()
    local params;
    params = {
        -- Group,
        [0] = "2108490579622009944",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1226586258",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1484244952");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_30()
    local params;
    DrawTextToScreen("Comment: Open Process 2nd Door", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'AddWorldOffset')-- Comment: Open Process 2nd Door");
    params = {
        -- BlendTime,
        [0] = 2,
        -- Object,
        [1] = "2109264423444033760",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = -0.5,
        -- Y,
        [6] = -2.01,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1500633324");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_89()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109761281211763468",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1513285327");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_107_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_107_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109095095094490472",
        -- Entity,
        [2] = "2109513989072363637",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_22()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = true,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2108143945954372780",
        -- eTrigger,
        [8] = "2108931533835397726",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_310_B20_GoUnderground",
            id = "1030305",
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1537968749");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_102_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109095095094490472",
        -- Entity,
        [2] = "2109513989072363637",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_96()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "short_range_melee_start_HACK",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_32()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#6ED549D5",
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_21()
    local params;
    params = {
        -- BlendTime,
        [0] = 2,
        -- Object,
        [1] = "2108143919402331301",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = 2,
        -- Y,
        [6] = -0.3,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_94()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "short_range_melee_start_HACK",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_78()
    local params;
    DrawTextToScreen("Comment: DLG : Gotta go right for the face. Every time. They never see it coming.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Gotta go right for the face. Every time. They never see it coming.");
    params = {
        -- Group,
        [0] = "2108142256625035764",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3554481400",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_95()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "short_range_melee_start",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_46()
    local params;
    params = {
        -- Pawns,
        [0] = "2109264423444033760",
        -- SoundId,
        [1] = "3708482307",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_54()
    local params;
    DrawTextToScreen("Comment: SPEED FACTOR", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayerSpeedModifier_v3')-- Comment: SPEED FACTOR");
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.5,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_155()
    local params;
    DrawTextToScreen("Comment: needs that book on the table for the STP, and it blocks NPC", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhysicsModifier')-- Comment: needs that book on the table for the STP, and it blocks NPC");
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109885744152621225",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_168()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_161()
    local params;
    params = {
        -- BlendTime,
        [0] = 2,
        -- Object,
        [1] = "2109956932707034310",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = 2.2,
        -- Y,
        [6] = -0.31,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_20()
    local params, l0;
    DrawTextToScreen("Comment: Highwaymen Layer loaded", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Highwaymen Layer loaded");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1720231713");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_20_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "90210693097750113",
        -- missionLayerId,
        [1] = "27160305415575623",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_98()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1736750464");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_45()
    local params;
    params = {
        -- Pawns,
        [0] = "2108144818698864223",
        -- SoundId,
        [1] = "2422245109",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_141()
    local params, l0;
    DrawTextToScreen("Comment: Disable Higwaymen", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Disable Higwaymen");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1780912981");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "90210693097750113",
        -- missionLayerId,
        [1] = "27160305415575623",
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_26()
    local params;
    params = {
        -- BlendTime,
        [0] = 2,
        -- Object,
        [1] = "2107712485762021482",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = 2.2,
        -- Y,
        [6] = -0.31,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|1807728405");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_125_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160308378824354",
        -- missionLayerId,
        [1] = "45174706888796260",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_17()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = false,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2108143564937496726",
        -- eTrigger,
        [8] = "2108736922902867321",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_310_B20_GoUnderground",
            id = "1030305",
        },
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_133()
    local params;
    DrawTextToScreen("Comment: DLG : Let's stop fucking around and welcome our new friend Meatface to the party! Let's hope they last longer than the last one.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG : Let's stop fucking around and welcome our new friend Meatface to the party! Let's hope they last longer than the last one.");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "1838756389",
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_12()
    local params;
    DrawTextToScreen("Comment: DLG : You! Yeah I'm here for you! I know what's the skinny around here. Irwin told me who you are. Follow me!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : You! Yeah I'm here for you! I know what's the skinny around here. Irwin told me who you are. Follow me!");
    params = {
        -- Group,
        [0] = "2109513989072363637",
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2206184533",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_AnnouncerDialogs_134()
    local params;
    DrawTextToScreen("Comment: DLG :Alright you filthy thudfucks! Welcome to the best fighting pit dug this side of the radiation clouds.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MIS_310_AnnouncerDialogs')-- Comment: DLG :Alright you filthy thudfucks! Welcome to the best fighting pit dug this side of the radiation clouds.");
    params = {
        -- RelevancyTime,
        [0] = 1,
        -- SoundId,
        [1] = "4260845172",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_160()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_AddWorldOffset_19()
    local params;
    DrawTextToScreen("Comment: Close", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'AddWorldOffset')-- Comment: Close");
    params = {
        -- BlendTime,
        [0] = 1,
        -- Object,
        [1] = "2108144818698864223",
        -- Rot_X,
        [2] = 0,
        -- Rot_Y,
        [3] = 0,
        -- Rot_Z,
        [4] = 0,
        -- X,
        [5] = -0.5,
        -- Y,
        [6] = -2.01,
        -- Z,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_86()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_111()
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

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2009973725");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_82()
    local params;
    DrawTextToScreen("Comment: DLG : I'm itchin' to swing this bat. I've been craving that teeth breaking crunch.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : I'm itchin' to swing this bat. I've been craving that teeth breaking crunch.");
    params = {
        -- Group,
        [0] = "2108142256151079362",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3361015910",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108988327997789762",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_50()
    local params;
    params = {
        -- Pawns,
        [0] = "2108143919402331301",
        -- SoundId,
        [1] = "2422245109",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2064507945");
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
                [0] = self.f_box_OutputOrder_v2_167_Out_0,
                [1] = self.f_box_OutputOrder_v2_167_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_92()
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

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2102384933");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_149_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109883921576502205",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_91()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "short_range_melee_start",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_79()
    local params;
    DrawTextToScreen("Comment: DLG : Had that roasted dog before comin' here - I can feel the protein coursing through my veins.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Had that roasted dog before comin' here - I can feel the protein coursing through my veins.");
    params = {
        -- Group,
        [0] = "2108142255641471402",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1454929686",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2114386487");
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
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_119()
    local params;
    DrawTextToScreen("Comment: DLG : Kid - eat dirt", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : Kid - eat dirt");
    params = {
        -- Group,
        [0] = "2108972524755757041",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2652772400",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_64()
    local params;
    DrawTextToScreen("Comment: DLG : Better make it good", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Better make it good");
    params = {
        -- Group,
        [0] = "2109015057808493081",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1929426874",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2126231211");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_136_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_136_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109581703012953640",
        -- Entity,
        [2] = "2109513989072363637",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2130137847");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
                [2] = self.f_box_OutputOrder_v2_81_Out_2,
                [3] = self.f_box_OutputOrder_v2_81_Out_3,
                [4] = self.f_box_OutputOrder_v2_81_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_B20|2131071930");
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
        [8] = "MIS_310_B20 Ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_151()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_52_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_105;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_59_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_58;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Gate" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
