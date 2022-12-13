LUACT�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/f3/f3_outpost_01.domino
-- User graph: F3_Outpost_01_Expert
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/F3/F3_Outpost_01.F3_Outpost_01_Expert.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "F3_Outpost_01_Expert";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert";
    self.Out = DummyFunction;
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|70812018");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|410912277");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|489615602");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_10_Unloaded,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|544934587");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_9_Unloaded,
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|683117178");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_3_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Outpost_Gameplay_Main_v2_3_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_3_CustomScript,
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|751755239");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_17_Spawned,
    });
    self.box_Brick_Outpost_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|812362136");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled,
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|874699454");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_23_Spawned,
    });
    self.box_Brick_Outpost_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1139256067");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_4_ReinforcementCalled,
    });
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1447153234");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_25_Spawned,
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1460149387");
    l0:SetConnections({
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1631211051");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_11_Spawned,
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1767929842");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_24_Unloaded,
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1839119187");
    l0:SetConnections({
    });
    self.box_StateListener_v2_21 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1905185196");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_21_StateStart,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1948909072");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_3();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|305314327", "305314327", "F3_Outpost_01_Expert", "In", "box_Brick_Outpost_Gameplay_Main_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_3();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1161899870", "1161899870", "F3_Outpost_01_Expert", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_3.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_21();
    l0 = self.box_StateListener_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1974567191", "1974567191", "F3_Outpost_01_Expert", "box_Simple_Node_22.Out", "box_StateListener_v2_21.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|639731155", "639731155", "F3_Outpost_01_Expert", "box_Simple_Node_15.Out", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_1();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|60591665", "60591665", "F3_Outpost_01_Expert", "box_Simple_Node_7.Out", "box_Brick_Outpost_Reinforcements_1.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_4();
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|952770820", "952770820", "F3_Outpost_01_Expert", "box_Simple_Node_8.Out", "box_Brick_Outpost_Reinforcements_4.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1570113266", "1570113266", "F3_Outpost_01_Expert", "box_Delay_v5_16.TimeElapsed", "box_SpawnAI_23.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|2108194330", "2108194330", "F3_Outpost_01_Expert", "box_EntityStatusListener_10.Loaded", "box_SpawnAI_13.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_10_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|42409572", "42409572", "F3_Outpost_01_Expert", "box_EntityStatusListener_10.Unloaded", "box_SpawnAI_13.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1349132687", "1349132687", "F3_Outpost_01_Expert", "box_EntityStatusListener_9.Loaded", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_9_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|915093676", "915093676", "F3_Outpost_01_Expert", "box_EntityStatusListener_9.Unloaded", "box_SpawnAI_11.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_3_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|512029608", "512029608", "F3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_3.CallReinforcement_Wave1", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_3_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_8();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1653684747", "1653684747", "F3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_3.CallReinforcement_Wave2", "box_Simple_Node_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_3_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1182260251", "1182260251", "F3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_3.CustomScript", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_17_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_SpawnAI_17;
    l1 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|348543785", "348543785", "F3_Outpost_01_Expert", "box_SpawnAI_17.Spawned", "box_SpawnAI_26.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_2();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1236304181", "1236304181", "F3_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_1.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_2.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_23_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_SpawnAI_23;
    l1 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|436939077", "436939077", "F3_Outpost_01_Expert", "box_SpawnAI_23.Spawned", "box_SpawnAI_17.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1919082514", "1919082514", "F3_Outpost_01_Expert", "box_OutputOrder_v2_14.Out", "box_EntityStatusListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|551491548", "551491548", "F3_Outpost_01_Expert", "box_OutputOrder_v2_14.Out", "box_EntityStatusListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_6();
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|88035070", "88035070", "F3_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_4.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_6.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_25_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_SpawnAI_25;
    l1 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1752059349", "1752059349", "F3_Outpost_01_Expert", "box_SpawnAI_25.Spawned", "box_EntityStatusListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_11_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_SpawnAI_11;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1673119371", "1673119371", "F3_Outpost_01_Expert", "box_SpawnAI_11.Spawned", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1993430900", "1993430900", "F3_Outpost_01_Expert", "box_OutputOrder_v2_5.Out", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1452088280", "1452088280", "F3_Outpost_01_Expert", "box_OutputOrder_v2_5.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|2019596334", "2019596334", "F3_Outpost_01_Expert", "box_EntityStatusListener_24.Loaded", "box_SpawnAI_25.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_24_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|2023361258", "2023361258", "F3_Outpost_01_Expert", "box_EntityStatusListener_24.Unloaded", "box_SpawnAI_25.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_21_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_20();
    l0 = self.box_StateListener_v2_21;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|796726413", "796726413", "F3_Outpost_01_Expert", "box_StateListener_v2_21.StateStart", "box_GroupAddToGroup_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|@ADD_GROUP_COMBAT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|@EXTRA_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|@WAVE_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|@WAVE_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_6()
    local params;
    params = {
        -- Type,
        [1] = "chopper",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108444972228283683",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108444976284175862",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_3()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#E0D85A46",
        -- Alarm02,
        [2] = "#79D10BFC",
        -- Alarm03,
        [3] = "#0ED63B6A",
        -- b2waves,
        [4] = true,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2107047247322563267",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#16852BE9",
        -- eSceneEntity,
        [9] = "2107824304432366805",
        -- eSequenceTeleport,
        [10] = "2108430895502345304",
        -- eSequenceTeleportClient,
        [11] = "2108430897234592860",
        -- RadioEntity,
        [12] = "2108501250954764137",
        -- SafeHouseEntity,
        [13] = "2107047247322563292",
        -- sSequenceFile,
        [14] = "sequences/bowmore_main/celebration/f3/f3_outpost_01.seq",
        -- VehicleCleanupTrigger,
        [15] = "2109275100149733804",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108723611675146668",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2107047247322563298",
        -- ReinforcementPos02,
        [1] = "2108015798732731464",
        -- ReinforcementPos03,
        [2] = "2107047247322563263",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108724140123886149",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1076016492");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#16852BE9",
        -- ToGroup,
        [1] = "#29AD5629",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1124888755");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_4()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2108500746277230346",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108886277307777486",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108444972228283683",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108444976284175862",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Expert|1643255404");
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

function export:OnEnter_box_EntityStatusListener_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108886277307777486",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109508846243292105",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#16852BE9",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_2()
    local params;
    params = {
        -- Type,
        [1] = "vehicle",
    };
    return params;
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
