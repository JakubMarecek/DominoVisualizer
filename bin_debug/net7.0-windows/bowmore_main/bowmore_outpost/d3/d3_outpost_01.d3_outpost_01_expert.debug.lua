LUAC�W -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/d3/d3_outpost_01.domino
-- User graph: D3_Outpost_01_Expert
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/D3/D3_Outpost_01.D3_Outpost_01_Expert.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "D3_Outpost_01_Expert";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert";
    self.Out = DummyFunction;
    self.Fflametimer = 0;
    self.box_Outpost_Reinforcement_PhoneCall_Manager_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|38614045");
    l0:SetConnections({
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|130929435");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|409922636");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_Brick_Outpost_Reinforcements_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|458059015");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_2_ReinforcementCalled,
    });
    self.box_StateListener_v2_39 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|525086854");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_39_StateStart,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|527165147");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|603177188");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_Brick_Outpost_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|799034304");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|812054735");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|875875443");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_33_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Outpost_Gameplay_Main_v2_33_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_33_CustomScript,
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1181676880");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_31_Out,
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1214603706");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1519484506");
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
    self.box_UniversalInteractionModifier_v2_28 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1683273726");
    l0:SetConnections({
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1730487695");
    l0:SetConnections({
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1947685145");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_29 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|2080763435");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_29_Interacted,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_33();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|266883295", "266883295", "D3_Outpost_01_Expert", "In", "box_Brick_Outpost_Gameplay_Main_v2_33.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_33();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1646242171", "1646242171", "D3_Outpost_01_Expert", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_33.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_39();
    l0 = self.box_StateListener_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|568645189", "568645189", "D3_Outpost_01_Expert", "box_Simple_Node_42.Out", "box_StateListener_v2_39.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_25();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1715894959", "1715894959", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_14.Disabled", "box_StimsEmitter_v2_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_25();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|2019746360", "2019746360", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_14.Enabled", "box_StimsEmitter_v2_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_20();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1427909002", "1427909002", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_25.Disabled", "box_ParticleSystem_v3_20.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_25_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1937246023", "1937246023", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_25.Enabled", "box_Delay_v5_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1985143053", "1985143053", "D3_Outpost_01_Expert", "box_OutputOrder_v2_36.Out", "box_UseContextualActionModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|2051709092", "2051709092", "D3_Outpost_01_Expert", "box_OutputOrder_v2_36.Out", "box_ParticleSystem_v3_7.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|214774184", "214774184", "D3_Outpost_01_Expert", "box_SetContextualStrategy_21.Out", "box_Delay_v5_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_13();
    l0 = self.box_Delay_v5_26;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|663351037", "663351037", "D3_Outpost_01_Expert", "box_Delay_v5_26.TimeElapsed", "box_SetContextualStrategy_13.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_8_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|86868134", "86868134", "D3_Outpost_01_Expert", "box_RandomFloat_v2_8.Out", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StimsEmitter_v2_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1623551146", "1623551146", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_15.Disabled", "box_StimsEmitter_v2_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|980413783", "980413783", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_15.Enabled", "box_StimsEmitter_v2_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_5();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|565310294", "565310294", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_16.Disabled", "box_StimsEmitter_v2_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_5();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|832909068", "832909068", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_16.Enabled", "box_StimsEmitter_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_5_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|676278462", "676278462", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_5.Disabled", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StimsEmitter_v2_5_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1240804600", "1240804600", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_5.Enabled", "box_Delay_v5_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|549477617", "549477617", "D3_Outpost_01_Expert", "box_Delay_v5_35.TimeElapsed", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_27();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1217077806", "1217077806", "D3_Outpost_01_Expert", "box_OutputOrder_v2_38.Out", "box_StaticBreakableBreaker_27.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|865705915", "865705915", "D3_Outpost_01_Expert", "box_OutputOrder_v2_38.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Reinforcements_2_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_37();
    l0 = self.box_Brick_Outpost_Reinforcements_2;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1195585049", "1195585049", "D3_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_2.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_37.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_39_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_40();
    l0 = self.box_StateListener_v2_39;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|67745096", "67745096", "D3_Outpost_01_Expert", "box_StateListener_v2_39.StateStart", "box_GroupAddToGroup_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1935582091", "1935582091", "D3_Outpost_01_Expert", "box_Delay_v5_6.TimeElapsed", "box_ParticleSystem_v3_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_20_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_16();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|2126414092", "2126414092", "D3_Outpost_01_Expert", "box_ParticleSystem_v3_20.Started", "box_StimsEmitter_v2_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_20_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_16();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1672061152", "1672061152", "D3_Outpost_01_Expert", "box_ParticleSystem_v3_20.Stopped", "box_StimsEmitter_v2_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_20();
    l0 = self.box_Delay_v5_22;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1455514188", "1455514188", "D3_Outpost_01_Expert", "box_Delay_v5_22.TimeElapsed", "box_ParticleSystem_v3_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_14();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|913558792", "913558792", "D3_Outpost_01_Expert", "box_ParticleSystem_v3_4.Started", "box_StimsEmitter_v2_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_14();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1606935242", "1606935242", "D3_Outpost_01_Expert", "box_ParticleSystem_v3_4.Stopped", "box_StimsEmitter_v2_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_30_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_21();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|109300329", "109300329", "D3_Outpost_01_Expert", "box_UseContextualActionModifier_v3_30.Enabled", "box_SetContextualStrategy_21.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1416530475", "1416530475", "D3_Outpost_01_Expert", "box_OutputOrder_v2_18.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_29();
    l0 = self.box_UniversalInteractionListener_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|830024617", "830024617", "D3_Outpost_01_Expert", "box_OutputOrder_v2_18.Out", "box_UniversalInteractionListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1003899216", "1003899216", "D3_Outpost_01_Expert", "box_OutputOrder_v2_18.Out", "box_SpawnAI_31.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|562992030", "562992030", "D3_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_1.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|935612007", "935612007", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_24.Disabled", "box_ParticleSystem_v3_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_24_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|891039254", "891039254", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_24.Enabled", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = self.box_Delay_v5_10;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|951945331", "951945331", "D3_Outpost_01_Expert", "box_Delay_v5_10.TimeElapsed", "box_ParticleSystem_v3_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_12();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1811974543", "1811974543", "D3_Outpost_01_Expert", "box_ParticleSystem_v3_7.Started", "box_StimsEmitter_v2_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_7_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_12();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|543268002", "543268002", "D3_Outpost_01_Expert", "box_ParticleSystem_v3_7.Stopped", "box_StimsEmitter_v2_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_33_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_1();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_33;
    l1 = self.box_Brick_Outpost_Reinforcements_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|364811453", "364811453", "D3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_33.CallReinforcement_Wave1", "box_Brick_Outpost_Reinforcements_1.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_33_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_2();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_33;
    l1 = self.box_Brick_Outpost_Reinforcements_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|2132895703", "2132895703", "D3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_33.CallReinforcement_Wave2", "box_Brick_Outpost_Reinforcements_2.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_33_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1025006018", "1025006018", "D3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_33.CustomScript", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_SpawnAI_31;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|931427294", "931427294", "D3_Outpost_01_Expert", "box_SpawnAI_31.Out", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = self.box_Delay_v5_23;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|764884635", "764884635", "D3_Outpost_01_Expert", "box_Delay_v5_23.TimeElapsed", "box_ParticleSystem_v3_19.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1988081687", "1988081687", "D3_Outpost_01_Expert", "box_OutputOrder_v2_41.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|162180298", "162180298", "D3_Outpost_01_Expert", "box_OutputOrder_v2_41.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_28();
    l0 = self.box_UniversalInteractionModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|917609243", "917609243", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_17.Disabled", "box_UniversalInteractionModifier_v2_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|939775901", "939775901", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_17.Enabled", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|922690755", "922690755", "D3_Outpost_01_Expert", "box_SetContextualStrategy_13.Out", "box_UseContextualActionModifier_v3_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_8();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|951268282", "951268282", "D3_Outpost_01_Expert", "box_MultipleOR_9.Out", "box_RandomFloat_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_19_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_15();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1251393998", "1251393998", "D3_Outpost_01_Expert", "box_ParticleSystem_v3_19.Started", "box_StimsEmitter_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_19_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_15();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1868331945", "1868331945", "D3_Outpost_01_Expert", "box_ParticleSystem_v3_19.Stopped", "box_StimsEmitter_v2_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_34_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_17();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1544092187", "1544092187", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_34.Disabled", "box_StimsEmitter_v2_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_34_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_17();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|254603291", "254603291", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_34.Enabled", "box_StimsEmitter_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_11_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_30();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|151225650", "151225650", "D3_Outpost_01_Expert", "box_UseContextualActionModifier_v3_11.Disabled", "box_UseContextualActionModifier_v3_30.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_30();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|903979083", "903979083", "D3_Outpost_01_Expert", "box_UseContextualActionModifier_v3_11.Enabled", "box_UseContextualActionModifier_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_34();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1433230070", "1433230070", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_12.Disabled", "box_StimsEmitter_v2_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_34();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1932163744", "1932163744", "D3_Outpost_01_Expert", "box_StimsEmitter_v2_12.Enabled", "box_StimsEmitter_v2_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_29_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = self.box_UniversalInteractionListener_29;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1649840391", "1649840391", "D3_Outpost_01_Expert", "box_UniversalInteractionListener_29.Interacted", "box_ParticleSystem_v3_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|@ADD_GROUP_COMBAT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|17469143");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_14_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_14_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211607287905140",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_37()
    local params;
    params = {
        -- Direction,
        [0] = "surrounding",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|57581188");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_25_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_25_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211607287905144",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|80347076");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|106957006");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_21_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108983705404974078",
        -- Group,
        [1] = "#DC4B5D65",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 26,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|162195727");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_8_Out,
    });
    params = {
        -- Max,
        [0] = 21,
        -- Min,
        [1] = 11,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|176845229");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#DC4B5D65",
        -- ToGroup,
        [1] = "#29AD5629",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|176936657");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_15_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_15_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211586710649712",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|288758917");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_16_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_16_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211608049171324",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|314056918");
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

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|446549878");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_2()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2108016432150227419",
        -- ReinforcementPos02,
        [1] = "2108016435507767881",
        -- ReinforcementPos03,
        [2] = "2108016439385402078",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#DC4B5D65",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Fflametimer,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|531233619");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_20_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_20_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108209705833734667",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|659972022");
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

function export:OnEnter_box_UseContextualActionModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|693081009");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_30_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108983225832449991",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|695108127");
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
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2106993499256669750",
        -- ReinforcementPos02,
        [1] = "2106993499252475437",
        -- ReinforcementPos03,
        [2] = "2107448554673944761",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|803397925");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_24_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_24_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211586708552556",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.6,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|857994751");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_7_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108211527973616481",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_33()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#E3B3A07C",
        -- Alarm02,
        [2] = "#7ABAF1C6",
        -- Alarm03,
        [3] = "#0DBDC150",
        -- b2waves,
        [4] = true,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2106993492401079744",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#DC4B5D65",
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

function export:OnEnter_box_StaticBreakableBreaker_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1005567237");
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

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108238174173011668",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1217553759");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1274248526");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_17_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_17_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108226594851000286",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1446534464");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_13_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106993492398982582",
        -- Group,
        [1] = "#DC4B5D65",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_28()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108211407156689760",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1708154413");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_19_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_19_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108209714029404687",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3()
    local params;
    params = {
        -- Direction,
        [0] = "forest",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1769781491");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_34_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_34_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211542116809576",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1923712470");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_11_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_11_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108983217345275840",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D3\\D3_Outpost_01.domino|@D3_Outpost_01_Expert|1941771617");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_12_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_12_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108211540913044324",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108238176672816920",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2108211407156689760",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_8_Out()
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
