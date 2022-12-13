LUAC~�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d7/d7_cultlocation_01.domino
-- User graph: D7_CultLocation_01_LVL01
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/D7/D7_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[974905219.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.D7_CultLocation_01 = nil;
    Globals.D7_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D7/D7_CultLocation_01.D7_CultLocation_01_LVL01.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua")] = {
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
                name = "CultLoc_Music_Type",
                type = "Sound",
            },
            [5] = {
                name = "CultLocationNPC_Group",
                type = "group",
            },
            [6] = {
                name = "SafeHouseEntity",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "e_Vehicles_proximitytrigger",
                type = "entity",
            },
            [1] = {
                name = "Vehicles_list",
                type = "list",
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
    self._name = "D7_CultLocation_01_LVL01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01";
    self.Out = DummyFunction;
    self.box_PlayerFullyDetected_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|60503933");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_46_Detected,
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|73829130");
    l0:SetConnections({
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|158525495");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|363227387");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_42_ReinforcementCalled,
    });
    self.box_CultLocation_Vehicles_Manager_38 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|412522315");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|564203913");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_Out,
    });
    self.box_EntityStatusListener_6 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1259889645");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_6_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_6_Unloaded,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1409391800");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1456365488");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_26_ReinforcementCalled,
    });
    self.box_Brick_Cult_Location_Reinforcements_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1476164920");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_44_ReinforcementCalled,
    });
    self.box_Brick_Cult_Location_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1820787396");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled,
    });
    self.box_SpawnAI_5 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1881871191");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_11 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1917454798");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_11_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_11_Unloaded,
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|2002385601");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|2122794800");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_7_Unloaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|412337249", "412337249", "D7_CultLocation_01_LVL01", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1887675890", "1887675890", "D7_CultLocation_01_LVL01", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_46();
    l0 = self.box_PlayerFullyDetected_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|848981176", "848981176", "D7_CultLocation_01_LVL01", "box_Simple_Node_47.Out", "box_PlayerFullyDetected_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1253830336", "1253830336", "D7_CultLocation_01_LVL01", "box_Simple_Node_9.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_38();
    l0 = self.box_CultLocation_Vehicles_Manager_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|577363867", "577363867", "D7_CultLocation_01_LVL01", "box_Simple_Node_39.Out", "box_CultLocation_Vehicles_Manager_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_4();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1894522892", "1894522892", "D7_CultLocation_01_LVL01", "box_Simple_Node_40.Out", "box_Brick_Cult_Location_Reinforcements_4.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_42();
    l0 = self.box_Brick_Cult_Location_Reinforcements_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1411963070", "1411963070", "D7_CultLocation_01_LVL01", "box_Simple_Node_43.Out", "box_Brick_Cult_Location_Reinforcements_42.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_PlayerFullyDetected_46_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_45();
    l0 = self.box_PlayerFullyDetected_46;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|569171679", "569171679", "D7_CultLocation_01_LVL01", "box_PlayerFullyDetected_46.Detected", "box_GroupAddToGroup_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|572828955", "572828955", "D7_CultLocation_01_LVL01", "box_OutputOrder_v2_29.Out", "box_Simple_Node_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|121723032", "121723032", "D7_CultLocation_01_LVL01", "box_OutputOrder_v2_29.Out", "box_Simple_Node_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1259871648", "1259871648", "D7_CultLocation_01_LVL01", "box_OutputOrder_v2_29.Out", "box_Simple_Node_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_42_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_26();
    l0 = self.box_Brick_Cult_Location_Reinforcements_42;
    l1 = self.box_Brick_Cult_Location_Reinforcements_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1223219600", "1223219600", "D7_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_42.ReinforcementCalled", "box_Brick_Cult_Location_Reinforcements_26.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|603884735", "603884735", "D7_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave1", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1357569800", "1357569800", "D7_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave2", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1136759019", "1136759019", "D7_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CustomScript", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|899900309", "899900309", "D7_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_EntityStatusListener_6_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_EntityStatusListener_6;
    l1 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1529302870", "1529302870", "D7_CultLocation_01_LVL01", "box_EntityStatusListener_6.Loaded", "box_SpawnAI_3.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_6_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_EntityStatusListener_6;
    l1 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|751852122", "751852122", "D7_CultLocation_01_LVL01", "box_EntityStatusListener_6.Unloaded", "box_SpawnAI_3.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_26_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_41();
    l0 = self.box_Brick_Cult_Location_Reinforcements_26;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|551074594", "551074594", "D7_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_26.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_41.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_44_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_2();
    l0 = self.box_Brick_Cult_Location_Reinforcements_44;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|2015840498", "2015840498", "D7_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_44.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_2.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|344687685", "344687685", "D7_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_6();
    l0 = self.box_EntityStatusListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1200317025", "1200317025", "D7_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_EntityStatusListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|745909115", "745909115", "D7_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_EntityStatusListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_44();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l1 = self.box_Brick_Cult_Location_Reinforcements_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1498301539", "1498301539", "D7_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_4.ReinforcementCalled", "box_Brick_Cult_Location_Reinforcements_44.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_11_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|409907386", "409907386", "D7_CultLocation_01_LVL01", "box_EntityStatusListener_11.Loaded", "box_SpawnAI_10.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_11_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|625933068", "625933068", "D7_CultLocation_01_LVL01", "box_EntityStatusListener_11.Unloaded", "box_SpawnAI_10.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|966241854", "966241854", "D7_CultLocation_01_LVL01", "box_EntityStatusListener_7.Loaded", "box_SpawnAI_5.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_7_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1139499855", "1139499855", "D7_CultLocation_01_LVL01", "box_EntityStatusListener_7.Unloaded", "box_SpawnAI_5.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|@Add_Group_Combat");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|@Extra_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_9_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|@Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|@WAVE_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|44932008");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#0E232960",
        -- ToGroup,
        [1] = "#65C95A74",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_46()
    local params;
    params = {
        -- group,
        [0] = "#0E232960",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099610588639401976",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|134698817");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_2()
    local params;
    params = {
        -- Type,
        [1] = "blessed",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_42()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2103979226894976863",
        -- ReinforcementPos02,
        [1] = "2103979537577560781",
        -- ReinforcementPos03,
        [2] = "2103979541807516431",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_38()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103455212254549247",
        -- Vehicles_list,
        [1] = Globals.D7_CultLocation_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#E11B8C2E",
        -- Alarm02,
        [2] = "#7812DD94",
        -- CultLoc_Music_Type,
        [4] = "974905219",
        -- CultLocationNPC_Group,
        [5] = "#0E232960",
        -- SafeHouseEntity,
        [6] = "2099596759622753070",
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
        [2] = "2104671051607721311",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_41()
    local params;
    params = {
        -- Direction,
        [0] = "north",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_26()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2104421807187572044",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_44()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2104420999603694686",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D7\\D7_CultLocation_01.domino|@D7_CultLocation_01_LVL01|1499288195");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_4()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2099596759622753079",
        -- ReinforcementPos02,
        [1] = "2103979514934610363",
        -- ReinforcementPos03,
        [2] = "2101822965648739980",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_5()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104670870780790004",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099610588639401976",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104671051607721311",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104670870780790004",
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
