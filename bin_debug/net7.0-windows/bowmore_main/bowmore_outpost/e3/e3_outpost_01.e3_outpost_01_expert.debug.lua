LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/e3/e3_outpost_01.domino
-- User graph: E3_Outpost_01_Expert
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/E3/E3_Outpost_01.E3_Outpost_01_Expert.debug.lua")] = {
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
    self._name = "E3_Outpost_01_Expert";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert";
    self.Out = DummyFunction;
    self.box_Outpost_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|36664498");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|664547131");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_13_Unloaded,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|664979562");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|810666411");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_4_ReinforcementCalled,
    });
    self.box_Brick_Outpost_Reinforcements_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|901698698");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_2_ReinforcementCalled,
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|905500651");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_10_Unloaded,
    });
    self.box_StateListener_v2_6 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|992983667");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_6_StateStart,
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1013770554");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1051462420");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_1_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Outpost_Gameplay_Main_v2_1_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_1_CustomScript,
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1265017772");
    l0:SetConnections({
    });
    self.box_SpawnAI_5 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1687671893");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1744981233");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_9_Unloaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_1();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1436540123", "1436540123", "E3_Outpost_01_Expert", "In", "box_Brick_Outpost_Gameplay_Main_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_1();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1954752117", "1954752117", "E3_Outpost_01_Expert", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_6();
    l0 = self.box_StateListener_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|506148544", "506148544", "E3_Outpost_01_Expert", "box_Simple_Node_16.Out", "box_StateListener_v2_6.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|2099899582", "2099899582", "E3_Outpost_01_Expert", "box_Simple_Node_17.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1829627071", "1829627071", "E3_Outpost_01_Expert", "box_EntityStatusListener_13.Loaded", "box_SpawnAI_14.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|735421877", "735421877", "E3_Outpost_01_Expert", "box_EntityStatusListener_13.Unloaded", "box_SpawnAI_14.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_15();
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1859486733", "1859486733", "E3_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_4.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_15.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_2_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Outpost_Reinforcements_2;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1792119864", "1792119864", "E3_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_2.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1691955702", "1691955702", "E3_Outpost_01_Expert", "box_EntityStatusListener_10.Loaded", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_10_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|511231735", "511231735", "E3_Outpost_01_Expert", "box_EntityStatusListener_10.Unloaded", "box_SpawnAI_11.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_6_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_7();
    l0 = self.box_StateListener_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1470502673", "1470502673", "E3_Outpost_01_Expert", "box_StateListener_v2_6.StateStart", "box_GroupAddToGroup_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_1_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_2();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    l1 = self.box_Brick_Outpost_Reinforcements_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1927091024", "1927091024", "E3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_1.CallReinforcement_Wave1", "box_Brick_Outpost_Reinforcements_2.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_1_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    l1 = self.box_Brick_Outpost_Reinforcements_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1338160675", "1338160675", "E3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_1.CallReinforcement_Wave2", "box_Brick_Outpost_Reinforcements_4.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1628831554", "1628831554", "E3_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_1.CustomScript", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|2059328223", "2059328223", "E3_Outpost_01_Expert", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|936668894", "936668894", "E3_Outpost_01_Expert", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1488176185", "1488176185", "E3_Outpost_01_Expert", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|707018063", "707018063", "E3_Outpost_01_Expert", "box_EntityStatusListener_9.Loaded", "box_SpawnAI_5.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_9_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1732770004", "1732770004", "E3_Outpost_01_Expert", "box_EntityStatusListener_9.Unloaded", "box_SpawnAI_5.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|183921614", "183921614", "E3_Outpost_01_Expert", "box_OutputOrder_v2_8.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|332216610", "332216610", "E3_Outpost_01_Expert", "box_OutputOrder_v2_8.Out", "box_Simple_Node_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|@ADD_GROUP_COMBAT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|@EXTRA_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
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

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107337681533938610",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_15()
    local params;
    params = {
        -- Direction,
        [0] = "flanking",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_4()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2108887864136710733",
        -- ReinforcementPos02,
        [1] = "2108015840749172460",
        -- ReinforcementPos03,
        [2] = "2108015838545065627",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|866432933");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#B92C6623",
        -- ToGroup,
        [1] = "#29AD5629",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_2()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2106995786800695778",
        -- ReinforcementPos02,
        [1] = "2106995786804890089",
        -- ReinforcementPos03,
        [2] = "2107448130258613659",
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
        [2] = "2108348651699970979",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#B92C6623",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107337681533938610",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_1()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#E2065D61",
        -- Alarm02,
        [2] = "#7B0F0CDB",
        -- Alarm03,
        [3] = "#0C083C4D",
        -- b2waves,
        [4] = true,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2106995799756900985",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#B92C6623",
        -- eSceneEntity,
        [9] = "2107837076431978916",
        -- eSequenceTeleport,
        [10] = "2108430599380288136",
        -- eSequenceTeleportClient,
        [11] = "2108430601305473676",
        -- RadioEntity,
        [12] = "2108996626876993985",
        -- SafeHouseEntity,
        [13] = "2106995731825952799",
        -- sSequenceFile,
        [14] = "sequences/bowmore_main/celebration/e3/e3_outpost_01.seq",
        -- VehicleCleanupTrigger,
        [15] = "2109275061704743298",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108348651699970979",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|1288800295");
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

function export:OnEnter_box_SpawnAI_5()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108723015136064928",
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
        [2] = "2108723015136064928",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E3\\E3_Outpost_01.domino|@E3_Outpost_01_Expert|2144961554");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
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
