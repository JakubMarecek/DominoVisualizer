LUACn�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/f5/f5_outpost_01.domino
-- User graph: F5_Outpost_01_Normal
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

function export:ResetLocalGlobals()
    Globals.F5_Outpost_01 = nil;
    Globals.F5_Outpost_01 = {
        fCurrentHealth = 0,
        iBossProgress = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/F5/F5_Outpost_01.F5_Outpost_01_Normal.debug.lua")] = {
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
    self._name = "F5_Outpost_01_Normal";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal";
    self.Out = DummyFunction;
    self.PLAYER_RESTART_PUMP_2 = {
    };
    self.box_EntityStatusListener_14 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|87844208");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_14_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_14_Unloaded,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|622879841");
    l0:SetConnections({
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|699041911");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Reinforcements_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|725760318");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_3_ReinforcementCalled,
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|986566611");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1091475854");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_6_StateStart,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1505159459");
    l0:SetConnections({
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1701515820");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1896547776");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_1_CallReinforcement_Wave1,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_1_CustomScript,
    });
    self.box_EntityStatusListener_20 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1999456390");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_20_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_20_Unloaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_1();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|543727218", "543727218", "F5_Outpost_01_Normal", "In", "box_Brick_Outpost_Gameplay_Main_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_1();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|440824633", "440824633", "F5_Outpost_01_Normal", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1937728731", "1937728731", "F5_Outpost_01_Normal", "box_Simple_Node_17.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_6();
    l0 = self.box_StateListener_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1681386310", "1681386310", "F5_Outpost_01_Normal", "box_Simple_Node_8.Out", "box_StateListener_v2_6.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_3();
    l0 = self.box_Brick_Outpost_Reinforcements_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|5473612", "5473612", "F5_Outpost_01_Normal", "box_Simple_Node_4.Out", "box_Brick_Outpost_Reinforcements_3.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_14_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|6221805", "6221805", "F5_Outpost_01_Normal", "box_EntityStatusListener_14.Loaded", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_14_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|2044735342", "2044735342", "F5_Outpost_01_Normal", "box_EntityStatusListener_14.Unloaded", "box_SpawnAI_9.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_3_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_2();
    l0 = self.box_Brick_Outpost_Reinforcements_3;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1115796816", "1115796816", "F5_Outpost_01_Normal", "box_Brick_Outpost_Reinforcements_3.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_2.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|664487318", "664487318", "F5_Outpost_01_Normal", "box_EntityStatusListener_10.Loaded", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_10_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1267832019", "1267832019", "F5_Outpost_01_Normal", "box_EntityStatusListener_10.Unloaded", "box_SpawnAI_11.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_6_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_7();
    l0 = self.box_StateListener_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1348306615", "1348306615", "F5_Outpost_01_Normal", "box_StateListener_v2_6.StateStart", "box_GroupAddToGroup_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_14();
    l0 = self.box_EntityStatusListener_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1683648386", "1683648386", "F5_Outpost_01_Normal", "box_OutputOrder_v2_16.Out", "box_EntityStatusListener_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1970276107", "1970276107", "F5_Outpost_01_Normal", "box_OutputOrder_v2_16.Out", "box_EntityStatusListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_20();
    l0 = self.box_EntityStatusListener_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|587929515", "587929515", "F5_Outpost_01_Normal", "box_OutputOrder_v2_16.Out", "box_EntityStatusListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_1_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|807990557", "807990557", "F5_Outpost_01_Normal", "box_Brick_Outpost_Gameplay_Main_v2_1.CallReinforcement_Wave1", "box_Simple_Node_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|701877053", "701877053", "F5_Outpost_01_Normal", "box_Brick_Outpost_Gameplay_Main_v2_1.CustomScript", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|567241068", "567241068", "F5_Outpost_01_Normal", "box_OutputOrder_v2_15.Out", "box_Simple_Node_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|372105016", "372105016", "F5_Outpost_01_Normal", "box_OutputOrder_v2_15.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_20_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_EntityStatusListener_20;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|72793713", "72793713", "F5_Outpost_01_Normal", "box_EntityStatusListener_20.Loaded", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_20_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_EntityStatusListener_20;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|440582514", "440582514", "F5_Outpost_01_Normal", "box_EntityStatusListener_20.Unloaded", "box_SpawnAI_19.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|@Extra_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|@Mounted_weapon");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|@Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2106884399835396161",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106884388659673055",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106884399835396161",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_3()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2106591670672845716",
        -- ReinforcementPos02,
        [1] = "2107770099430592406",
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
        [2] = "2106591670672845708",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#E5C7DB5C",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1098477277");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#E5C7DB5C",
        -- ToGroup,
        [1] = "#29AD5629",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1195682902");
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

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_2()
    local params;
    params = {
        -- Type,
        [1] = "vehicle",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106591670672845708",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_1()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#2A2BAF9D",
        -- b2waves,
        [4] = false,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2106591670672845721",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#E5C7DB5C",
        -- eSceneEntity,
        [9] = "2107835734844000096",
        -- eSequenceTeleport,
        [10] = "2108389227908578250",
        -- eSequenceTeleportClient,
        [11] = "2108389243603663820",
        -- RadioEntity,
        [12] = "2108526656386763444",
        -- SafeHouseEntity,
        [13] = "2106591670672845705",
        -- sSequenceFile,
        [14] = "sequences/bowmore_main/celebration/f5/f5_outpost_01.seq",
        -- VehicleCleanupTrigger,
        [15] = "2108405685277429787",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Normal|1944196787");
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
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2106884388659673055",
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
