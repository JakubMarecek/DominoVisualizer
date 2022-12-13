LUACo -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/d3/d3_outpost_01.domino
-- User graph: D3_Outpost_01_Hard
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/D3/D3_Outpost_01.D3_Outpost_01_Hard.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "In_CultLocation_Cleanup",
            },
            [2] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "CallReinforcement_Wave1",
                delayed = true,
            },
            [1] = {
                name = "CallReinforcement_Wave2",
                delayed = true,
            },
            [2] = {
                name = "CultLocationCompleted_HostilityElimination",
                delayed = false,
            },
            [3] = {
                name = "CustomScript",
                delayed = false,
            },
            [4] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "alarm_in_setup",
                type = "bool",
            },
            [1] = {
                name = "Alarm01",
                type = "group",
            },
            [2] = {
                name = "Alarm02",
                type = "group",
            },
            [3] = {
                name = "Alarm03",
                type = "group",
            },
            [4] = {
                name = "b2waves",
                type = "bool",
            },
            [5] = {
                name = "bUseFadeInAtEnd",
                type = "bool",
            },
            [6] = {
                name = "CS_CINEMA_Outpost_Animals",
                type = "entity",
            },
            [7] = {
                name = "CultLoc_Music_Type",
                type = "Sound",
            },
            [8] = {
                name = "CultLocationNPC_Group",
                type = "group",
            },
            [9] = {
                name = "eSceneEntity",
                type = "entity",
            },
            [10] = {
                name = "eSequenceTeleport",
                type = "entity",
            },
            [11] = {
                name = "eSequenceTeleportClient",
                type = "entity",
            },
            [12] = {
                name = "RadioEntity",
                type = "entity",
            },
            [13] = {
                name = "SafeHouseEntity",
                type = "entity",
            },
            [14] = {
                name = "sSequenceFile",
                type = "sequence",
            },
            [15] = {
                name = "VehicleCleanupTrigger",
                type = "entity",
            },
        },
        dataInCount = 16,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CallReinforcement",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ReinforcementCalled",
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ReinforcementPos01",
                type = "entity",
            },
            [1] = {
                name = "ReinforcementPos02",
                type = "entity",
            },
            [2] = {
                name = "ReinforcementPos03",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ReinforcementsPositionInfo",
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
                name = "Direction",
                type = "string",
            },
            [1] = {
                name = "Type",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "D3_Outpost_01_Hard";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard";
    self.Out = DummyFunction;
    self.Fflametimer = 0;
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|76477133");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|312796030");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|335629577");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_EntityStatusListener_35 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|344312621");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_35_Loaded,
    });
    self.box_VehicleListener_v3_36 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|369718444");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_36_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_36_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_36_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_36_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_36_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_36_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_36_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_36_OnStandUp,
    });
    self.box_StateListener_v2_44 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|413781393");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_44_StateStart,
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|846396472");
    l0:SetConnections({
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|865948413");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_9 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|912609483");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1072382580");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled,
    });
    self.box_UniversalInteractionListener_26 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1109986061");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_26_Interacted,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1568280394");
    l0:SetConnections({
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1868170865");
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
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1950517634");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1996229542");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_31_CallReinforcement_Wave1,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_31_CustomScript,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|2014678312");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_31();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|381189587", "381189587", "D3_Outpost_01_Hard", "In", "box_Brick_Outpost_Gameplay_Main_v2_31.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_31();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1580367642", "1580367642", "D3_Outpost_01_Hard", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_31.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_44();
    l0 = self.box_StateListener_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1462855086", "1462855086", "D3_Outpost_01_Hard", "box_Simple_Node_45.Out", "box_StateListener_v2_44.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1483773906", "1483773906", "D3_Outpost_01_Hard", "box_Simple_Node_40.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_35();
    l0 = self.box_EntityStatusListener_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1641237874", "1641237874", "D3_Outpost_01_Hard", "box_Simple_Node_41.Out", "box_EntityStatusListener_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_26();
    l0 = self.box_UniversalInteractionListener_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|2129216922", "2129216922", "D3_Outpost_01_Hard", "box_Simple_Node_39.Out", "box_UniversalInteractionListener_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_6_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|597170908", "597170908", "D3_Outpost_01_Hard", "box_RandomFloat_v2_6.Out", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = self.box_Delay_v5_2;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1943632728", "1943632728", "D3_Outpost_01_Hard", "box_Delay_v5_2.TimeElapsed", "box_ParticleSystem_v3_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1986457368", "1986457368", "D3_Outpost_01_Hard", "box_SetContextualStrategy_32.Out", "box_UseContextualActionModifier_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|242346926", "242346926", "D3_Outpost_01_Hard", "box_SetContextualStrategy_22.Out", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_18();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|305014603", "305014603", "D3_Outpost_01_Hard", "box_Delay_v5_20.TimeElapsed", "box_ParticleSystem_v3_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_17();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|254621477", "254621477", "D3_Outpost_01_Hard", "box_Delay_v5_21.TimeElapsed", "box_ParticleSystem_v3_17.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_35_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_36();
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_VehicleListener_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|425287399", "425287399", "D3_Outpost_01_Hard", "box_EntityStatusListener_35.Loaded", "box_VehicleListener_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_17_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_14();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|589400305", "589400305", "D3_Outpost_01_Hard", "box_ParticleSystem_v3_17.Started", "box_StimsEmitter_v2_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_17_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_14();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1397736891", "1397736891", "D3_Outpost_01_Hard", "box_ParticleSystem_v3_17.Stopped", "box_StimsEmitter_v2_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_36_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_37();
    l0 = self.box_VehicleListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|535986842", "535986842", "D3_Outpost_01_Hard", "box_VehicleListener_v3_36.OnSit", "box_RemoveFromGroup_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_44_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_43();
    l0 = self.box_StateListener_v2_44;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|614916799", "614916799", "D3_Outpost_01_Hard", "box_StateListener_v2_44.StateStart", "box_GroupAddToGroup_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_8_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_7();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1968636770", "1968636770", "D3_Outpost_01_Hard", "box_ParticleSystem_v3_8.Started", "box_StimsEmitter_v2_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_8_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_7();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1393631511", "1393631511", "D3_Outpost_01_Hard", "box_ParticleSystem_v3_8.Stopped", "box_StimsEmitter_v2_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_13_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|843110479", "843110479", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_13.Disabled", "box_StimsEmitter_v2_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_13_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|376544737", "376544737", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_13.Enabled", "box_StimsEmitter_v2_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_23();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1567654869", "1567654869", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_14.Disabled", "box_StimsEmitter_v2_23.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_23();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1936917748", "1936917748", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_14.Enabled", "box_StimsEmitter_v2_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_17();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1536215268", "1536215268", "D3_Outpost_01_Hard", "box_Delay_v5_11.TimeElapsed", "box_ParticleSystem_v3_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_23_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|290826232", "290826232", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_23.Disabled", "box_ParticleSystem_v3_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|115662144", "115662144", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_23.Enabled", "box_Delay_v5_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1208867740", "1208867740", "D3_Outpost_01_Hard", "box_Brick_Outpost_Reinforcements_1.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|874399066", "874399066", "D3_Outpost_01_Hard", "box_OutputOrder_v2_34.Out", "box_UseContextualActionModifier_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_8();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1902172208", "1902172208", "D3_Outpost_01_Hard", "box_OutputOrder_v2_34.Out", "box_ParticleSystem_v3_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_26_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_8();
    l0 = self.box_UniversalInteractionListener_26;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1077168246", "1077168246", "D3_Outpost_01_Hard", "box_UniversalInteractionListener_26.Interacted", "box_ParticleSystem_v3_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_18_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_15();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|336576048", "336576048", "D3_Outpost_01_Hard", "box_ParticleSystem_v3_18.Started", "box_StimsEmitter_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_18_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_15();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1034102796", "1034102796", "D3_Outpost_01_Hard", "box_ParticleSystem_v3_18.Stopped", "box_StimsEmitter_v2_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1711554514", "1711554514", "D3_Outpost_01_Hard", "box_OutputOrder_v2_19.Out", "box_SpawnAI_30.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1093970891", "1093970891", "D3_Outpost_01_Hard", "box_OutputOrder_v2_19.Out", "box_Simple_Node_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1586676491", "1586676491", "D3_Outpost_01_Hard", "box_OutputOrder_v2_19.Out", "box_Simple_Node_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1975856629", "1975856629", "D3_Outpost_01_Hard", "box_OutputOrder_v2_19.Out", "box_Simple_Node_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|2127921767", "2127921767", "D3_Outpost_01_Hard", "box_OutputOrder_v2_19.Out", "box_Simple_Node_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_12();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1445899091", "1445899091", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_25.Disabled", "box_StimsEmitter_v2_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_25_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_12();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1874000933", "1874000933", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_25.Enabled", "box_StimsEmitter_v2_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_5_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|2110040988", "2110040988", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_5.Disabled", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StimsEmitter_v2_5_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1362625650", "1362625650", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_5.Enabled", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StimsEmitter_v2_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_9();
    l0 = self.box_UniversalInteractionModifier_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|904001855", "904001855", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_12.Disabled", "box_UniversalInteractionModifier_v2_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1308912768", "1308912768", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_12.Enabled", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StimsEmitter_v2_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_18();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1974103100", "1974103100", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_24.Disabled", "box_ParticleSystem_v3_18.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_24_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1193053621", "1193053621", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_24.Enabled", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_28();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|407079889", "407079889", "D3_Outpost_01_Hard", "box_OutputOrder_v2_42.Out", "box_StaticBreakableBreaker_28.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|949217834", "949217834", "D3_Outpost_01_Hard", "box_OutputOrder_v2_42.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_13();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|65532328", "65532328", "D3_Outpost_01_Hard", "box_ParticleSystem_v3_4.Started", "box_StimsEmitter_v2_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_13();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1621917697", "1621917697", "D3_Outpost_01_Hard", "box_ParticleSystem_v3_4.Stopped", "box_StimsEmitter_v2_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_6();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1331682337", "1331682337", "D3_Outpost_01_Hard", "box_MultipleOR_10.Out", "box_RandomFloat_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_22();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|900310066", "900310066", "D3_Outpost_01_Hard", "box_UseContextualActionModifier_v3_27.Enabled", "box_SetContextualStrategy_22.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_29_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|198586958", "198586958", "D3_Outpost_01_Hard", "box_UseContextualActionModifier_v3_29.Disabled", "box_UseContextualActionModifier_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_29_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|516439409", "516439409", "D3_Outpost_01_Hard", "box_UseContextualActionModifier_v3_29.Enabled", "box_UseContextualActionModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_32();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|860346754", "860346754", "D3_Outpost_01_Hard", "box_Delay_v5_16.TimeElapsed", "box_SetContextualStrategy_32.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_31_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_1();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_31;
    l1 = self.box_Brick_Outpost_Reinforcements_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|841802782", "841802782", "D3_Outpost_01_Hard", "box_Brick_Outpost_Gameplay_Main_v2_31.CallReinforcement_Wave1", "box_Brick_Outpost_Reinforcements_1.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_31_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1992114346", "1992114346", "D3_Outpost_01_Hard", "box_Brick_Outpost_Gameplay_Main_v2_31.CustomScript", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|761267133", "761267133", "D3_Outpost_01_Hard", "box_Delay_v5_33.TimeElapsed", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_7_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_25();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|882841514", "882841514", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_7.Disabled", "box_StimsEmitter_v2_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_7_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_25();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1411300870", "1411300870", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_7.Enabled", "box_StimsEmitter_v2_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_5();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|436101709", "436101709", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_15.Disabled", "box_StimsEmitter_v2_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_5();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|2057622043", "2057622043", "D3_Outpost_01_Hard", "box_StimsEmitter_v2_15.Enabled", "box_StimsEmitter_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|@ADD_GROUP_COMBAT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|@ChimneySetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|@Parachute");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|@TrapSetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|19614085");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_6_Out,
    });
    params = {
        -- Max,
        [0] = 21,
        -- Min,
        [1] = 11,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.6,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|149667499");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_32_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106993444040754299",
        -- Group,
        [1] = "#439285AE",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|178101075");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_22_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108983686950036470",
        -- Group,
        [1] = "#439285AE",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
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

function export:OnEnter_box_EntityStatusListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109219493327670643",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|349687201");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_17_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_17_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108209714029404687",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|350516749");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#439285AE",
        -- ToGroup,
        [1] = "#29AD5629",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_36()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#439285AE",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2109219493327670643",
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#439285AE",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|428101842");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_8_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_8_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108211527973616481",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|654932633");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_13_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_13_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211607287905140",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|834813497");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_14_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_14_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211586710649712",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108238153591561706",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Fflametimer,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|899638618");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2108225574699802731",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_9()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108211407156689760",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|958411114");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_23_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_23_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211586708552556",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2106993467358987523",
        -- ReinforcementPos02,
        [1] = "2106993467365278988",
        -- ReinforcementPos03,
        [2] = "2109219493300407647",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1100487898");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2108211407156689760",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1113148785");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_18_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_18_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108209705833734667",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1132986116");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1233350534");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_25_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_25_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211542116809576",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1304693090");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_5_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_5_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211608049171328",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1349200911");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_12_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_12_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108226594851000286",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1351936131");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_24_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_24_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211607287905144",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3()
    local params;
    params = {
        -- Direction,
        [0] = "surrounding",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1784035608");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1832413546");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_4_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_4_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108209713234584077",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1898673282");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_27_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108983225832449991",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|1900941173");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_29_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_29_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108983217345275840",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 26,
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_31()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#3A344B19",
        -- Alarm02,
        [2] = "#A33D1AA3",
        -- b2waves,
        [4] = false,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2106993444042851459",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#439285AE",
        -- eSceneEntity,
        [9] = "2107836717898679062",
        -- eSequenceTeleport,
        [10] = "2108405245724868568",
        -- eSequenceTeleportClient,
        [11] = "2108405246312071130",
        -- RadioEntity,
        [12] = "2108737702640754273",
        -- SafeHouseEntity,
        [13] = "2106993343480218091",
        -- sSequenceFile,
        [14] = "Sequences/bowmore_main/celebration/d3/d3_outpost_01.seq",
        -- VehicleCleanupTrigger,
        [15] = "2109275017733757272",
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

function export:OnEnter_box_StimsEmitter_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|2085521367");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_7_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_7_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211540913044324",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|2143036396");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_15_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_15_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211608049171324",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Hard|2146620826");
    l0:SetConnections({
    });
    l0 = self.box_VehicleListener_v3_36;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(0),
        -- Group,
        [1] = "#439285AE",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.Fflametimer = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
