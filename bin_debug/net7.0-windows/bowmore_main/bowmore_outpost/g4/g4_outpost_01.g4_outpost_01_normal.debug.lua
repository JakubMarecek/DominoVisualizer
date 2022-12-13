LUAC  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/g4/g4_outpost_01.domino
-- User graph: G4_Outpost_01_Normal
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/G4/G4_Outpost_01.G4_Outpost_01_Normal.debug.lua")] = {
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
    self._name = "G4_Outpost_01_Normal";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal";
    self.Out = DummyFunction;
    self.box_EntityStatusListener_6 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|529852875");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_6_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_6_Unloaded,
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|548113819");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_4_CallReinforcement_Wave1,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_4_CustomScript,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|633971527");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_12_Unloaded,
    });
    self.box_SpawnAI_5 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|728380949");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|746784678");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|921128166");
    l0:SetConnections({
    });
    self.box_StateListener_v2_8 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1220049252");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_8_StateStart,
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1518463984");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|597078017", "597078017", "G4_Outpost_01_Normal", "In", "box_Brick_Outpost_Gameplay_Main_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1113839566", "1113839566", "G4_Outpost_01_Normal", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_4.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1136708494", "1136708494", "G4_Outpost_01_Normal", "box_Simple_Node_7.Out", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_8();
    l0 = self.box_StateListener_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|149237982", "149237982", "G4_Outpost_01_Normal", "box_Simple_Node_11.Out", "box_StateListener_v2_8.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_2_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_1();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|703583286", "703583286", "G4_Outpost_01_Normal", "box_Simple_Node_2.Out", "box_Brick_Outpost_Reinforcements_1.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_6_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_EntityStatusListener_6;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|175870430", "175870430", "G4_Outpost_01_Normal", "box_EntityStatusListener_6.Loaded", "box_SpawnAI_5.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_6_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_EntityStatusListener_6;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|304024234", "304024234", "G4_Outpost_01_Normal", "box_EntityStatusListener_6.Unloaded", "box_SpawnAI_5.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_4_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_2();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1130258404", "1130258404", "G4_Outpost_01_Normal", "box_Brick_Outpost_Gameplay_Main_v2_4.CallReinforcement_Wave1", "box_Simple_Node_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_4_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1371003908", "1371003908", "G4_Outpost_01_Normal", "box_Brick_Outpost_Gameplay_Main_v2_4.CustomScript", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|991243741", "991243741", "G4_Outpost_01_Normal", "box_EntityStatusListener_12.Loaded", "box_SpawnAI_13.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_12_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|983324114", "983324114", "G4_Outpost_01_Normal", "box_EntityStatusListener_12.Unloaded", "box_SpawnAI_13.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1977512470", "1977512470", "G4_Outpost_01_Normal", "box_Brick_Outpost_Reinforcements_1.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_8_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_9();
    l0 = self.box_StateListener_v2_8;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|48150875", "48150875", "G4_Outpost_01_Normal", "box_StateListener_v2_8.StateStart", "box_GroupAddToGroup_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|259686264", "259686264", "G4_Outpost_01_Normal", "box_OutputOrder_v2_10.Out", "box_Simple_Node_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1206299887", "1206299887", "G4_Outpost_01_Normal", "box_OutputOrder_v2_10.Out", "box_Simple_Node_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_6();
    l0 = self.box_EntityStatusListener_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|765524495", "765524495", "G4_Outpost_01_Normal", "box_OutputOrder_v2_14.Out", "box_EntityStatusListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|538331117", "538331117", "G4_Outpost_01_Normal", "box_OutputOrder_v2_14.Out", "box_EntityStatusListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|@EXTRA_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|@Mounted_weapon");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|@WAVE_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107037440135940176",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_4()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#A2D948C3",
        -- b2waves,
        [4] = false,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2107037440135940209",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#57426042",
        -- eSceneEntity,
        [9] = "2107824626452152616",
        -- eSequenceTeleport,
        [10] = "2108349595800045515",
        -- eSequenceTeleportClient,
        [11] = "2108349578846668743",
        -- RadioEntity,
        [12] = "2108595771692550356",
        -- SafeHouseEntity,
        [13] = "2107037440135940220",
        -- sSequenceFile,
        [14] = "Sequences/bowmore_main/celebration/g4/g4_outpost_01.seq",
        -- VehicleCleanupTrigger,
        [15] = "2108402507819521993",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|603082448");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#57426042",
        -- ToGroup,
        [1] = "#9DB6DBDD",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107864026194122296",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_5()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107037440135940176",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2107560434318980175",
        -- ReinforcementPos02,
        [1] = "2107037440135940216",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3()
    local params;
    params = {
        -- Type,
        [1] = "water",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#57426042",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107864026194122296",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|1636641983");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\G4\\G4_Outpost_01.domino|@G4_Outpost_01_Normal|2142480214");
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
