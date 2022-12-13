LUAC/� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_025/mis_025_manager.domino
-- User graph: MIS_025_RescuedSurvivors
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PickupState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/SpawnParticle_v6.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3477374261.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2003996564.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2689922623.bnk]], "CSoundResource");
        cboxRes:LoadResource([[21290482.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2842286878.bnk]], "CSoundResource");
        cboxRes:LoadResource([[532187056.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2754573183.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1116358443.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3188283716.bnk]], "CSoundResource");
        cboxRes:LoadResource([[304921197.bnk]], "CSoundResource");
        cboxRes:LoadResource([[629282281.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4231408048.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2524938034.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3616636081.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1338943204.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2162850986.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3885491255.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1982794469.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3720403565.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3565905873.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2517553809.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3012177498.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4278316856.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1796401304.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1543912875.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4226779435.bnk]], "CSoundResource");
        cboxRes:LoadResource([[189204294.bnk]], "CSoundResource");
        cboxRes:LoadResource([[922706731.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3424765392.bnk]], "CSoundResource");
        cboxRes:LoadResource([[140980763.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2742535540.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3456318083.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3464249360.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2094061227.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3475688486.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2483468739.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4277950779.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1769448110.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3639537862.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1669233782.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1658734272.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1525933857.bnk]], "CSoundResource");
        cboxRes:LoadResource([[969293350.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3819876598.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3179916183.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1413882598.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2540743507.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3006606309.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4226503674.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1179635832.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015349413649353.part]], "CParticlesSystemParamResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.MIS_025_RescuedSurvivors.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ArmoryDoorManager",
            },
            [1] = {
                name = "Enable_Diags_B20_Start",
            },
            [2] = {
                name = "SpawnRescuedSurvivorsOnReload",
            },
            [3] = {
                name = "SurvivorsStartSetup",
            },
        },
        controlInCount = 4,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceRelease",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostageReleased",
                delayed = false,
            },
            [1] = {
                name = "NextHostage",
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
                name = "Hostage",
                type = "entity",
            },
            [1] = {
                name = "STP_Tied",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
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
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive",
                delayed = false,
            },
            [1] = {
                name = "DeadOrDown",
                delayed = false,
            },
            [2] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "triggerId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/PickupState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsNotPickable",
            },
            [1] = {
                name = "SetAsPickable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAsNotPickable",
                delayed = false,
            },
            [1] = {
                name = "OnSetAsPickable",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pickup",
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
    metadataTable[GetPathID("Domino/System/Player/SpawnParticle_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DestroyParticle",
            },
            [1] = {
                name = "SpawnAutomanagedParticle",
            },
            [2] = {
                name = "SpawnParticle",
            },
            [3] = {
                name = "StopToDestroyParticle",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "OnDestroyParticle",
                delayed = false,
            },
            [1] = {
                name = "OnSpawnAutomanagedParticle",
                delayed = false,
            },
            [2] = {
                name = "OnSpawnParticle",
                delayed = false,
            },
            [3] = {
                name = "OnStopToDestroyParticle",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "handleName",
                type = "string",
            },
            [2] = {
                name = "Offset_X",
                type = "float",
            },
            [3] = {
                name = "Offset_Y",
                type = "float",
            },
            [4] = {
                name = "Offset_Z",
                type = "float",
            },
            [5] = {
                name = "ParticleName",
                type = "particle",
            },
            [6] = {
                name = "Pawns",
                type = "group",
            },
            [7] = {
                name = "Rotate",
                type = "string",
            },
            [8] = {
                name = "TagName",
                type = "string",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/RequestTutorial_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "OnDisplayed",
                delayed = true,
            },
            [1] = {
                name = "OnHidden",
                delayed = true,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "RequestFailure",
                delayed = false,
            },
            [4] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bypassPreconditions",
                type = "bool",
            },
            [1] = {
                name = "tutorialdb",
                type = "database",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_025_RescuedSurvivors";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors";
    self.Player = nil;
    self.s_f_01_1_rescued = false;
    self.surv_fem_01_diag = nil;
    self.s_f_01_2_rescued = false;
    self.s_m_01_1 = false;
    self.s_f_01_3 = false;
    self.filler_diag = true;
    self.box_MultipleOR_185 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|6783043");
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
        [0] = self.f_box_MultipleOR_185_Out,
    });
    self.box_Switch_2 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|12983823");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
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
                [0] = self.f_box_Switch_2_Output_0,
                [1] = self.f_box_Switch_2_Output_1,
            },
            count = 3,
        },
    });
    self.box_Gate_v3_8 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|13298478");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_8_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_8_Out,
    });
    self.box_MultipleOR_109 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|60083575");
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
        [0] = self.f_box_MultipleOR_109_Out,
    });
    self.box_MultipleOR_246 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|68087086");
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
    self.box_Delay_v5_243 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|70965098");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_243_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_243_TimeElapsed,
    });
    self.box_PlayDialog_v6_64 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|84887740");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_64_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_64_FinishedInterrupted,
    });
    self.box_Switch_116 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|93991987");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 6,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Switch_116_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_116_Output_0,
                [1] = self.f_box_Switch_116_Output_1,
                [2] = self.f_box_Switch_116_Output_2,
                [3] = self.f_box_Switch_116_Output_3,
                [4] = self.f_box_Switch_116_Output_4,
                [5] = self.f_box_Switch_116_Output_5,
            },
            count = 6,
        },
    });
    self.box_MultipleOR_148 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|108420032");
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
        [0] = self.f_box_MultipleOR_148_Out,
    });
    self.box_Delay_v5_158 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|116552580");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_158_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_158_TimeElapsed,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|124890884");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_Delay_v5_70 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|136422124");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_70_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_70_TimeElapsed,
    });
    self.box_Delay_v5_135 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|145289659");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_135_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_135_TimeElapsed,
    });
    self.box_PlayDialog_v6_112 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|147157336");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_112_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_112_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_112_StartedPriorityFailed,
    });
    self.box_MultipleOR_225 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|147923011");
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
        [0] = self.f_box_MultipleOR_225_Out,
    });
    self.box_MissionAckTriggerListener_209 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|162364329");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_209_Enter,
    });
    self.box_SoundModifier_v2_267 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|165021109");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_267_Started,
    });
    self.box_MultipleOR_182 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|170205246");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_182_Out,
    });
    self.box_PlayDialog_v6_251 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|174598795");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_251_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_251_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_251_StartedPriorityFailed,
    });
    self.box_PlayDialog_v6_168 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|197251965");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_168_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_168_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_270 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|205219899");
    l0:SetConnections({
    });
    self.box_TeleportPawns_235 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|216907730");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_235_Out,
    });
    self.box_MultipleOR_69 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|220602369");
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
    self.box_MultipleOR_248 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|221231338");
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
        [0] = self.f_box_MultipleOR_248_Out,
    });
    self.box_NavLinkModifier_17 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|230413433");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_17_Activated,
    });
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|231756917");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_68_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_68_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_68_QueueCancelled,
    });
    self.box_PlayDialog_v6_161 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|249437966");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_161_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_161_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_279 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|251653613");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_279_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_279_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_279_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_279_Stopped,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|262044076");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_MultipleOR_134 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|288342608");
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
        [0] = self.f_box_MultipleOR_134_Out,
    });
    self.box_Delay_v5_120 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|306033728");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_120_TimeElapsed,
    });
    self.box_MultipleOR_178 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|328636296");
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
        [0] = self.f_box_MultipleOR_178_Out,
    });
    self.box_SoundModifier_v2_75 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|378189495");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_75_Started,
    });
    self.box_Delay_v5_157 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|394572366");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_157_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_157_TimeElapsed,
    });
    self.box_SoundModifier_v2_249 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|401650259");
    l0:SetConnections({
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|406781441");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_SpawnAI_47 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|420057844");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_47_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_47_Spawned,
    });
    self.box_HealthListener_v6_30 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|429870674");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_30_Disabled,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_30_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_30_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_30_Revived,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|436538153");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_PlayDialog_v6_254 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|436919361");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_254_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_254_FinishedInterrupted,
    });
    self.box_HealthListener_v6_153 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|442904982");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_153_Disabled,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_153_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_153_Killed,
    });
    self.box_HealthListener_v6_7 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|446387250");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_7_Disabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_7_Killed,
    });
    self.box_SpawnAI_5 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|451675908");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_5_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_5_Spawned,
    });
    self.box_Delay_v5_222 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|452234037");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_222_TimeElapsed,
    });
    self.box_StateListener_v2_57 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|459173848");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_57_Disabled,
        -- Enabled,
        [1] = self.f_box_StateListener_v2_57_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_57_StateStart,
        -- StateStop,
        [4] = self.f_box_StateListener_v2_57_StateStop,
    });
    self.box_PlayDialog_v6_164 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|469896372");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_82 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|487036851");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_82_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_82_FinishedInterrupted,
    });
    self.box_Delay_v5_126 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|489962027");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_126_TimeElapsed,
    });
    self.box_PlayDialog_v6_284 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|494173602");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_284_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_284_FinishedInterrupted,
    });
    self.box_SpawnParticle_v6_119 = cbox:CreateBox("Domino/System/Player/SpawnParticle_v6.lua");
    l0 = self.box_SpawnParticle_v6_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnParticle_v6_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|498097495");
    l0:SetConnections({
    });
    self.box_MultipleOR_237 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|506932298");
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
        [0] = self.f_box_MultipleOR_237_Out,
    });
    self.box_ProximityRadiusListener_v3_205 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|514279255");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_205_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_205_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_205_SomeoneNear,
    });
    self.box_Delay_v5_226 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|515842263");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_226_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_226_TimeElapsed,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|516640472");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_Delay_v5_136 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|525814892");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_136_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_136_TimeElapsed,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|555260954");
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
    self.box_MultipleOR_301 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|555552410");
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
        [0] = self.f_box_MultipleOR_301_Out,
    });
    self.box_Gate_v3_160 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|590778876");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_160_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_160_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_160_Out,
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|611128170");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_25_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_25_FinishedInterrupted,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|611901813");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_Brick_Hostage_Setup_v2_60 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|616078482");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_60_HostageReleased,
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|617685616");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_20_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_20_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_20_StartedPriorityFailed,
    });
    self.box_MessageListener_v3_18 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|622135239");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_18_Received,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|631056563");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_PlayDialog_v6_233 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|640018024");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_233_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_233_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_233_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_233_Stopped,
    });
    self.box_PlayDialog_v6_170 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|641148794");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_170_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_170_FinishedInterrupted,
    });
    self.box_SpawnAI_129 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|651756447");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_129_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_129_Spawned,
    });
    self.box_Gate_v3_275 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|659272983");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_275_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_275_Out,
    });
    self.box_SpawnAI_88 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|660113514");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_88_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_88_Spawned,
    });
    self.box_PlayDialog_v6_210 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|693941257");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_210_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_210_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_106 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|695973751");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_106_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_106_FinishedInterrupted,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|696008719");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|699695959");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_102_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_142 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|699999742");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_142_SomeoneNear,
    });
    self.box_MultipleOR_206 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|700092243");
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
        [0] = self.f_box_MultipleOR_206_Out,
    });
    self.box_VisibilityModifier_147 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|703213760");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_147_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_147_Enabled,
    });
    self.box_PlayDialog_v6_61 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|704198968");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_61_Finished,
        -- Queued,
        [3] = self.f_box_PlayDialog_v6_61_Queued,
    });
    self.box_Gate_v3_239 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|719066842");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_239_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_239_Out,
    });
    self.box_InventoryItemModifier_297 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_297");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|729085391");
    l0:SetConnections({
    });
    self.box_Switch_11 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|742413300");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
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
                [0] = self.f_box_Switch_11_Output_0,
                [1] = self.f_box_Switch_11_Output_1,
                [2] = self.f_box_Switch_11_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_244 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|744025197");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_244_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_244_TimeElapsed,
    });
    self.box_MultipleOR_183 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|754749676");
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
        [0] = self.f_box_MultipleOR_183_Out,
    });
    self.box_HealthListener_v6_166 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|764295808");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_166_Disabled,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_166_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_166_Killed,
    });
    self.box_PlayDialog_v6_81 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|774953629");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_81_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_81_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_81_StartedPriorityFailed,
    });
    self.box_PlayDialog_v6_91 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|776960166");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_91_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_91_FinishedInterrupted,
    });
    self.box_Switch_117 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|792557923");
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
                [0] = self.f_box_Switch_117_Output_0,
                [1] = self.f_box_Switch_117_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_204 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|821829699");
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
        [0] = self.f_box_MultipleOR_204_Out,
    });
    self.box_MultipleOR_199 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|823453185");
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
    });
    self.box_PlayDialog_v6_197 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|827197364");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_197_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_197_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_197_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_197_Stopped,
    });
    self.box_PlayDialog_v6_189 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|835368887");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_189_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_189_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|842028450");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_115_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_115_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_62 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|852170109");
    l0:SetConnections({
    });
    self.box_MultipleOR_257 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|870721482");
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
        [0] = self.f_box_MultipleOR_257_Out,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|898690468");
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
    self.box_MultipleOR_258 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|911824075");
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
        [0] = self.f_box_MultipleOR_258_Out,
    });
    self.box_MultipleOR_302 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_302");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|912816285");
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
        [0] = self.f_box_MultipleOR_302_Out,
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|966240362");
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
    self.box_PlayDialog_v6_49 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|968563406");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_49_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_49_FinishedInterrupted,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|971844838");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_MultipleOR_296 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_296;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|981528997");
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
        [0] = self.f_box_MultipleOR_296_Out,
    });
    self.box_MultipleOR_265 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|993390388");
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
        [0] = self.f_box_MultipleOR_265_Out,
    });
    self.box_MultipleOR_276 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|996163519");
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
        [0] = self.f_box_MultipleOR_276_Out,
    });
    self.box_PlayDialog_v6_177 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|996545286");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_177_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_177_FinishedInterrupted,
    });
    self.box_ContextualActionListener_228 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|998899196");
    l0:SetConnections({
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_228_Interrupt,
        -- Start,
        [8] = self.f_box_ContextualActionListener_228_Start,
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1008189872");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_3_Spawned,
    });
    self.box_PlayDialog_v6_42 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1028914097");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_42_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_42_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_42_QueueCancelled,
    });
    self.box_MultipleOR_171 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1042522338");
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
        [0] = self.f_box_MultipleOR_171_Out,
    });
    self.box_HealthListener_v6_163 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1060591775");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_163_Disabled,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_163_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_163_Killed,
    });
    self.box_PlayDialog_v6_221 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1080497736");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_221_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_221_FinishedInterrupted,
    });
    self.box_PositionModifier_v2_99 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1111045792");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_99_StartOut,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1117220508");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_35_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_VisibilityModifier_104 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1122829211");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_104_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_104_Enabled,
    });
    self.box_MultipleOR_186 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1129479853");
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
        [0] = self.f_box_MultipleOR_186_Out,
    });
    self.box_StateListener_v2_294 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1147825888");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_294_Disabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_294_StateStart,
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1151508089");
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
        [0] = self.f_box_MultipleOR_176_Out,
    });
    self.box_ProximityRadiusListener_v3_269 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1173018043");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_269_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_269_SomeoneNear,
    });
    self.box_Delay_v5_174 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1196790679");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_174_TimeElapsed,
    });
    self.box_HealthListener_v6_194 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1233053563");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_194_Disabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_194_Killed,
    });
    self.box_SoundModifier_v2_223 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1234428858");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_283 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1238217209");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_283_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_283_Stopped,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1243405413");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_9_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_9_FinishedInterrupted,
    });
    self.box_Gate_v3_288 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1246919483");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_288_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_288_Out,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1255011102");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_4_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_Brick_Hostage_Setup_v2_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1261714708");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_15_HostageReleased,
        -- Out,
        [2] = self.f_box_Brick_Hostage_Setup_v2_15_Out,
    });
    self.box_MultipleOR_175 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1269791637");
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
        [0] = self.f_box_MultipleOR_175_Out,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1271212034");
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
    self.box_Gate_v3_184 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1272153585");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_184_Out,
    });
    self.box_MultipleOR_234 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1301686675");
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
        [0] = self.f_box_MultipleOR_234_Out,
    });
    self.box_Gate_v3_272 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1302341805");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_272_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_272_Out,
    });
    self.box_MultipleOR_156 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1308233721");
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
        [0] = self.f_box_MultipleOR_156_Out,
    });
    self.box_PlayDialog_v6_303 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_303");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1310915692");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_303_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_303_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_303_StartedPriorityFailed,
    });
    self.box_TeleportPawns_261 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1315158197");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_261_Out,
    });
    self.box_SoundModifier_v2_172 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1336961139");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_172_Started,
    });
    self.box_ProximityRadiusListener_v3_215 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1345360748");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_215_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_215_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_215_SomeoneNear,
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1353271537");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_MultipleOR_241 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1365748039");
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
        [0] = self.f_box_MultipleOR_241_Out,
    });
    self.box_SoundModifier_v2_63 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1381135684");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_63_Started,
    });
    self.box_Bind_v4_51 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1381389430");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_240 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1385663005");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_240_Disabled,
    });
    self.box_MultipleOR_230 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1393893654");
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
        [0] = self.f_box_MultipleOR_230_Out,
    });
    self.box_MultipleOR_277 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1403441393");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_277_Out,
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1410257420");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_169 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1423483910");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_169_Loaded,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1425881510");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_PlayDialog_v6_196 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1438438784");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_196_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_196_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_196_StartedPriorityFailed,
    });
    self.box_PlayDialog_v6_274 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1472847726");
    l0:SetConnections({
    });
    self.box_Bind_v4_44 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1474084020");
    l0:SetConnections({
    });
    self.box_RequestTutorial_v3_130 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1510966957");
    l0:SetConnections({
        -- OnHidden,
        [1] = self.f_box_RequestTutorial_v3_130_OnHidden,
    });
    self.box_NavLinkModifier_22 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1511613990");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_22_Activated,
    });
    self.box_PlayDialog_v6_191 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1513175017");
    l0:SetConnections({
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1518763032");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_Delay_v5_227 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1520574061");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_227_TimeElapsed,
    });
    self.box_HealthListener_v6_285 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1564295943");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_285_Killed,
    });
    self.box_PlayDialog_v6_79 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1571211585");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_79_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_79_FinishedInterrupted,
    });
    self.box_MultipleOR_138 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1595175379");
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
        [0] = self.f_box_MultipleOR_138_Out,
    });
    self.box_MultipleOR_97 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1597238969");
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
        [0] = self.f_box_MultipleOR_97_Out,
    });
    self.box_VisibilityModifier_259 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1620335574");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_259_Disabled,
    });
    self.box_MultipleOR_232 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1622956156");
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
    self.box_TeleportPawns_219 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1629159166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_219_Out,
    });
    self.box_MultipleOR_101 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1658550074");
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
        [0] = self.f_box_MultipleOR_101_Out,
    });
    self.box_PlayDialog_v6_74 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1683293743");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_74_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_74_FinishedInterrupted,
    });
    self.box_Delay_v5_202 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1702427395");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_202_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_202_TimeElapsed,
    });
    self.box_HealthListener_v6_77 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1727683854");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_77_Disabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_77_Killed,
    });
    self.box_SpawnAI_154 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1728356412");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_154_Spawned,
    });
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1730920695");
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
        [0] = self.f_box_MultipleOR_181_Out,
    });
    self.box_SoundModifier_v2_122 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1732629983");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_122_Started,
    });
    self.box_Brick_Hostage_Setup_v2_125 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1739241151");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_125_HostageReleased,
        -- Out,
        [2] = self.f_box_Brick_Hostage_Setup_v2_125_Out,
    });
    self.box_SpawnAI_193 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1741085579");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_193_Spawned,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1741756301");
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
        [0] = self.f_box_MultipleOR_108_Out,
    });
    self.box_SpawnAI_165 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1753106185");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_165_Spawned,
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1768940860");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_32_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_32_Spawned,
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1770442982");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_36_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_36_FinishedInterrupted,
    });
    self.box_ContextualActionListener_50 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1770917567");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_50_Disabled,
        -- Start,
        [8] = self.f_box_ContextualActionListener_50_Start,
    });
    self.box_PlayDialog_v6_213 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1776309201");
    l0:SetConnections({
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1778666589");
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
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1781698125");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_StateListener_v2_72 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1783293480");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_72_Enabled,
        -- StateStop,
        [4] = self.f_box_StateListener_v2_72_StateStop,
    });
    self.box_OnceOnly_v3_110 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1791850883");
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
                [0] = self.f_box_OnceOnly_v3_110_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_145 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1818294414");
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
    self.box_PlayDialog_v6_133 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1832775937");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_133_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_133_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_133_QueueCancelled,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1836914714");
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
        [0] = self.f_box_MultipleOR_89_Out,
    });
    self.box_PlayDialog_v6_123 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1850306923");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_123_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_123_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_123_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_123_Stopped,
    });
    self.box_ContextualActionListener_260 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1867626271");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_260_Disabled,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_260_Interrupt,
        -- Start,
        [8] = self.f_box_ContextualActionListener_260_Start,
    });
    self.box_Delay_v5_231 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1880501460");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_231_TimeElapsed,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1903141796");
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
        [0] = self.f_box_MultipleOR_198_Out,
    });
    self.box_StaticBreakableListener_87 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1909360763");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_87_OnBreak,
    });
    self.box_OnceOnly_v3_179 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1913077065");
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
                [0] = self.f_box_OnceOnly_v3_179_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_146 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1919419994");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_146_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_146_TimeElapsed,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1926959264");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1928856071");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1933900686");
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
    self.box_PlayDialog_v6_286 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1934046115");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_286_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_286_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_286_StartedPriorityFailed,
    });
    self.box_Brick_Hostage_Setup_v2_141 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1937390597");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_141_HostageReleased,
    });
    self.box_MultipleOR_255 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1945983445");
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
        [0] = self.f_box_MultipleOR_255_Out,
    });
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1953181431");
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
        [0] = self.f_box_MultipleOR_118_Out,
    });
    self.box_MultipleOR_295 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1983622003");
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
    self.box_MultipleOR_282 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_282");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1985378636");
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
        [0] = self.f_box_MultipleOR_282_Out,
    });
    self.box_MultipleOR_247 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1993600083");
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
        [0] = self.f_box_MultipleOR_247_Out,
    });
    self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2022962673");
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
        [0] = self.f_box_MultipleOR_105_Out,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2023425048");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_Delay_v5_113 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2041287246");
    l0:SetConnections({
        -- Paused,
        [1] = self.f_box_Delay_v5_113_Paused,
        -- Resumed,
        [2] = self.f_box_Delay_v5_113_Resumed,
        -- Stopped,
        [4] = self.f_box_Delay_v5_113_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_113_TimeElapsed,
    });
    self.box_PlayDialog_v6_278 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2050823492");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_278_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_278_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_111 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2075051795");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_111_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_111_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_111_StartedPriorityFailed,
    });
    self.box_MultipleOR_220 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2083993214");
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
        [0] = self.f_box_MultipleOR_220_Out,
    });
    self.box_EntityStatusListener_266 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2098858664");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_266_Loaded,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2120813468");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_Delay_v5_212 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2131086323");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_212_TimeElapsed,
    });
    self.box_PlayDialog_v6_216 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2132124994");
    l0:SetConnections({
    });
    self.box_Delay_v5_140 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2143203939");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_140_TimeElapsed,
    });
end;

function export:ArmoryDoorManager()
    local params, l0;
    params = self:OnEnter_box_GetActivityFact_229();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|544851726", "544851726", "MIS_025_RescuedSurvivors", "ArmoryDoorManager", "box_GetActivityFact_229.GetFact", self, l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable_Diags_B20_Start()
    local params, l0;
    params = self:OnEnter_box_MessageListener_v3_18();
    l0 = self.box_MessageListener_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|538753942", "538753942", "MIS_025_RescuedSurvivors", "Enable_Diags_B20_Start", "box_MessageListener_v3_18.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:SpawnRescuedSurvivorsOnReload()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_143();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|637844955", "637844955", "MIS_025_RescuedSurvivors", "SpawnRescuedSurvivorsOnReload", "box_OutputOrder_v2_143.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:SurvivorsStartSetup()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_292();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1448329251", "1448329251", "MIS_025_RescuedSurvivors", "SurvivorsStartSetup", "box_GetLocalPlayer_v2_292.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_188_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1519664579", "1519664579", "MIS_025_RescuedSurvivors", "box_Simple_Node_188.Out", "box_Delay_v5_113.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_187_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2017856976", "2017856976", "MIS_025_RescuedSurvivors", "box_Simple_Node_187.Out", "box_Delay_v5_113.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_185_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_153();
    l0 = self.box_MultipleOR_185;
    l1 = self.box_HealthListener_v6_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|575756205", "575756205", "MIS_025_RescuedSurvivors", "box_MultipleOR_185.Out", "box_HealthListener_v6_153.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_2_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Switch_2;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|203729751", "203729751", "MIS_025_RescuedSurvivors", "box_Switch_2.Output", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_2_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_221();
    l0 = self.box_Switch_2;
    l1 = self.box_PlayDialog_v6_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1357722713", "1357722713", "MIS_025_RescuedSurvivors", "box_Switch_2.Output", "box_PlayDialog_v6_221.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_8_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_279();
    l0 = self.box_Gate_v3_8;
    l1 = self.box_PlayDialog_v6_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|209943871", "209943871", "MIS_025_RescuedSurvivors", "box_Gate_v3_8.Closed", "box_PlayDialog_v6_279.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_11();
    l0 = self.box_Gate_v3_8;
    l1 = self.box_Switch_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|770081150", "770081150", "MIS_025_RescuedSurvivors", "box_Gate_v3_8.Out", "box_Switch_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthModifier_v2_298_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_272();
    l0 = self.box_Gate_v3_272;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|257096852", "257096852", "MIS_025_RescuedSurvivors", "box_HealthModifier_v2_298.Damaged", "box_Gate_v3_272.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_151();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|667005757", "667005757", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_28.Out", "box_SetBoolean_v2_151.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_272();
    l0 = self.box_Gate_v3_272;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1997444657", "1997444657", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_28.Out", "box_Gate_v3_272.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_159();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1993506605", "1993506605", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_28.Out", "box_SetActivityFact_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_289_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1730208808", "1730208808", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_289.Out", "box_Delay_v5_113.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_289_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|767889463", "767889463", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_289.Out", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RandomFloat_v2_121_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_121_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|565582609", "565582609", "MIS_025_RescuedSurvivors", "box_RandomFloat_v2_121.Out", "box_Delay_v5_113.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_270();
    l0 = self.box_MultipleOR_109;
    l1 = self.box_PlayDialog_v6_270;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|67922147", "67922147", "MIS_025_RescuedSurvivors", "box_MultipleOR_109.Out", "box_PlayDialog_v6_270.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_246_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_65();
    l0 = self.box_MultipleOR_246;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|554825749", "554825749", "MIS_025_RescuedSurvivors", "box_MultipleOR_246.Out", "box_Compare_Boolean_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_131_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_305();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1845521925", "1845521925", "MIS_025_RescuedSurvivors", "box_GetActivityFact_131.FactSet", "box_GetActivityFact_305.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_243_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_Delay_v5_243;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|767254803", "767254803", "MIS_025_RescuedSurvivors", "box_Delay_v5_243.Started", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_243_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_303();
    l0 = self.box_Delay_v5_243;
    l1 = self.box_PlayDialog_v6_303;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2046521573", "2046521573", "MIS_025_RescuedSurvivors", "box_Delay_v5_243.TimeElapsed", "box_PlayDialog_v6_303.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_64_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_64;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|983375345", "983375345", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_64.Finished", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_64_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_64;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1667953326", "1667953326", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_64.FinishedInterrupted", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_207_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_245();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1242049187", "1242049187", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_207.Disabled", "box_UseContextualActionModifier_v3_245.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_116_Out()
    local l0, l1;
    l0 = self.box_Switch_116;
    l1 = self.box_MultipleOR_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|983195520", "983195520", "MIS_025_RescuedSurvivors", "box_Switch_116.Out", "box_MultipleOR_277.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_116_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_128();
    l0 = self.box_Switch_116;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1149772281", "1149772281", "MIS_025_RescuedSurvivors", "box_Switch_116.Output", "box_Compare_Boolean_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_116_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_54();
    l0 = self.box_Switch_116;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1347654542", "1347654542", "MIS_025_RescuedSurvivors", "box_Switch_116.Output", "box_Compare_Boolean_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_116_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_268();
    l0 = self.box_Switch_116;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|31598925", "31598925", "MIS_025_RescuedSurvivors", "box_Switch_116.Output", "box_Compare_Boolean_268.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_116_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_41();
    l0 = self.box_Switch_116;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2113145839", "2113145839", "MIS_025_RescuedSurvivors", "box_Switch_116.Output", "box_Compare_Boolean_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_116_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_211();
    l0 = self.box_Switch_116;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|728769807", "728769807", "MIS_025_RescuedSurvivors", "box_Switch_116.Output", "box_Compare_Boolean_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_116_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_100();
    l0 = self.box_Switch_116;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1483617308", "1483617308", "MIS_025_RescuedSurvivors", "box_Switch_116.Output", "box_Compare_Boolean_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_162_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1496682694", "1496682694", "MIS_025_RescuedSurvivors", "box_HealthModifier_v2_162.Damaged", "box_OutputOrder_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_84();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1355418437", "1355418437", "MIS_025_RescuedSurvivors", "box_SetContextualStrategy_103.Out", "box_SetBoolean_v2_84.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_148_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_148;
    l1 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|87278426", "87278426", "MIS_025_RescuedSurvivors", "box_MultipleOR_148.Out", "box_MultipleOR_186.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_158_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_252();
    l0 = self.box_Delay_v5_158;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2102129763", "2102129763", "MIS_025_RescuedSurvivors", "box_Delay_v5_158.Started", "box_SetBoolean_v2_252.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_158_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_158;
    l1 = self.box_MultipleOR_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1678715493", "1678715493", "MIS_025_RescuedSurvivors", "box_Delay_v5_158.TimeElapsed", "box_MultipleOR_277.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_250();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|798232688", "798232688", "MIS_025_RescuedSurvivors", "box_MultipleOR_53.Out", "box_Compare_Boolean_250.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_217_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_129();
    l0 = self.box_SpawnAI_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|203563549", "203563549", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_217.Enabled", "box_SpawnAI_129.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_70_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_Delay_v5_70;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|466866731", "466866731", "MIS_025_RescuedSurvivors", "box_Delay_v5_70.Started", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_70_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_111();
    l0 = self.box_Delay_v5_70;
    l1 = self.box_PlayDialog_v6_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|506463819", "506463819", "MIS_025_RescuedSurvivors", "box_Delay_v5_70.TimeElapsed", "box_PlayDialog_v6_111.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_135_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_155();
    l0 = self.box_Delay_v5_135;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1052242249", "1052242249", "MIS_025_RescuedSurvivors", "box_Delay_v5_135.Started", "box_ParticleSystem_v3_155.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_135_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_63();
    l0 = self.box_Delay_v5_135;
    l1 = self.box_SoundModifier_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|761170547", "761170547", "MIS_025_RescuedSurvivors", "box_Delay_v5_135.TimeElapsed", "box_SoundModifier_v2_63.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_112_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_112;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1788150302", "1788150302", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_112.Finished", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_112_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_112;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1194517606", "1194517606", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_112.FinishedInterrupted", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_112_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_112;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|896707751", "896707751", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_112.StartedPriorityFailed", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_225_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_MultipleOR_225;
    l1 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|398246162", "398246162", "MIS_025_RescuedSurvivors", "box_MultipleOR_225.Out", "box_PlayDialog_v6_91.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_209_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_290();
    l0 = self.box_MissionAckTriggerListener_209;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|277378874", "277378874", "MIS_025_RescuedSurvivors", "box_MissionAckTriggerListener_209.Enter", "box_OutputOrder_v2_290.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_152_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_190();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1864613610", "1864613610", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_152.Disabled", "box_SetContextualStrategy_190.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_152_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_193();
    l0 = self.box_SpawnAI_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1643469305", "1643469305", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_152.Enabled", "box_SpawnAI_193.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_267_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_150();
    l0 = self.box_SoundModifier_v2_267;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1738183486", "1738183486", "MIS_025_RescuedSurvivors", "box_SoundModifier_v2_267.Started", "box_SetActivityFact_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_226();
    l0 = self.box_MultipleOR_182;
    l1 = self.box_Delay_v5_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1692376037", "1692376037", "MIS_025_RescuedSurvivors", "box_MultipleOR_182.Out", "box_Delay_v5_226.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_251_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_251;
    l1 = self.box_MultipleOR_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|903955152", "903955152", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_251.Finished", "box_MultipleOR_199.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_251_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_251;
    l1 = self.box_MultipleOR_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|507663962", "507663962", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_251.FinishedInterrupted", "box_MultipleOR_199.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_251_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_251;
    l1 = self.box_MultipleOR_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1631648362", "1631648362", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_251.StartedPriorityFailed", "box_MultipleOR_199.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Boolean_192_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_278();
    l0 = self.box_PlayDialog_v6_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|423895658", "423895658", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_192.A_is_True", "box_PlayDialog_v6_278.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_168_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_168;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|513618901", "513618901", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_168.Finished", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_168_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_168;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1608527277", "1608527277", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_168.FinishedInterrupted", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TeleportPawns_235_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_235;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|835649387", "835649387", "MIS_025_RescuedSurvivors", "box_TeleportPawns_235.Out", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_8();
    l0 = self.box_MultipleOR_69;
    l1 = self.box_Gate_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|494007262", "494007262", "MIS_025_RescuedSurvivors", "box_MultipleOR_69.Out", "box_Gate_v3_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_248_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_188();
    l0 = self.box_MultipleOR_248;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|621452241", "621452241", "MIS_025_RescuedSurvivors", "box_MultipleOR_248.Out", "box_Simple_Node_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_17_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_22();
    l0 = self.box_NavLinkModifier_17;
    l1 = self.box_NavLinkModifier_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2085136963", "2085136963", "MIS_025_RescuedSurvivors", "box_NavLinkModifier_17.Activated", "box_NavLinkModifier_22.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_68_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_68;
    l1 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|626680682", "626680682", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_68.Finished", "box_MultipleOR_206.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_68_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_68;
    l1 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1507182304", "1507182304", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_68.FinishedInterrupted", "box_MultipleOR_206.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_68_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_68;
    l1 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|201889535", "201889535", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_68.QueueCancelled", "box_MultipleOR_206.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_161_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_161;
    l1 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|50429742", "50429742", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_161.Finished", "box_MultipleOR_156.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_161_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_161;
    l1 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|337868261", "337868261", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_161.FinishedInterrupted", "box_MultipleOR_156.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_290_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1301461346", "1301461346", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_290.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_290_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_293();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1393103615", "1393103615", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_290.Out", "box_UseContextualActionModifier_v3_293.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_279_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_279;
    l1 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1789518597", "1789518597", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_279.Finished", "box_MultipleOR_295.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_279_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_279;
    l1 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1215364399", "1215364399", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_279.FinishedInterrupted", "box_MultipleOR_295.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_279_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_197();
    l0 = self.box_PlayDialog_v6_279;
    l1 = self.box_PlayDialog_v6_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|943670682", "943670682", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_279.QueueCancelled", "box_PlayDialog_v6_197.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_279_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_279();
    l0 = self.box_PlayDialog_v6_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|106412736", "106412736", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_279.Stopped", "box_PlayDialog_v6_279.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_117();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_Switch_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1354709411", "1354709411", "MIS_025_RescuedSurvivors", "box_Delay_v5_40.TimeElapsed", "box_Switch_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_250_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_180();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|991445245", "991445245", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_250.A_is_True", "box_IsPawnAlive_v3_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_134_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_74();
    l0 = self.box_MultipleOR_134;
    l1 = self.box_PlayDialog_v6_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|772802276", "772802276", "MIS_025_RescuedSurvivors", "box_MultipleOR_134.Out", "box_PlayDialog_v6_74.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_120_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_120;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1593061750", "1593061750", "MIS_025_RescuedSurvivors", "box_Delay_v5_120.TimeElapsed", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|907129658", "907129658", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_48.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_296;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1246705056", "1246705056", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_48.Out", "box_MultipleOR_296.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_178_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_112();
    l0 = self.box_MultipleOR_178;
    l1 = self.box_PlayDialog_v6_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1546631019", "1546631019", "MIS_025_RescuedSurvivors", "box_MultipleOR_178.Out", "box_PlayDialog_v6_112.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_149_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_149_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|337523046", "337523046", "MIS_025_RescuedSurvivors", "box_SetEntity_v2_149.Out", "box_MultipleOR_225.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_43_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_81();
    l0 = self.box_PlayDialog_v6_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|157157977", "157157977", "MIS_025_RescuedSurvivors", "box_SetBoolean_v2_43.Out", "box_PlayDialog_v6_81.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_75_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_SoundModifier_v2_75;
    l1 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1959304365", "1959304365", "MIS_025_RescuedSurvivors", "box_SoundModifier_v2_75.Started", "box_Delay_v5_102.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_157_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_141();
    l0 = self.box_Delay_v5_157;
    l1 = self.box_Brick_Hostage_Setup_v2_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2043817973", "2043817973", "MIS_025_RescuedSurvivors", "box_Delay_v5_157.Started", "box_Brick_Hostage_Setup_v2_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_157_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_141();
    l0 = self.box_Delay_v5_157;
    l1 = self.box_Brick_Hostage_Setup_v2_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|697981636", "697981636", "MIS_025_RescuedSurvivors", "box_Delay_v5_157.TimeElapsed", "box_Brick_Hostage_Setup_v2_141.ForceRelease", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceRelease
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_216();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_PlayDialog_v6_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1467357558", "1467357558", "MIS_025_RescuedSurvivors", "box_MultipleOR_13.Out", "box_PlayDialog_v6_216.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_154();
    l0 = self.box_SpawnAI_47;
    l1 = self.box_SpawnAI_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|259881167", "259881167", "MIS_025_RescuedSurvivors", "box_SpawnAI_47.Out", "box_SpawnAI_154.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_47_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_SpawnAI_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|892508199", "892508199", "MIS_025_RescuedSurvivors", "box_SpawnAI_47.Spawned", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_90_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_280();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2126623654", "2126623654", "MIS_025_RescuedSurvivors", "box_GetActivityFact_90.FactNotSet", "box_IsEntityLoaded_v3_280.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_30_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = self.box_HealthListener_v6_30;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|487386811", "487386811", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_30.Disabled", "box_UseContextualActionModifier_v3_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_269();
    l0 = self.box_HealthListener_v6_30;
    l1 = self.box_ProximityRadiusListener_v3_269;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1883845018", "1883845018", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_30.Enabled", "box_ProximityRadiusListener_v3_269.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_30_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_30;
    l1 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|505394178", "505394178", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_30.Killed", "box_MultipleOR_258.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_30_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_30;
    l1 = self.box_MultipleOR_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1735477343", "1735477343", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_30.Revived", "box_MultipleOR_258.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_78;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|474446886", "474446886", "MIS_025_RescuedSurvivors", "box_Delay_v5_78.TimeElapsed", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_254_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_254;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1771428730", "1771428730", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_254.Finished", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_254_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_254;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1330865424", "1330865424", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_254.FinishedInterrupted", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_153_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_1();
    l0 = self.box_HealthListener_v6_153;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|980326486", "980326486", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_153.Disabled", "box_SetActivityFact_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_153_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_157();
    l0 = self.box_HealthListener_v6_153;
    l1 = self.box_Delay_v5_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1933566484", "1933566484", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_153.Enabled", "box_Delay_v5_157.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_153_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_153();
    l0 = self.box_HealthListener_v6_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1217358841", "1217358841", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_153.Killed", "box_HealthListener_v6_153.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_7_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_96();
    l0 = self.box_HealthListener_v6_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2036408086", "2036408086", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_7.Disabled", "box_SetActivityFact_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_7_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_7();
    l0 = self.box_HealthListener_v6_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1552075559", "1552075559", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_7.Killed", "box_HealthListener_v6_7.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_293();
    l0 = self.box_SpawnAI_5;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|526507717", "526507717", "MIS_025_RescuedSurvivors", "box_SpawnAI_5.Out", "box_UseContextualActionModifier_v3_293.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_5_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_30();
    l0 = self.box_SpawnAI_5;
    l1 = self.box_HealthListener_v6_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|582653537", "582653537", "MIS_025_RescuedSurvivors", "box_SpawnAI_5.Spawned", "box_HealthListener_v6_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_222_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_222;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|630821519", "630821519", "MIS_025_RescuedSurvivors", "box_Delay_v5_222.TimeElapsed", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StateListener_v2_57_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_202();
    l0 = self.box_StateListener_v2_57;
    l1 = self.box_Delay_v5_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2145223157", "2145223157", "MIS_025_RescuedSurvivors", "box_StateListener_v2_57.Disabled", "box_Delay_v5_202.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_StateListener_v2_57_Enabled()
    local l0, l1;
    l0 = self.box_StateListener_v2_57;
    l1 = self.box_MultipleOR_301;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|547111069", "547111069", "MIS_025_RescuedSurvivors", "box_StateListener_v2_57.Enabled", "box_MultipleOR_301.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StateListener_v2_57_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_202();
    l0 = self.box_StateListener_v2_57;
    l1 = self.box_Delay_v5_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|476941154", "476941154", "MIS_025_RescuedSurvivors", "box_StateListener_v2_57.StateStart", "box_Delay_v5_202.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StateListener_v2_57_StateStop()
    local l0, l1;
    l0 = self.box_StateListener_v2_57;
    l1 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|182867873", "182867873", "MIS_025_RescuedSurvivors", "box_StateListener_v2_57.StateStop", "box_MultipleOR_230.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_82_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_82;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1837337839", "1837337839", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_82.Finished", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_82_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_82;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|800218864", "800218864", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_82.FinishedInterrupted", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_126_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_Delay_v5_126;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1590399047", "1590399047", "MIS_025_RescuedSurvivors", "box_Delay_v5_126.TimeElapsed", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_284_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_284;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|117026758", "117026758", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_284.Finished", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_284_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_284;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|381293994", "381293994", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_284.FinishedInterrupted", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_237_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_237;
    l1 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|47682208", "47682208", "MIS_025_RescuedSurvivors", "box_MultipleOR_237.Out", "box_MultipleOR_186.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityRadiusListener_v3_205_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_205;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2024742377", "2024742377", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_205.Disabled", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_205_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_72();
    l0 = self.box_ProximityRadiusListener_v3_205;
    l1 = self.box_StateListener_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|587393789", "587393789", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_205.Enabled", "box_StateListener_v2_72.Idle_RelaxCautious", l0:GetLuaBox(), l1:GetLuaBox());
    -- Idle_RelaxCautious
    l1:Exec(4, params);
end;

function export:f_box_ProximityRadiusListener_v3_205_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_205();
    l0 = self.box_ProximityRadiusListener_v3_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|481466320", "481466320", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_205.SomeoneNear", "box_ProximityRadiusListener_v3_205.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_226_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_Delay_v5_226;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1629928729", "1629928729", "MIS_025_RescuedSurvivors", "box_Delay_v5_226.Started", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_226_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_226;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1494406344", "1494406344", "MIS_025_RescuedSurvivors", "box_Delay_v5_226.TimeElapsed", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_137_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_106();
    l0 = self.box_PlayDialog_v6_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1381072463", "1381072463", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_137.A_is_True", "box_PlayDialog_v6_106.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_44();
    l0 = self.box_Delay_v5_46;
    l1 = self.box_Bind_v4_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|461890653", "461890653", "MIS_025_RescuedSurvivors", "box_Delay_v5_46.TimeElapsed", "box_Bind_v4_44.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_136_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_60();
    l0 = self.box_Delay_v5_136;
    l1 = self.box_Brick_Hostage_Setup_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|897780589", "897780589", "MIS_025_RescuedSurvivors", "box_Delay_v5_136.Started", "box_Brick_Hostage_Setup_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_136_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_60();
    l0 = self.box_Delay_v5_136;
    l1 = self.box_Brick_Hostage_Setup_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1275141458", "1275141458", "MIS_025_RescuedSurvivors", "box_Delay_v5_136.TimeElapsed", "box_Brick_Hostage_Setup_v2_60.ForceRelease", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceRelease
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_192();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1545627364", "1545627364", "MIS_025_RescuedSurvivors", "box_MultipleOR_38.Out", "box_Compare_Boolean_192.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_301_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_MultipleOR_301;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1881484028", "1881484028", "MIS_025_RescuedSurvivors", "box_MultipleOR_301.Out", "box_Delay_v5_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetActivityFact_114_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|608142176", "608142176", "MIS_025_RescuedSurvivors", "box_GetActivityFact_114.FactNotSet", "box_GetActivityFact_6.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_263();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|713502504", "713502504", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_16.Disabled", "box_SetContextualStrategy_263.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_160_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Gate_v3_160;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1116941173", "1116941173", "MIS_025_RescuedSurvivors", "box_Gate_v3_160.Closed", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_160_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_174();
    l0 = self.box_Gate_v3_160;
    l1 = self.box_Delay_v5_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1648948649", "1648948649", "MIS_025_RescuedSurvivors", "box_Gate_v3_160.Opened", "box_Delay_v5_174.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_120();
    l0 = self.box_Gate_v3_160;
    l1 = self.box_Delay_v5_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|523904258", "523904258", "MIS_025_RescuedSurvivors", "box_Gate_v3_160.Out", "box_Delay_v5_120.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_25_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1531697962", "1531697962", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_25.Finished", "box_MultipleOR_109.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_25_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1561507634", "1561507634", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_25.FinishedInterrupted", "box_MultipleOR_109.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_231();
    l0 = self.box_MultipleOR_24;
    l1 = self.box_Delay_v5_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1567397989", "1567397989", "MIS_025_RescuedSurvivors", "box_MultipleOR_24.Out", "box_Delay_v5_231.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_60_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_152();
    l0 = self.box_Brick_Hostage_Setup_v2_60;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1867334591", "1867334591", "MIS_025_RescuedSurvivors", "box_Brick_Hostage_Setup_v2_60.HostageReleased", "box_UseContextualActionModifier_v3_152.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_20_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1514349421", "1514349421", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_20.Finished", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_20_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1739840546", "1739840546", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_20.FinishedInterrupted", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_20_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|251615842", "251615842", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_20.StartedPriorityFailed", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MessageListener_v3_18_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_289();
    l0 = self.box_MessageListener_v3_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|29949266", "29949266", "MIS_025_RescuedSurvivors", "box_MessageListener_v3_18.Received", "box_OutputOrder_v2_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_64();
    l0 = self.box_MultipleOR_26;
    l1 = self.box_PlayDialog_v6_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|322832426", "322832426", "MIS_025_RescuedSurvivors", "box_MultipleOR_26.Out", "box_PlayDialog_v6_64.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetActivityFact_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_244();
    l0 = self.box_Delay_v5_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1099692859", "1099692859", "MIS_025_RescuedSurvivors", "box_SetActivityFact_23.Out", "box_Delay_v5_244.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_233_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_233;
    l1 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1930194031", "1930194031", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_233.Finished", "box_MultipleOR_237.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_233_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_233;
    l1 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1188209040", "1188209040", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_233.FinishedInterrupted", "box_MultipleOR_237.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_233_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_PlayDialog_v6_233;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|327531950", "327531950", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_233.QueueCancelled", "box_Delay_v5_78.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_233_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_233();
    l0 = self.box_PlayDialog_v6_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|646650750", "646650750", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_233.Stopped", "box_PlayDialog_v6_233.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_71_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|14731357", "14731357", "MIS_025_RescuedSurvivors", "box_SetEntity_v2_71.Out", "box_MultipleOR_232.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_170_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_170;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|305621528", "305621528", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_170.Finished", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_170_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_170;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1662232391", "1662232391", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_170.FinishedInterrupted", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_50();
    l0 = self.box_SpawnAI_129;
    l1 = self.box_ContextualActionListener_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1946655613", "1946655613", "MIS_025_RescuedSurvivors", "box_SpawnAI_129.Out", "box_ContextualActionListener_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_129_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_125();
    l0 = self.box_SpawnAI_129;
    l1 = self.box_Brick_Hostage_Setup_v2_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|895390323", "895390323", "MIS_025_RescuedSurvivors", "box_SpawnAI_129.Spawned", "box_Brick_Hostage_Setup_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_275_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_123();
    l0 = self.box_Gate_v3_275;
    l1 = self.box_PlayDialog_v6_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2070763040", "2070763040", "MIS_025_RescuedSurvivors", "box_Gate_v3_275.Closed", "box_PlayDialog_v6_123.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_275_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_123();
    l0 = self.box_Gate_v3_275;
    l1 = self.box_PlayDialog_v6_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1468232035", "1468232035", "MIS_025_RescuedSurvivors", "box_Gate_v3_275.Out", "box_PlayDialog_v6_123.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_SpawnAI_88;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1423186470", "1423186470", "MIS_025_RescuedSurvivors", "box_SpawnAI_88.Out", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_88_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_147();
    l0 = self.box_SpawnAI_88;
    l1 = self.box_VisibilityModifier_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|880180671", "880180671", "MIS_025_RescuedSurvivors", "box_SpawnAI_88.Spawned", "box_VisibilityModifier_147.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_264_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_67();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|181801403", "181801403", "MIS_025_RescuedSurvivors", "box_IsEntityLoaded_v3_264.False", "box_UseContextualActionModifier_v3_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_56_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_94();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|172065313", "172065313", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_56.Disabled", "box_UseContextualActionModifier_v3_94.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_210_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_210;
    l1 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1064789675", "1064789675", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_210.Finished", "box_MultipleOR_105.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_210_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_210;
    l1 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1878062979", "1878062979", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_210.FinishedInterrupted", "box_MultipleOR_105.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_106_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_106;
    l1 = self.box_MultipleOR_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1052629854", "1052629854", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_106.Finished", "box_MultipleOR_246.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_106_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_106;
    l1 = self.box_MultipleOR_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1724814320", "1724814320", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_106.FinishedInterrupted", "box_MultipleOR_246.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_59();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|73221233", "73221233", "MIS_025_RescuedSurvivors", "box_MultipleOR_45.Out", "box_Compare_Boolean_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_102_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = self.box_Delay_v5_102;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1947396839", "1947396839", "MIS_025_RescuedSurvivors", "box_Delay_v5_102.Started", "box_ParticleSystem_v3_55.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_172();
    l0 = self.box_Delay_v5_102;
    l1 = self.box_SoundModifier_v2_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1154630108", "1154630108", "MIS_025_RescuedSurvivors", "box_Delay_v5_102.TimeElapsed", "box_SoundModifier_v2_172.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_142_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_130();
    l0 = self.box_ProximityRadiusListener_v3_142;
    l1 = self.box_RequestTutorial_v3_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|203434226", "203434226", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_142.SomeoneNear", "box_RequestTutorial_v3_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_206_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_206;
    l1 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1192519508", "1192519508", "MIS_025_RescuedSurvivors", "box_MultipleOR_206.Out", "box_MultipleOR_182.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_147_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_104();
    l0 = self.box_VisibilityModifier_147;
    l1 = self.box_VisibilityModifier_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1280143208", "1280143208", "MIS_025_RescuedSurvivors", "box_VisibilityModifier_147.Disabled", "box_VisibilityModifier_104.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_147_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_104();
    l0 = self.box_VisibilityModifier_147;
    l1 = self.box_VisibilityModifier_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|380159670", "380159670", "MIS_025_RescuedSurvivors", "box_VisibilityModifier_147.Enabled", "box_VisibilityModifier_104.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_61_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_61;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1166845971", "1166845971", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_61.Finished", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_61_Queued()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_61;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1050145405", "1050145405", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_61.Queued", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_39_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1231417228", "1231417228", "MIS_025_RescuedSurvivors", "box_GetActivityState_v2_39.Active", "box_MultipleOR_185.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_39_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_261();
    l0 = self.box_TeleportPawns_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|925629771", "925629771", "MIS_025_RescuedSurvivors", "box_GetActivityState_v2_39.Completed", "box_TeleportPawns_261.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_239_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_283();
    l0 = self.box_Gate_v3_239;
    l1 = self.box_PlayDialog_v6_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|185090168", "185090168", "MIS_025_RescuedSurvivors", "box_Gate_v3_239.Closed", "box_PlayDialog_v6_283.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_239_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_2();
    l0 = self.box_Gate_v3_239;
    l1 = self.box_Switch_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1175686048", "1175686048", "MIS_025_RescuedSurvivors", "box_Gate_v3_239.Out", "box_Switch_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_211_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_224();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1173765269", "1173765269", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_211.A_is_True", "box_IsPawnAlive_v3_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_143_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_195();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|48498974", "48498974", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_143.Out", "box_GetActivityFact_195.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_143_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_131();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|161145930", "161145930", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_143.Out", "box_GetActivityFact_131.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_143_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_144();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|970725453", "970725453", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_143.Out", "box_GetActivityFact_144.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_11_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_279();
    l0 = self.box_Switch_11;
    l1 = self.box_PlayDialog_v6_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1360536307", "1360536307", "MIS_025_RescuedSurvivors", "box_Switch_11.Output", "box_PlayDialog_v6_279.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_11_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_197();
    l0 = self.box_Switch_11;
    l1 = self.box_PlayDialog_v6_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|230338414", "230338414", "MIS_025_RescuedSurvivors", "box_Switch_11.Output", "box_PlayDialog_v6_197.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_11_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_233();
    l0 = self.box_Switch_11;
    l1 = self.box_PlayDialog_v6_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1338254630", "1338254630", "MIS_025_RescuedSurvivors", "box_Switch_11.Output", "box_PlayDialog_v6_233.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_271_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_271();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|972016246", "972016246", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_271.Enabled", "box_UseContextualActionModifier_v3_271.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_271_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_260();
    l0 = self.box_ContextualActionListener_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1876037942", "1876037942", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_271.UseCalled", "box_ContextualActionListener_260.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_217();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1066824358", "1066824358", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_76.Out", "box_UseContextualActionModifier_v3_217.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupState_v2_66();
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|856475004", "856475004", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_76.Out", "box_PickupState_v2_66.SetAsNotPickable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsNotPickable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_215();
    l0 = self.box_ProximityRadiusListener_v3_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|540347210", "540347210", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_76.Out", "box_ProximityRadiusListener_v3_215.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_209();
    l0 = self.box_MissionAckTriggerListener_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|119008393", "119008393", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_76.Out", "box_MissionAckTriggerListener_209.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|624729113", "624729113", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_76.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_244_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_Delay_v5_244;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1042525495", "1042525495", "MIS_025_RescuedSurvivors", "box_Delay_v5_244.Started", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_244_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_242();
    l0 = self.box_Delay_v5_244;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1965406837", "1965406837", "MIS_025_RescuedSurvivors", "box_Delay_v5_244.TimeElapsed", "box_SetContextualStrategy_242.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_183_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_160();
    l0 = self.box_MultipleOR_183;
    l1 = self.box_Gate_v3_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2019484834", "2019484834", "MIS_025_RescuedSurvivors", "box_MultipleOR_183.Out", "box_Gate_v3_160.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_273_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_116();
    l0 = self.box_Switch_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|89679882", "89679882", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_273.A_is_True", "box_Switch_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_166_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = self.box_HealthListener_v6_166;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|669991056", "669991056", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_166.Disabled", "box_OutputOrder_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_166_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_294();
    l0 = self.box_HealthListener_v6_166;
    l1 = self.box_StateListener_v2_294;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2123746940", "2123746940", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_166.Enabled", "box_StateListener_v2_294.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_166_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_166();
    l0 = self.box_HealthListener_v6_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2006514564", "2006514564", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_166.Killed", "box_HealthListener_v6_166.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_81_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_81;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1783421143", "1783421143", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_81.Finished", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_81_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_81;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1061670110", "1061670110", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_81.FinishedInterrupted", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_81_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_81;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|366694879", "366694879", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_81.StartedPriorityFailed", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_91_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_91;
    l1 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|614455006", "614455006", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_91.Finished", "box_MultipleOR_97.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_91_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_91;
    l1 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1368378258", "1368378258", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_91.FinishedInterrupted", "box_MultipleOR_97.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_94_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_271();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|830768805", "830768805", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_94.Disabled", "box_UseContextualActionModifier_v3_271.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_94_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_227();
    l0 = self.box_Delay_v5_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1515756671", "1515756671", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_94.ForceNormalEndCalled", "box_Delay_v5_227.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_73_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_208();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1960062152", "1960062152", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_73.A_is_True", "box_IsPawnAlive_v3_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_117_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_160();
    l0 = self.box_Switch_117;
    l1 = self.box_Gate_v3_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1390282614", "1390282614", "MIS_025_RescuedSurvivors", "box_Switch_117.Output", "box_Gate_v3_160.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Switch_117_Output_1()
    local l0, l1;
    l0 = self.box_Switch_117;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|641752328", "641752328", "MIS_025_RescuedSurvivors", "box_Switch_117.Output", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_204_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_298();
    l0 = self.box_MultipleOR_204;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|34055995", "34055995", "MIS_025_RescuedSurvivors", "box_MultipleOR_204.Out", "box_HealthModifier_v2_298.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_197_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_197;
    l1 = self.box_MultipleOR_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|85594756", "85594756", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_197.Finished", "box_MultipleOR_148.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_197_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_197;
    l1 = self.box_MultipleOR_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1074434263", "1074434263", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_197.FinishedInterrupted", "box_MultipleOR_148.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_197_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_233();
    l0 = self.box_PlayDialog_v6_197;
    l1 = self.box_PlayDialog_v6_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|360575266", "360575266", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_197.QueueCancelled", "box_PlayDialog_v6_233.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_197_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_197();
    l0 = self.box_PlayDialog_v6_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1418016317", "1418016317", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_197.Stopped", "box_PlayDialog_v6_197.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_189_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_189;
    l1 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|461249590", "461249590", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_189.Finished", "box_MultipleOR_134.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_189_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_189;
    l1 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|714315780", "714315780", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_189.FinishedInterrupted", "box_MultipleOR_134.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_115_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|60401446", "60401446", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_115.Finished", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_115_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1441326304", "1441326304", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_115.FinishedInterrupted", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_257_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnParticle_v6_119();
    l0 = self.box_MultipleOR_257;
    l1 = self.box_SpawnParticle_v6_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1966612147", "1966612147", "MIS_025_RescuedSurvivors", "box_MultipleOR_257.Out", "box_SpawnParticle_v6_119.SpawnParticle", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnParticle
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_188();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1997541148", "1997541148", "MIS_025_RescuedSurvivors", "box_MultipleOR_27.Out", "box_Simple_Node_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_195_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_114();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1619693467", "1619693467", "MIS_025_RescuedSurvivors", "box_GetActivityFact_195.FactSet", "box_GetActivityFact_114.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_258_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_30();
    l0 = self.box_MultipleOR_258;
    l1 = self.box_HealthListener_v6_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|611546984", "611546984", "MIS_025_RescuedSurvivors", "box_MultipleOR_258.Out", "box_HealthListener_v6_30.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_302_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_MultipleOR_302;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|282958635", "282958635", "MIS_025_RescuedSurvivors", "box_MultipleOR_302.Out", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_151_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_151_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_243();
    l0 = self.box_Delay_v5_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|428212051", "428212051", "MIS_025_RescuedSurvivors", "box_SetBoolean_v2_151.Out", "box_Delay_v5_243.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsPawnAlive_v3_208_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_71();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1861428857", "1861428857", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_208.Alive", "box_SetEntity_v2_71.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_189();
    l0 = self.box_MultipleOR_83;
    l1 = self.box_PlayDialog_v6_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1737400215", "1737400215", "MIS_025_RescuedSurvivors", "box_MultipleOR_83.Out", "box_PlayDialog_v6_189.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetActivityFact_305_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_264();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1091581937", "1091581937", "MIS_025_RescuedSurvivors", "box_GetActivityFact_305.FactNotSet", "box_IsEntityLoaded_v3_264.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_49_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_49;
    l1 = self.box_MultipleOR_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|705769828", "705769828", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_49.Finished", "box_MultipleOR_220.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_49_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_49;
    l1 = self.box_MultipleOR_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1512125455", "1512125455", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_49.FinishedInterrupted", "box_MultipleOR_220.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_8();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_Gate_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1724428336", "1724428336", "MIS_025_RescuedSurvivors", "box_MultipleOR_10.Out", "box_Gate_v3_8.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_296_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_MultipleOR_296;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1964588874", "1964588874", "MIS_025_RescuedSurvivors", "box_MultipleOR_296.Out", "box_Delay_v5_35.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ParticleSystem_v3_155_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_257;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|606014970", "606014970", "MIS_025_RescuedSurvivors", "box_ParticleSystem_v3_155.Started", "box_MultipleOR_257.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_265_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_265;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1169670163", "1169670163", "MIS_025_RescuedSurvivors", "box_MultipleOR_265.Out", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_276_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PickupState_v2_200();
    l0 = self.box_MultipleOR_276;
    l1 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2138724144", "2138724144", "MIS_025_RescuedSurvivors", "box_MultipleOR_276.Out", "box_PickupState_v2_200.SetAsPickable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsPickable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_177_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_177;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2102964562", "2102964562", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_177.Finished", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_177_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_177;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|826328613", "826328613", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_177.FinishedInterrupted", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_228_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_228;
    l1 = self.box_MultipleOR_296;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|669741360", "669741360", "MIS_025_RescuedSurvivors", "box_ContextualActionListener_228.Interrupt", "box_MultipleOR_296.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_228_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_228;
    l1 = self.box_MultipleOR_301;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1359730636", "1359730636", "MIS_025_RescuedSurvivors", "box_ContextualActionListener_228.Start", "box_MultipleOR_301.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_3_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_124();
    l0 = self.box_SpawnAI_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|517899458", "517899458", "MIS_025_RescuedSurvivors", "box_SpawnAI_3.Spawned", "box_GetActivityState_v2_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_256_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_61();
    l0 = self.box_PlayDialog_v6_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1082017133", "1082017133", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_256.A_is_True", "box_PlayDialog_v6_61.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_242_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_43();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|950417920", "950417920", "MIS_025_RescuedSurvivors", "box_SetContextualStrategy_242.Out", "box_SetBoolean_v2_43.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_42_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_42;
    l1 = self.box_MultipleOR_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|391100037", "391100037", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_42.Finished", "box_MultipleOR_247.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_42_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_42;
    l1 = self.box_MultipleOR_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|182733984", "182733984", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_42.FinishedInterrupted", "box_MultipleOR_247.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_42_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1735560184", "1735560184", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_42.QueueCancelled", "box_PlayDialog_v6_42.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_229_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_169();
    l0 = self.box_EntityStatusListener_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2033859147", "2033859147", "MIS_025_RescuedSurvivors", "box_GetActivityFact_229.FactNotSet", "box_EntityStatusListener_169.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_229_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_266();
    l0 = self.box_EntityStatusListener_266;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|209409272", "209409272", "MIS_025_RescuedSurvivors", "box_GetActivityFact_229.FactSet", "box_EntityStatusListener_266.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_171_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_171;
    l1 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|693413918", "693413918", "MIS_025_RescuedSurvivors", "box_MultipleOR_171.Out", "box_MultipleOR_182.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_7();
    l0 = self.box_HealthListener_v6_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|491845105", "491845105", "MIS_025_RescuedSurvivors", "box_SetContextualStrategy_19.Out", "box_HealthListener_v6_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_124_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_219();
    l0 = self.box_TeleportPawns_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1441804788", "1441804788", "MIS_025_RescuedSurvivors", "box_GetActivityState_v2_124.Active", "box_TeleportPawns_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_124_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_235();
    l0 = self.box_TeleportPawns_235;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1920608110", "1920608110", "MIS_025_RescuedSurvivors", "box_GetActivityState_v2_124.Completed", "box_TeleportPawns_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_163_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_262();
    l0 = self.box_HealthListener_v6_163;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1249006076", "1249006076", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_163.Disabled", "box_SetActivityFact_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_163_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_136();
    l0 = self.box_HealthListener_v6_163;
    l1 = self.box_Delay_v5_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|588996205", "588996205", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_163.Enabled", "box_Delay_v5_136.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_163_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_163();
    l0 = self.box_HealthListener_v6_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|919759469", "919759469", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_163.Killed", "box_HealthListener_v6_163.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_221_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_221;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|232375600", "232375600", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_221.Finished", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_221_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_221;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1499895162", "1499895162", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_221.FinishedInterrupted", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPawnAlive_v3_180_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_149();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1562566828", "1562566828", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_180.Alive", "box_SetEntity_v2_149.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_58_Destroyed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1772577002", "1772577002", "MIS_025_RescuedSurvivors", "box_StaticBreakableBreaker_58.Destroyed", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PositionModifier_v2_99_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_267();
    l0 = self.box_PositionModifier_v2_99;
    l1 = self.box_SoundModifier_v2_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|977165383", "977165383", "MIS_025_RescuedSurvivors", "box_PositionModifier_v2_99.StartOut", "box_SoundModifier_v2_267.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_35_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_35;
    l1 = self.box_OnceOnly_v3_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|985043380", "985043380", "MIS_025_RescuedSurvivors", "box_Delay_v5_35.Started", "box_OnceOnly_v3_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_122();
    l0 = self.box_Delay_v5_35;
    l1 = self.box_SoundModifier_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|507909405", "507909405", "MIS_025_RescuedSurvivors", "box_Delay_v5_35.TimeElapsed", "box_SoundModifier_v2_122.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_104_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_240();
    l0 = self.box_VisibilityModifier_104;
    l1 = self.box_VisibilityModifier_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1901630266", "1901630266", "MIS_025_RescuedSurvivors", "box_VisibilityModifier_104.Disabled", "box_VisibilityModifier_240.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_104_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_240();
    l0 = self.box_VisibilityModifier_104;
    l1 = self.box_VisibilityModifier_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1324346562", "1324346562", "MIS_025_RescuedSurvivors", "box_VisibilityModifier_104.Enabled", "box_VisibilityModifier_240.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_186_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_MultipleOR_186;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|958249528", "958249528", "MIS_025_RescuedSurvivors", "box_MultipleOR_186.Out", "box_Delay_v5_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StateListener_v2_294_Disabled()
    local l0, l1;
    l0 = self.box_StateListener_v2_294;
    l1 = self.box_MultipleOR_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1273999492", "1273999492", "MIS_025_RescuedSurvivors", "box_StateListener_v2_294.Disabled", "box_MultipleOR_101.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StateListener_v2_294_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_294;
    l1 = self.box_MultipleOR_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2135817938", "2135817938", "MIS_025_RescuedSurvivors", "box_StateListener_v2_294.StateStart", "box_MultipleOR_101.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_280_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1942858461", "1942858461", "MIS_025_RescuedSurvivors", "box_IsEntityLoaded_v3_280.False", "box_SpawnAI_3.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_239();
    l0 = self.box_MultipleOR_176;
    l1 = self.box_Gate_v3_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2025798591", "2025798591", "MIS_025_RescuedSurvivors", "box_MultipleOR_176.Out", "box_Gate_v3_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_224_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_284();
    l0 = self.box_PlayDialog_v6_284;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1959936196", "1959936196", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_224.Alive", "box_PlayDialog_v6_284.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_269_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_297();
    l0 = self.box_ProximityRadiusListener_v3_269;
    l1 = self.box_InventoryItemModifier_297;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1392905560", "1392905560", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_269.Enabled", "box_InventoryItemModifier_297.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_ProximityRadiusListener_v3_269_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_269;
    l1 = self.box_MultipleOR_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2117615526", "2117615526", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_269.SomeoneNear", "box_MultipleOR_204.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_203_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_164();
    l0 = self.box_PlayDialog_v6_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1806280568", "1806280568", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_203.A_is_True", "box_PlayDialog_v6_164.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_238_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_170();
    l0 = self.box_PlayDialog_v6_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2071660324", "2071660324", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_238.A_is_True", "box_PlayDialog_v6_170.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SetActivityFact_150_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_17();
    l0 = self.box_NavLinkModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1232268614", "1232268614", "MIS_025_RescuedSurvivors", "box_SetActivityFact_150.Out", "box_NavLinkModifier_17.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_174_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_174;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|809155165", "809155165", "MIS_025_RescuedSurvivors", "box_Delay_v5_174.TimeElapsed", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_218_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_56();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1789681908", "1789681908", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_218.Out", "box_UseContextualActionModifier_v3_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_147();
    l0 = self.box_VisibilityModifier_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|200156083", "200156083", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_218.Out", "box_VisibilityModifier_147.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_218_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_146();
    l0 = self.box_Delay_v5_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1694446554", "1694446554", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_218.Out", "box_Delay_v5_146.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_218_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1386696776", "1386696776", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_218.Out", "box_MultipleOR_241.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_218_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_249();
    l0 = self.box_SoundModifier_v2_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|820047274", "820047274", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_218.Out", "box_SoundModifier_v2_249.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_194_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_201();
    l0 = self.box_HealthListener_v6_194;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1298350541", "1298350541", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_194.Disabled", "box_SetActivityFact_201.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_194_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_194();
    l0 = self.box_HealthListener_v6_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1162064562", "1162064562", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_194.Killed", "box_HealthListener_v6_194.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_92_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_92_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|449991108", "449991108", "MIS_025_RescuedSurvivors", "box_SetEntity_v2_92.Out", "box_MultipleOR_225.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_283_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_PlayDialog_v6_283;
    l1 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|955793606", "955793606", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_283.QueueCancelled", "box_Gate_v3_184.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_283_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_283();
    l0 = self.box_PlayDialog_v6_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|284698438", "284698438", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_283.Stopped", "box_PlayDialog_v6_283.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_9_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_302;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|517251097", "517251097", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_9.Finished", "box_MultipleOR_302.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_9_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_302;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1447194745", "1447194745", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_9.FinishedInterrupted", "box_MultipleOR_302.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_288_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_Gate_v3_288;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1936845691", "1936845691", "MIS_025_RescuedSurvivors", "box_Gate_v3_288.Closed", "box_PlayDialog_v6_42.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_288_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_Gate_v3_288;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1134977572", "1134977572", "MIS_025_RescuedSurvivors", "box_Gate_v3_288.Out", "box_PlayDialog_v6_42.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_Delay_v5_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1886066132", "1886066132", "MIS_025_RescuedSurvivors", "box_Delay_v5_4.Started", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_286();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_PlayDialog_v6_286;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1487559214", "1487559214", "MIS_025_RescuedSurvivors", "box_Delay_v5_4.TimeElapsed", "box_PlayDialog_v6_286.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_15_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_103();
    l0 = self.box_Brick_Hostage_Setup_v2_15;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1935015333", "1935015333", "MIS_025_RescuedSurvivors", "box_Brick_Hostage_Setup_v2_15.HostageReleased", "box_SetContextualStrategy_103.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Brick_Hostage_Setup_v2_15;
    l1 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1968396354", "1968396354", "MIS_025_RescuedSurvivors", "box_Brick_Hostage_Setup_v2_15.Out", "box_Delay_v5_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_175_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_275();
    l0 = self.box_MultipleOR_175;
    l1 = self.box_Gate_v3_275;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1100443234", "1100443234", "MIS_025_RescuedSurvivors", "box_MultipleOR_175.Out", "box_Gate_v3_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_142();
    l0 = self.box_MultipleOR_37;
    l1 = self.box_ProximityRadiusListener_v3_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1072190245", "1072190245", "MIS_025_RescuedSurvivors", "box_MultipleOR_37.Out", "box_ProximityRadiusListener_v3_142.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_184_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_283();
    l0 = self.box_Gate_v3_184;
    l1 = self.box_PlayDialog_v6_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1841337437", "1841337437", "MIS_025_RescuedSurvivors", "box_Gate_v3_184.Out", "box_PlayDialog_v6_283.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_234_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_288();
    l0 = self.box_MultipleOR_234;
    l1 = self.box_Gate_v3_288;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|490860072", "490860072", "MIS_025_RescuedSurvivors", "box_MultipleOR_234.Out", "box_Gate_v3_288.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_272_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Gate_v3_272;
    l1 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|282466171", "282466171", "MIS_025_RescuedSurvivors", "box_Gate_v3_272.Closed", "box_Delay_v5_140.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_272_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Gate_v3_272;
    l1 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1770220694", "1770220694", "MIS_025_RescuedSurvivors", "box_Gate_v3_272.Out", "box_Delay_v5_140.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetLocalPlayer_v2_292_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_292_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_47();
    l0 = self.box_SpawnAI_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|627871536", "627871536", "MIS_025_RescuedSurvivors", "box_GetLocalPlayer_v2_292.Out", "box_SpawnAI_47.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_156_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_132();
    l0 = self.box_MultipleOR_156;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1403580217", "1403580217", "MIS_025_RescuedSurvivors", "box_MultipleOR_156.Out", "box_Compare_Boolean_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_303_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_303;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|380403317", "380403317", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_303.Finished", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_303_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_303;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1643027224", "1643027224", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_303.FinishedInterrupted", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_303_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_303;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1725839284", "1725839284", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_303.StartedPriorityFailed", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ParticleSystem_v3_55_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_257;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|914184343", "914184343", "MIS_025_RescuedSurvivors", "box_ParticleSystem_v3_55.Started", "box_MultipleOR_257.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TeleportPawns_261_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_261;
    l1 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1795194335", "1795194335", "MIS_025_RescuedSurvivors", "box_TeleportPawns_261.Out", "box_MultipleOR_185.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_172_Started()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_162();
    l0 = self.box_SoundModifier_v2_172;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|882760382", "882760382", "MIS_025_RescuedSurvivors", "box_SoundModifier_v2_172.Started", "box_HealthModifier_v2_162.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_215_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_215;
    l1 = self.box_OnceOnly_v3_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1350721437", "1350721437", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_215.Disabled", "box_OnceOnly_v3_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_215_Enabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_215;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|143104809", "143104809", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_215.Enabled", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_215_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_215();
    l0 = self.box_ProximityRadiusListener_v3_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1883254937", "1883254937", "MIS_025_RescuedSurvivors", "box_ProximityRadiusListener_v3_215.SomeoneNear", "box_ProximityRadiusListener_v3_215.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_203();
    l0 = self.box_MultipleOR_85;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1326263205", "1326263205", "MIS_025_RescuedSurvivors", "box_MultipleOR_85.Out", "box_Compare_Boolean_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_128_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_49();
    l0 = self.box_PlayDialog_v6_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|129449531", "129449531", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_128.A_is_True", "box_PlayDialog_v6_49.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_241_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_228();
    l0 = self.box_MultipleOR_241;
    l1 = self.box_ContextualActionListener_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2042354865", "2042354865", "MIS_025_RescuedSurvivors", "box_MultipleOR_241.Out", "box_ContextualActionListener_228.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_63_Started()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_300();
    l0 = self.box_SoundModifier_v2_63;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1693135796", "1693135796", "MIS_025_RescuedSurvivors", "box_SoundModifier_v2_63.Started", "box_HealthModifier_v2_300.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_240_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_259();
    l0 = self.box_VisibilityModifier_240;
    l1 = self.box_VisibilityModifier_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|893594521", "893594521", "MIS_025_RescuedSurvivors", "box_VisibilityModifier_240.Disabled", "box_VisibilityModifier_259.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_230_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_57();
    l0 = self.box_MultipleOR_230;
    l1 = self.box_StateListener_v2_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1071874028", "1071874028", "MIS_025_RescuedSurvivors", "box_MultipleOR_230.Out", "box_StateListener_v2_57.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_253_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_296;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1313081205", "1313081205", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_253.Out", "box_MultipleOR_296.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_253_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|756235791", "756235791", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_253.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_253_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1243485308", "1243485308", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_253.Out", "box_Delay_v5_126.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_253_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1432157029", "1432157029", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_253.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_268_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_210();
    l0 = self.box_PlayDialog_v6_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1514028499", "1514028499", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_268.A_is_True", "box_PlayDialog_v6_210.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_277_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_121();
    l0 = self.box_MultipleOR_277;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1231454627", "1231454627", "MIS_025_RescuedSurvivors", "box_MultipleOR_277.Out", "box_RandomFloat_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_300_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_218();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1910940431", "1910940431", "MIS_025_RescuedSurvivors", "box_HealthModifier_v2_300.Damaged", "box_OutputOrder_v2_218.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_169_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_87();
    l0 = self.box_EntityStatusListener_169;
    l1 = self.box_StaticBreakableListener_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2070595403", "2070595403", "MIS_025_RescuedSurvivors", "box_EntityStatusListener_169.Loaded", "box_StaticBreakableListener_87.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_133();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_PlayDialog_v6_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1808669332", "1808669332", "MIS_025_RescuedSurvivors", "box_MultipleOR_14.Out", "box_PlayDialog_v6_133.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_196_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_196;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|104525160", "104525160", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_196.Finished", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_196_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_196;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1829129435", "1829129435", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_196.FinishedInterrupted", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_196_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_196;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|519120667", "519120667", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_196.StartedPriorityFailed", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UseContextualActionModifier_v3_67_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_291();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|438394306", "438394306", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_67.Disabled", "box_SetContextualStrategy_291.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_67_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_165();
    l0 = self.box_SpawnAI_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|226732095", "226732095", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_67.Enabled", "box_SpawnAI_165.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_287_Out()
    self:OnExit_box_SetBoolean_v2_287_Out();
end;

function export:f_box_UseContextualActionModifier_v3_245_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_245();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1238786515", "1238786515", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_245.Enabled", "box_UseContextualActionModifier_v3_245.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestTutorial_v3_130_OnHidden()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_222();
    l0 = self.box_RequestTutorial_v3_130;
    l1 = self.box_Delay_v5_222;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2014607872", "2014607872", "MIS_025_RescuedSurvivors", "box_RequestTutorial_v3_130.OnHidden", "box_Delay_v5_222.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NavLinkModifier_22_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_191();
    l0 = self.box_NavLinkModifier_22;
    l1 = self.box_PlayDialog_v6_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1760886272", "1760886272", "MIS_025_RescuedSurvivors", "box_NavLinkModifier_22.Activated", "box_PlayDialog_v6_191.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_196();
    l0 = self.box_MultipleOR_34;
    l1 = self.box_PlayDialog_v6_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1429117304", "1429117304", "MIS_025_RescuedSurvivors", "box_MultipleOR_34.Out", "box_PlayDialog_v6_196.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_227_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_94();
    l0 = self.box_Delay_v5_227;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|634529449", "634529449", "MIS_025_RescuedSurvivors", "box_Delay_v5_227.TimeElapsed", "box_UseContextualActionModifier_v3_94.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_252_Out()
    self:OnExit_box_SetBoolean_v2_252_Out();
end;

function export:f_box_SetActivityFact_159_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_77();
    l0 = self.box_HealthListener_v6_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|772192145", "772192145", "MIS_025_RescuedSurvivors", "box_SetActivityFact_159.Out", "box_HealthListener_v6_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_80_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_299();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1669982202", "1669982202", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_80.Alive", "box_SetEntity_v2_299.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_80_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_282;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1043724136", "1043724136", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_80.DeadOrDown", "box_MultipleOR_282.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsPawnAlive_v3_80_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_282;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1883834030", "1883834030", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_80.NotLoaded", "box_MultipleOR_282.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_285_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_285;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1977493082", "1977493082", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_285.Killed", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_79_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_79;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|569061191", "569061191", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_79.Finished", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_79_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_79;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1830398362", "1830398362", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_79.FinishedInterrupted", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_138_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_79();
    l0 = self.box_MultipleOR_138;
    l1 = self.box_PlayDialog_v6_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1805587339", "1805587339", "MIS_025_RescuedSurvivors", "box_MultipleOR_138.Out", "box_PlayDialog_v6_79.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_256();
    l0 = self.box_MultipleOR_97;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|817920429", "817920429", "MIS_025_RescuedSurvivors", "box_MultipleOR_97.Out", "box_Compare_Boolean_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_259_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_51();
    l0 = self.box_VisibilityModifier_259;
    l1 = self.box_Bind_v4_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|590936574", "590936574", "MIS_025_RescuedSurvivors", "box_VisibilityModifier_259.Disabled", "box_Bind_v4_51.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_232_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_168();
    l0 = self.box_MultipleOR_232;
    l1 = self.box_PlayDialog_v6_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|166358032", "166358032", "MIS_025_RescuedSurvivors", "box_MultipleOR_232.Out", "box_PlayDialog_v6_168.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_TeleportPawns_219_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_219;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|110251489", "110251489", "MIS_025_RescuedSurvivors", "box_TeleportPawns_219.Out", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_263_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1025982944", "1025982944", "MIS_025_RescuedSurvivors", "box_SetContextualStrategy_263.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_101_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_173();
    l0 = self.box_MultipleOR_101;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1834410044", "1834410044", "MIS_025_RescuedSurvivors", "box_MultipleOR_101.Out", "box_SetContextualStrategy_173.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|592982080", "592982080", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_127.Out", "box_MultipleOR_230.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_294();
    l0 = self.box_StateListener_v2_294;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1886368423", "1886368423", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_127.Out", "box_StateListener_v2_294.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_127_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_253();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|192813878", "192813878", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_127.Out", "box_OutputOrder_v2_253.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_214();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1468301708", "1468301708", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_127.Out", "box_SetBoolean_v2_214.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_146();
    l0 = self.box_Delay_v5_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|285232481", "285232481", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_127.Out", "box_Delay_v5_146.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_127_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|355153836", "355153836", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_127.Out", "box_MultipleOR_276.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_74_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_74;
    l1 = self.box_MultipleOR_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1167972202", "1167972202", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_74.Finished", "box_MultipleOR_138.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_74_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_74;
    l1 = self.box_MultipleOR_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1967439833", "1967439833", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_74.FinishedInterrupted", "box_MultipleOR_138.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_59_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1002993409", "1002993409", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_59.A_is_True", "box_PlayDialog_v6_31.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_281_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|501416596", "501416596", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_281.A_is_True", "box_PlayDialog_v6_115.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_132_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2115649976", "2115649976", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_132.A_is_True", "box_PlayDialog_v6_62.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_202_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_239();
    l0 = self.box_Delay_v5_202;
    l1 = self.box_Gate_v3_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|670103858", "670103858", "MIS_025_RescuedSurvivors", "box_Delay_v5_202.Stopped", "box_Gate_v3_239.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_202_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_202;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|277106301", "277106301", "MIS_025_RescuedSurvivors", "box_Delay_v5_202.TimeElapsed", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_77_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_236();
    l0 = self.box_HealthListener_v6_77;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|299679352", "299679352", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_77.Disabled", "box_SetActivityFact_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_77_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_77();
    l0 = self.box_HealthListener_v6_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2068968760", "2068968760", "MIS_025_RescuedSurvivors", "box_HealthListener_v6_77.Killed", "box_HealthListener_v6_77.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_154_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_88();
    l0 = self.box_SpawnAI_154;
    l1 = self.box_SpawnAI_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|644469425", "644469425", "MIS_025_RescuedSurvivors", "box_SpawnAI_154.Spawned", "box_SpawnAI_88.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_281();
    l0 = self.box_MultipleOR_181;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|624803953", "624803953", "MIS_025_RescuedSurvivors", "box_MultipleOR_181.Out", "box_Compare_Boolean_281.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_122_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_135();
    l0 = self.box_SoundModifier_v2_122;
    l1 = self.box_Delay_v5_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2122925393", "2122925393", "MIS_025_RescuedSurvivors", "box_SoundModifier_v2_122.Started", "box_Delay_v5_135.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_29_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1900667889", "1900667889", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_29.Disabled", "box_MultipleOR_276.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_6_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_93();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|260117768", "260117768", "MIS_025_RescuedSurvivors", "box_GetActivityFact_6.FactNotSet", "box_IsEntityLoaded_v3_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_125_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_23();
    l0 = self.box_Brick_Hostage_Setup_v2_125;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|876226342", "876226342", "MIS_025_RescuedSurvivors", "box_Brick_Hostage_Setup_v2_125.HostageReleased", "box_SetActivityFact_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_125_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_194();
    l0 = self.box_Brick_Hostage_Setup_v2_125;
    l1 = self.box_HealthListener_v6_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1647972472", "1647972472", "MIS_025_RescuedSurvivors", "box_Brick_Hostage_Setup_v2_125.Out", "box_HealthListener_v6_194.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_193_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_163();
    l0 = self.box_SpawnAI_193;
    l1 = self.box_HealthListener_v6_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|455373440", "455373440", "MIS_025_RescuedSurvivors", "box_SpawnAI_193.Spawned", "box_HealthListener_v6_163.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_19();
    l0 = self.box_MultipleOR_108;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|897555483", "897555483", "MIS_025_RescuedSurvivors", "box_MultipleOR_108.Out", "box_SetContextualStrategy_19.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_165_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_39();
    l0 = self.box_SpawnAI_165;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1211663727", "1211663727", "MIS_025_RescuedSurvivors", "box_SpawnAI_165.Spawned", "box_GetActivityState_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_84_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_84_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_70();
    l0 = self.box_Delay_v5_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|359141712", "359141712", "MIS_025_RescuedSurvivors", "box_SetBoolean_v2_84.Out", "box_Delay_v5_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_166();
    l0 = self.box_SpawnAI_32;
    l1 = self.box_HealthListener_v6_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|620740789", "620740789", "MIS_025_RescuedSurvivors", "box_SpawnAI_32.Out", "box_HealthListener_v6_166.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_32_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_15();
    l0 = self.box_SpawnAI_32;
    l1 = self.box_Brick_Hostage_Setup_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1129644986", "1129644986", "MIS_025_RescuedSurvivors", "box_SpawnAI_32.Spawned", "box_Brick_Hostage_Setup_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_36_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_36;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|273668993", "273668993", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_36.Finished", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_36_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_36;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|652742831", "652742831", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_36.FinishedInterrupted", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_50_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_205();
    l0 = self.box_ContextualActionListener_50;
    l1 = self.box_ProximityRadiusListener_v3_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1220808332", "1220808332", "MIS_025_RescuedSurvivors", "box_ContextualActionListener_50.Disabled", "box_ProximityRadiusListener_v3_205.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_50_Start()
    local params, l0;
    params = self:OnEnter_box_ContextualActionListener_50();
    l0 = self.box_ContextualActionListener_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|280038919", "280038919", "MIS_025_RescuedSurvivors", "box_ContextualActionListener_50.Start", "box_ContextualActionListener_50.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_287();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|604751163", "604751163", "MIS_025_RescuedSurvivors", "box_MultipleOR_21.Out", "box_SetBoolean_v2_287.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_260();
    l0 = self.box_MultipleOR_139;
    l1 = self.box_ContextualActionListener_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|789805739", "789805739", "MIS_025_RescuedSurvivors", "box_MultipleOR_139.Out", "box_ContextualActionListener_260.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_72_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_285();
    l0 = self.box_StateListener_v2_72;
    l1 = self.box_HealthListener_v6_285;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1229025612", "1229025612", "MIS_025_RescuedSurvivors", "box_StateListener_v2_72.Enabled", "box_HealthListener_v6_285.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_72_StateStop()
    local l0, l1;
    l0 = self.box_StateListener_v2_72;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1819160512", "1819160512", "MIS_025_RescuedSurvivors", "box_StateListener_v2_72.StateStop", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityFact_144_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_90();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1065655155", "1065655155", "MIS_025_RescuedSurvivors", "box_GetActivityFact_144.FactSet", "box_GetActivityFact_90.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_110_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_57();
    l0 = self.box_OnceOnly_v3_110;
    l1 = self.box_StateListener_v2_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1333311578", "1333311578", "MIS_025_RescuedSurvivors", "box_OnceOnly_v3_110.Out", "box_StateListener_v2_57.Idle_RelaxCautious", l0:GetLuaBox(), l1:GetLuaBox());
    -- Idle_RelaxCautious
    l1:Exec(4, params);
end;

function export:f_box_MultipleOR_145_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_251();
    l0 = self.box_MultipleOR_145;
    l1 = self.box_PlayDialog_v6_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|45769060", "45769060", "MIS_025_RescuedSurvivors", "box_MultipleOR_145.Out", "box_PlayDialog_v6_251.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_133_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_133;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|959921672", "959921672", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_133.Finished", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_133_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_133;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1785168437", "1785168437", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_133.FinishedInterrupted", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_133_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_133;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1952528624", "1952528624", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_133.QueueCancelled", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_177();
    l0 = self.box_MultipleOR_89;
    l1 = self.box_PlayDialog_v6_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|202494701", "202494701", "MIS_025_RescuedSurvivors", "box_MultipleOR_89.Out", "box_PlayDialog_v6_177.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_123_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_123;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1449307802", "1449307802", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_123.Finished", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_123_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_123;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1204085364", "1204085364", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_123.FinishedInterrupted", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_123_QueueCancelled()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_123();
    l0 = self.box_PlayDialog_v6_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1241776943", "1241776943", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_123.QueueCancelled", "box_PlayDialog_v6_123.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_123_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_288();
    l0 = self.box_PlayDialog_v6_123;
    l1 = self.box_Gate_v3_288;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2027851029", "2027851029", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_123.Stopped", "box_Gate_v3_288.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_260_Disabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_260;
    l1 = self.box_MultipleOR_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|701008366", "701008366", "MIS_025_RescuedSurvivors", "box_ContextualActionListener_260.Disabled", "box_MultipleOR_241.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_260_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_260;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|24240391", "24240391", "MIS_025_RescuedSurvivors", "box_ContextualActionListener_260.Interrupt", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_260_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_231();
    l0 = self.box_ContextualActionListener_260;
    l1 = self.box_Delay_v5_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1719069377", "1719069377", "MIS_025_RescuedSurvivors", "box_ContextualActionListener_260.Start", "box_Delay_v5_231.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsPawnAlive_v3_167_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_92();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1042430691", "1042430691", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_167.Alive", "box_SetEntity_v2_92.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_167_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2096923883", "2096923883", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_167.DeadOrDown", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsPawnAlive_v3_167_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1142183971", "1142183971", "MIS_025_RescuedSurvivors", "box_IsPawnAlive_v3_167.NotLoaded", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_173_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1161428437", "1161428437", "MIS_025_RescuedSurvivors", "box_SetContextualStrategy_173.Out", "box_UseContextualActionModifier_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_231_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_75();
    l0 = self.box_Delay_v5_231;
    l1 = self.box_SoundModifier_v2_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1849420000", "1849420000", "MIS_025_RescuedSurvivors", "box_Delay_v5_231.TimeElapsed", "box_SoundModifier_v2_75.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_299_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_299_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|607168665", "607168665", "MIS_025_RescuedSurvivors", "box_SetEntity_v2_299.Out", "box_MultipleOR_232.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_99();
    l0 = self.box_MultipleOR_198;
    l1 = self.box_PositionModifier_v2_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1476040309", "1476040309", "MIS_025_RescuedSurvivors", "box_MultipleOR_198.Out", "box_PositionModifier_v2_99.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_87_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_87;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1364602240", "1364602240", "MIS_025_RescuedSurvivors", "box_StaticBreakableListener_87.OnBreak", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_179_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_228();
    l0 = self.box_OnceOnly_v3_179;
    l1 = self.box_ContextualActionListener_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|504362386", "504362386", "MIS_025_RescuedSurvivors", "box_OnceOnly_v3_179.Out", "box_ContextualActionListener_228.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_146_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_275();
    l0 = self.box_Delay_v5_146;
    l1 = self.box_Gate_v3_275;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|739122489", "739122489", "MIS_025_RescuedSurvivors", "box_Delay_v5_146.Stopped", "box_Gate_v3_275.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_146_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_Delay_v5_146;
    l1 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1194924640", "1194924640", "MIS_025_RescuedSurvivors", "box_Delay_v5_146.TimeElapsed", "box_PlayDialog_v6_20.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1471206608", "1471206608", "MIS_025_RescuedSurvivors", "box_MultipleOR_52.Out", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_214_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_214_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|704614710", "704614710", "MIS_025_RescuedSurvivors", "box_SetBoolean_v2_214.Out", "box_Delay_v5_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_213();
    l0 = self.box_MultipleOR_86;
    l1 = self.box_PlayDialog_v6_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1364783371", "1364783371", "MIS_025_RescuedSurvivors", "box_MultipleOR_86.Out", "box_PlayDialog_v6_213.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_160();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_Gate_v3_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1046002841", "1046002841", "MIS_025_RescuedSurvivors", "box_MultipleOR_98.Out", "box_Gate_v3_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_286_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_286;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1720273923", "1720273923", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_286.Finished", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_286_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_286;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|869399593", "869399593", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_286.FinishedInterrupted", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_286_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_286;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2065916751", "2065916751", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_286.StartedPriorityFailed", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Hostage_Setup_v2_141_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_67();
    l0 = self.box_Brick_Hostage_Setup_v2_141;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1892595303", "1892595303", "MIS_025_RescuedSurvivors", "box_Brick_Hostage_Setup_v2_141.HostageReleased", "box_UseContextualActionModifier_v3_67.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_255_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_255;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1130574751", "1130574751", "MIS_025_RescuedSurvivors", "box_MultipleOR_255.Out", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_100_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|811062620", "811062620", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_100.A_is_False", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_100_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_167();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1585331005", "1585331005", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_100.A_is_True", "box_IsPawnAlive_v3_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_274();
    l0 = self.box_MultipleOR_118;
    l1 = self.box_PlayDialog_v6_274;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|155532230", "155532230", "MIS_025_RescuedSurvivors", "box_MultipleOR_118.Out", "box_PlayDialog_v6_274.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_93_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_152();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|635890176", "635890176", "MIS_025_RescuedSurvivors", "box_IsEntityLoaded_v3_93.False", "box_UseContextualActionModifier_v3_152.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_295_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_295;
    l1 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1509611976", "1509611976", "MIS_025_RescuedSurvivors", "box_MultipleOR_295.Out", "box_MultipleOR_186.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_282_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_73();
    l0 = self.box_MultipleOR_282;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1529684281", "1529684281", "MIS_025_RescuedSurvivors", "box_MultipleOR_282.Out", "box_Compare_Boolean_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_247_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_212();
    l0 = self.box_MultipleOR_247;
    l1 = self.box_Delay_v5_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1153435063", "1153435063", "MIS_025_RescuedSurvivors", "box_MultipleOR_247.Out", "box_Delay_v5_212.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_54_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_161();
    l0 = self.box_PlayDialog_v6_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|154983319", "154983319", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_54.A_is_True", "box_PlayDialog_v6_161.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_65_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_254();
    l0 = self.box_PlayDialog_v6_254;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|39521834", "39521834", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_65.A_is_True", "box_PlayDialog_v6_254.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_238();
    l0 = self.box_MultipleOR_105;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1666518040", "1666518040", "MIS_025_RescuedSurvivors", "box_MultipleOR_105.Out", "box_Compare_Boolean_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_82();
    l0 = self.box_Delay_v5_33;
    l1 = self.box_PlayDialog_v6_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1728467892", "1728467892", "MIS_025_RescuedSurvivors", "box_Delay_v5_33.TimeElapsed", "box_PlayDialog_v6_82.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_113_Paused()
    local l0, l1;
    l0 = self.box_Delay_v5_113;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|299521821", "299521821", "MIS_025_RescuedSurvivors", "box_Delay_v5_113.Paused", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_113_Resumed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_287();
    l0 = self.box_Delay_v5_113;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|538070152", "538070152", "MIS_025_RescuedSurvivors", "box_Delay_v5_113.Resumed", "box_SetBoolean_v2_287.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_113_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_113;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|469495016", "469495016", "MIS_025_RescuedSurvivors", "box_Delay_v5_113.Stopped", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_113_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_273();
    l0 = self.box_Delay_v5_113;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|735745775", "735745775", "MIS_025_RescuedSurvivors", "box_Delay_v5_113.TimeElapsed", "box_Compare_Boolean_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_278_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_278;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|186182052", "186182052", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_278.Finished", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_278_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_278;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|24348399", "24348399", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_278.FinishedInterrupted", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_111_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_111;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1376207652", "1376207652", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_111.Finished", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_111_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_111;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1007782186", "1007782186", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_111.FinishedInterrupted", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_111_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_111;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1221214286", "1221214286", "MIS_025_RescuedSurvivors", "box_PlayDialog_v6_111.StartedPriorityFailed", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Boolean_41_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_282;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1376865358", "1376865358", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_41.A_is_False", "box_MultipleOR_282.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_41_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_80();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1086837706", "1086837706", "MIS_025_RescuedSurvivors", "box_Compare_Boolean_41.A_is_True", "box_IsPawnAlive_v3_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_220_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_137();
    l0 = self.box_MultipleOR_220;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1209762855", "1209762855", "MIS_025_RescuedSurvivors", "box_MultipleOR_220.Out", "box_Compare_Boolean_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_158();
    l0 = self.box_Delay_v5_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1919858577", "1919858577", "MIS_025_RescuedSurvivors", "box_Simple_Node_107.Out", "box_Delay_v5_158.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_266_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_58();
    l0 = self.box_EntityStatusListener_266;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1340477269", "1340477269", "MIS_025_RescuedSurvivors", "box_EntityStatusListener_266.Loaded", "box_StaticBreakableBreaker_58.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_293_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|842327482", "842327482", "MIS_025_RescuedSurvivors", "box_UseContextualActionModifier_v3_293.Enabled", "box_SpawnAI_5.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_MultipleOR_12;
    l1 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1635217648", "1635217648", "MIS_025_RescuedSurvivors", "box_MultipleOR_12.Out", "box_PlayDialog_v6_36.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_207();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1663223756", "1663223756", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_95.Out", "box_UseContextualActionModifier_v3_207.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_259();
    l0 = self.box_VisibilityModifier_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|254444125", "254444125", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_95.Out", "box_VisibilityModifier_259.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_95_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1048510677", "1048510677", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_95.Out", "box_MultipleOR_230.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_95_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|276228864", "276228864", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_95.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_95_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_223();
    l0 = self.box_SoundModifier_v2_223;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1131517967", "1131517967", "MIS_025_RescuedSurvivors", "box_OutputOrder_v2_95.Out", "box_SoundModifier_v2_223.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_212_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Delay_v5_212;
    l1 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|422933517", "422933517", "MIS_025_RescuedSurvivors", "box_Delay_v5_212.TimeElapsed", "box_Gate_v3_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_140_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_140;
    l1 = self.box_MultipleOR_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|732971979", "732971979", "MIS_025_RescuedSurvivors", "box_Delay_v5_140.TimeElapsed", "box_MultipleOR_204.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|@start_filler_diag");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_188_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|@stop_filler_diag");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_187_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2618432");
    l0:SetConnections({
    });
    params = {
        -- Pickup,
        [0] = "2109332754373035448",
    };
    return params;
end;

function export:OnEnter_box_Switch_2()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_8()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|19492461");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_298_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2109276229145209418",
        -- pawns,
        [2] = "2109276229145209418",
        -- value,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|20752088");
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

function export:OnEnter_box_OutputOrder_v2_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|23077495");
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
                [0] = self.f_box_OutputOrder_v2_289_Out_0,
                [1] = self.f_box_OutputOrder_v2_289_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|27383418");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_121_Out,
    });
    params = {
        -- Max,
        [0] = 20,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|68871960");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_131_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_Hostage_2_Resqued",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_243()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_64()
    local params;
    params = {
        -- Group,
        [0] = self.surv_fem_01_diag,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1796401304",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|90356267");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_207_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109595220397011928",
        -- Entity,
        [2] = "2109524328650382067",
    };
    return params;
end;

function export:OnEnter_box_Switch_116()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|107552177");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_162_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2109524328650382067",
        -- pawns,
        [2] = "2109595153860670305",
        -- value,
        [3] = 200,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|107891555");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_103_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109277034099270245",
        -- Group,
        [1] = "#8CB91E5A",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_158()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|127888442");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_217_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109371616830965519",
        -- Entity,
        [2] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_70()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_135()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_112()
    local params;
    params = {
        -- Group,
        [0] = "2109595146950554432",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1658734272",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|154516526");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "MIS_025_Hostage_3_Killed",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_209()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109402791874173381",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|164618034");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_152_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_152_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109320637857203734",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_267()
    local params;
    params = {
        -- Pawns,
        [0] = "2109580581628036118",
        -- SoundId,
        [1] = "3006606309",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_251()
    local params;
    params = {
        -- Group,
        [0] = "2109276229145209418",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2524938034",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|183439137");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_192_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_168()
    local params;
    params = {
        -- Group,
        [0] = self.surv_fem_01_diag,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4277950779",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_270()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "140980763",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_235()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109260716308440867",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "2109276229145209418",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_17()
    local params;
    params = {
        -- Entity,
        [0] = "2109416498165475643",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    params = {
        -- Group,
        [0] = "2109595146950554432",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "969293350",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_161()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3819876598",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|250349038");
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
                [1] = self.f_box_OutputOrder_v2_290_Out_1,
                [2] = self.f_box_OutputOrder_v2_290_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|250563745");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "MIS_025_Hostage_2_Killed",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_279()
    local params;
    params = {
        -- Group,
        [0] = "2109246691807866063",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1413882598",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|268736440");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_250_A_is_True,
    });
    params = {
        -- A,
        [0] = self.s_f_01_2_rescued,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|294448419");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "MIS_025_Hostage_1_Killed",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_120()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|315751691");
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

function export:OnEnter_box_SetEntity_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|361526063");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_149_Out,
    });
    params = {
        -- Entity,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|372134424");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_75()
    local params;
    params = {
        -- Pawns,
        [0] = "2109524328650382067",
        -- SoundId,
        [1] = "1769448110",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_157()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_249()
    local params;
    params = {
        -- Pawns,
        [0] = "2109595146950554432",
        -- SoundId,
        [1] = "2540743507",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_47()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109246691801574599",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|422477640");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_90_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_Hostage_1_Killed",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_30()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_254()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2742535540",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_153()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_7()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_5()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109276229136820802",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_222()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_57()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#AD73AA75",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_164()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3188283716",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_82()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4231408048",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_126()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_284()
    local params;
    params = {
        -- Group,
        [0] = "2109595153860670305",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "304921197",
    };
    return params;
end;

function export:OnEnter_box_SpawnParticle_v6_119()
    local params;
    params = {
        -- BoneName,
        [0] = "RightHand",
        -- Offset_X,
        [2] = 0.27,
        -- Offset_Y,
        [3] = -0.023,
        -- Offset_Z,
        [4] = 0.08,
        -- ParticleName,
        [5] = "newparticles/9015349413649353.part",
        -- Pawns,
        [6] = "2109524328650382067",
        -- Rotate,
        [7] = "0,90,90",
        -- TagName,
        [8] = "DominoGenerated",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|500929606");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109745362559313258",
        -- Group,
        [1] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_205()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player,
        -- id2,
        [3] = "2109246691807866063",
        -- nearZone,
        [4] = 16,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_226()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|516327067");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_137_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_136()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|562011000");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_114_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620982647",
        -- Fact,
        [1] = "MIS_025_B20_Hostage_3_Killed",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|578774900");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_16_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109401423310499514",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_160()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3565905873",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_60()
    local params;
    params = {
        -- Hostage,
        [0] = "2109276113810237737",
        -- STP_Tied,
        [1] = "2109320637857203734",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = "2109524328650382067",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2754573183",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_025_B20_Started",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|631880258");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_23_Out,
    });
    params = {
        -- Fact,
        [0] = "MIS_025_Hostage_2_Resqued",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_233()
    local params;
    params = {
        -- Group,
        [0] = "2109246691807866063",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1116358443",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|640402162");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_71_Out,
    });
    params = {
        -- Entity,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_170()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2517553809",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_129()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109320160444706239",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_275()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_88()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109595146946360122",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|677871773");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_264_False,
    });
    params = {
        -- entityId,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|687975512");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_56_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109595189243818925",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_210()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3477374261",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_106()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "21290482",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_142()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#AD73AA75",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 11,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_147()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109596477245392702",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_61()
    local params;
    params = {
        -- Group,
        [0] = "2109595146950554432",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2162850986",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|708071698");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_39_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_39_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015350620982647",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_239()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_297()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015221917595682",
        -- players,
        [2] = "2109276229145209418",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|732455352");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_211_A_is_True,
    });
    params = {
        -- A,
        [0] = self.s_m_01_1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|742060867");
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
                [0] = self.f_box_OutputOrder_v2_143_Out_0,
                [1] = self.f_box_OutputOrder_v2_143_Out_1,
                [2] = self.f_box_OutputOrder_v2_143_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_11()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|743153266");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_271_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_271_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109595220397011928",
        -- Entity,
        [2] = "2109524328650382067",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|743680977");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
                [3] = self.f_box_OutputOrder_v2_76_Out_3,
                [4] = self.f_box_OutputOrder_v2_76_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_244()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|763605168");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_273_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_166()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109524328650382067",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_81()
    local params;
    params = {
        -- Group,
        [0] = "2109320160450997703",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1179635832",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_91()
    local params;
    params = {
        -- Group,
        [0] = self.surv_fem_01_diag,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "189204294",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|782087659");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_94_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_94_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109595000181366768",
        -- Entity,
        [2] = "2109524328650382067",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|783463970");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_73_A_is_True,
    });
    params = {
        -- A,
        [0] = self.s_f_01_2_rescued,
    };
    return params;
end;

function export:OnEnter_box_Switch_117()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_197()
    local params;
    params = {
        -- Group,
        [0] = "2109246691807866063",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4226503674",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_189()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3885491255",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4278316856",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_62()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3475688486",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|910759824");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_195_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620982647",
        -- Fact,
        [1] = "MIS_025_B20_Hostage_3_Resqued",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|930120146");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_151_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|952905319");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_208_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_305");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|968477621");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_305_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_Hostage_2_Killed",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_49()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3639537862",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|982564795");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_155_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109596565260765049",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_177()
    local params;
    params = {
        -- Group,
        [0] = "2109595153860670305",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1982794469",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_228()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109595000181366768",
        -- UserFilter,
        [2] = "2109524328650382067",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109276229136820802",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1014720653");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_256_A_is_True,
    });
    params = {
        -- A,
        [0] = self.s_f_01_3,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1022276089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_242_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109321115353583775",
        -- Group,
        [1] = "#6508D949",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_42()
    local params;
    params = {
        -- Group,
        [0] = "2109595153860670305",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2483468739",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1040819845");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_229_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_229_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_ArmoryDoor_Opened",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1045114362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_19_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109277034099270245",
        -- Group,
        [1] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1045443927");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_124_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_124_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015350620982647",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_163()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_221()
    local params;
    params = {
        -- Group,
        [0] = "2109524328650382067",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2003996564",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1082500191");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_180_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1083812910");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_58_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2109524581128608894",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_99()
    local params;
    params = {
        -- blendTime,
        [1] = 2.5,
        -- endTarget,
        [4] = "2109581954646025723",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109580581628036118",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 17,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_104()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109596492850300739",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_294()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#AD73AA75",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1149203107");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_280_False,
    });
    params = {
        -- entityId,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1157093544");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_224_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2109595153860670305",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_269()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2109276229145209418",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1184033743");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_203_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1186332564");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_238_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1194791230");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_150_Out,
    });
    params = {
        -- Fact,
        [0] = "MIS_025_ArmoryDoor_Opened",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_174()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1228420747");
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
                [0] = self.f_box_OutputOrder_v2_218_Out_0,
                [1] = self.f_box_OutputOrder_v2_218_Out_1,
                [2] = self.f_box_OutputOrder_v2_218_Out_2,
                [3] = self.f_box_OutputOrder_v2_218_Out_3,
                [4] = self.f_box_OutputOrder_v2_218_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_194()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_223()
    local params;
    params = {
        -- Pawns,
        [0] = "2109524328650382067",
        -- SoundId,
        [1] = "2540743507",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1236940107");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_92_Out,
    });
    params = {
        -- Entity,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_283()
    local params;
    params = {
        -- Group,
        [0] = "2109524328650382067",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3720403565",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = "2109524328650382067",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1669233782",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_288()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_15()
    local params;
    params = {
        -- Hostage,
        [0] = "2109595153860670305",
        -- STP_Tied,
        [1] = "2109595162381398921",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_184()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_272()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1306403088");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_292_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_303()
    local params;
    params = {
        -- Group,
        [0] = "2109276229145209418",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3424765392",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1311486780");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_55_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109596620973705083",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_261()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109651372476481493",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "2109320160450997703",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1319182543");
    l0:SetConnections({
    });
    params = {
        -- Pickup,
        [0] = "2109332754373035448",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_172()
    local params;
    params = {
        -- Pawns,
        [0] = "2109595153860670305",
        -- SoundId,
        [1] = "4226779435",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_215()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#AD73AA75",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 18,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1362213620");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_128_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_63()
    local params;
    params = {
        -- Pawns,
        [0] = "2109595146950554432",
        -- SoundId,
        [1] = "4226779435",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_51()
    local params;
    params = {
        -- EntityA,
        [1] = "2109595146950554432",
        -- EntityB,
        [2] = "2109596565260765049",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_240()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109596498376296261",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1396064210");
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
                [0] = self.f_box_OutputOrder_v2_253_Out_0,
                [1] = self.f_box_OutputOrder_v2_253_Out_1,
                [2] = self.f_box_OutputOrder_v2_253_Out_2,
                [3] = self.f_box_OutputOrder_v2_253_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1399228667");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_268_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1407725622");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_300_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 3,
        -- origin,
        [1] = "2109524328650382067",
        -- pawns,
        [2] = "2109595146950554432",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3012177498",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_169()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109524581128608894",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_196()
    local params;
    params = {
        -- Group,
        [0] = "2109595153860670305",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1543912875",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_274()
    local params;
    params = {
        -- Group,
        [0] = "2109595153860670305",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2842286878",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_44()
    local params;
    params = {
        -- EntityA,
        [1] = "2109595153860670305",
        -- EntityB,
        [2] = "2109596620973705083",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1481250740");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_67_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_67_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109371616830965519",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_287()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1482181759");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_287_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1497249150");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_245_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109596205207026851",
        -- Entity,
        [2] = "2109524328650382067",
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_130()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015349316320950",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_22()
    local params;
    params = {
        -- Entity,
        [0] = "2109582088559666735",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_191()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3456318083",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_227()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1547069208");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_252_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1548106218");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_159_Out,
    });
    params = {
        -- Fact,
        [0] = "MIS_025_Hostage_1_Resqued",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1555382657");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_80_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_80_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_80_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_285()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2109246691807866063",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_79()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "629282281",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_259()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109596506628589386",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_219()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109371616830965520",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "2109276229145209418",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1639603329");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "MIS_025_Hostage_2_Killed",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1653287656");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_263_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109277034099270245",
        -- Group,
        [1] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1662620685");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109321115353583775",
        -- Group,
        [1] = "2109320160450997703",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1664179052");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
                [2] = self.f_box_OutputOrder_v2_127_Out_2,
                [3] = self.f_box_OutputOrder_v2_127_Out_3,
                [4] = self.f_box_OutputOrder_v2_127_Out_4,
                [5] = self.f_box_OutputOrder_v2_127_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_74()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3464249360",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1683641889");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_59_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1692429040");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_281_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1701013602");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_132_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_202()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_77()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_154()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109524328644090603",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_122()
    local params;
    params = {
        -- Pawns,
        [0] = "2109524328650382067",
        -- SoundId,
        [1] = "1769448110",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1735021566");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_29_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109595189243818925",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1736351381");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_6_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_Hostage_3_Killed",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_125()
    local params;
    params = {
        -- Hostage,
        [0] = "2109320160450997703",
        -- STP_Tied,
        [1] = "2109371616830965519",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_193()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109276113776683268",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_165()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109320160444706239",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1760223265");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_84_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109595153856475995",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_36()
    local params;
    params = {
        -- Group,
        [0] = "2109595153860670305",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3179916183",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_50()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109371616830965520",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_213()
    local params;
    params = {
        -- Group,
        [0] = "2109595146950554432",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1338943204",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "2109246691807866063",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1786888968");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_144_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_Hostage_1_Resqued",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_133()
    local params;
    params = {
        -- Group,
        [0] = "2109595146950554432",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "532187056",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_123()
    local params;
    params = {
        -- Group,
        [0] = "2109595153860670305",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1525933857",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_260()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109595220397011928",
        -- UserFilter,
        [2] = "2109524328650382067",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1871114283");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_167_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_167_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_167_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1872534653");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "MIS_025_Hostage_1_Killed",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1875513193");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_173_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109321115353583775",
        -- Group,
        [1] = "2109595146950554432",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_231()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_299");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1888507541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_299_Out,
    });
    params = {
        -- Entity,
        [0] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_87()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109524581128608894",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_146()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1928640608");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_214_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_286()
    local params;
    params = {
        -- Group,
        [0] = "2109595146950554432",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2689922623",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_141()
    local params;
    params = {
        -- Hostage,
        [0] = "2109320160450997703",
        -- STP_Tied,
        [1] = "2109371616830965519",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1952697827");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_100_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_100_A_is_True,
    });
    params = {
        -- A,
        [0] = self.s_f_01_1_rescued,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1978520156");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_93_False,
    });
    params = {
        -- entityId,
        [0] = "2109276113810237737",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|1996291705");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_54_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2018276848");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_65_A_is_True,
    });
    params = {
        -- A,
        [0] = self.filler_diag,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_113()
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

function export:OnEnter_box_PlayDialog_v6_278()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "922706731",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_111()
    local params;
    params = {
        -- Group,
        [0] = "2109595153860670305",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3616636081",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2077398149");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_41_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_41_A_is_True,
    });
    params = {
        -- A,
        [0] = self.s_f_01_1_rescued,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2093195060");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
    });
    params = {
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
        [2] = "2109524581128608894",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2120279299");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_293_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109401423310499514",
        -- Entity,
        [2] = "2109276229145209418",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_RescuedSurvivors|2130285309");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
                [2] = self.f_box_OutputOrder_v2_95_Out_2,
                [3] = self.f_box_OutputOrder_v2_95_Out_3,
                [4] = self.f_box_OutputOrder_v2_95_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_212()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_216()
    local params;
    params = {
        -- Group,
        [0] = self.surv_fem_01_diag,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2094061227",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_140()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_121_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_113;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_149_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.surv_fem_01_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.s_f_01_2_rescued = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.surv_fem_01_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_151_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.s_f_01_1_rescued = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.surv_fem_01_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_292_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_287_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.filler_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_252_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.filler_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_84_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.s_m_01_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_299_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.surv_fem_01_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_214_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.s_f_01_3 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="ArmoryDoorManager" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_Diags_B20_Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SpawnRescuedSurvivorsOnReload" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SurvivorsStartSetup" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
