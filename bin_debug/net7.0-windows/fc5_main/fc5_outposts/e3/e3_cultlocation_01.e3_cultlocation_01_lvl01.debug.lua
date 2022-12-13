LUAC؜  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e3/e3_cultlocation_01.domino
-- User graph: E3_CultLocation_01_LVL01
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/E3/E3_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.E3_CultLocation_01 = nil;
    Globals.E3_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/E3/E3_CultLocation_01.E3_CultLocation_01_LVL01.debug.lua")] = {
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
    self._name = "E3_CultLocation_01_LVL01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01";
    self.Out = DummyFunction;
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|52128350");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|106077740");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_2_ReinforcementCalled,
    });
    self.box_CultLocation_Vehicles_Manager_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|639942594");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|841970356");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_7_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_7_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_7_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_7_Out,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|861092868");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|875502028");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_14_ReinforcementCalled,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1055389846");
    l0:SetConnections({
    });
    self.box_PlayerFullyDetected_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1409422326");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_12_Detected,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1668202364");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_5 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1748890709");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_5_End,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_7();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|2053045658", "2053045658", "E3_CultLocation_01_LVL01", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_7();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1036787807", "1036787807", "E3_CultLocation_01_LVL01", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_7.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_12();
    l0 = self.box_PlayerFullyDetected_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|176371586", "176371586", "E3_CultLocation_01_LVL01", "box_Simple_Node_19.Out", "box_PlayerFullyDetected_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_5();
    l0 = self.box_ContextualActionListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1611154126", "1611154126", "E3_CultLocation_01_LVL01", "box_Simple_Node_9.Out", "box_ContextualActionListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|326755071", "326755071", "E3_CultLocation_01_LVL01", "box_Simple_Node_23.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_10();
    l0 = self.box_CultLocation_Vehicles_Manager_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1741231267", "1741231267", "E3_CultLocation_01_LVL01", "box_Simple_Node_13.Out", "box_CultLocation_Vehicles_Manager_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_2();
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1774700973", "1774700973", "E3_CultLocation_01_LVL01", "box_Simple_Node_11.Out", "box_Brick_Cult_Location_Reinforcements_2.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_14();
    l0 = self.box_Brick_Cult_Location_Reinforcements_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1174929256", "1174929256", "E3_CultLocation_01_LVL01", "box_Simple_Node_18.Out", "box_Brick_Cult_Location_Reinforcements_14.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_2_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|7466246", "7466246", "E3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_2.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_7_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1844511064", "1844511064", "E3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_7.CallReinforcement_Wave1", "box_Simple_Node_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_7_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|685249690", "685249690", "E3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_7.CallReinforcement_Wave2", "box_Simple_Node_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_7_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|43488966", "43488966", "E3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_7.CustomScript", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_7_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|545001694", "545001694", "E3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_7.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Brick_Cult_Location_Reinforcements_14_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_17();
    l0 = self.box_Brick_Cult_Location_Reinforcements_14;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|207012607", "207012607", "E3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_14.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_17.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|2101662372", "2101662372", "E3_CultLocation_01_LVL01", "box_OutputOrder_v2_22.Out", "box_SpawnAI_20.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1731733651", "1731733651", "E3_CultLocation_01_LVL01", "box_OutputOrder_v2_22.Out", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_PlayerFullyDetected_12_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_1();
    l0 = self.box_PlayerFullyDetected_12;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|634542848", "634542848", "E3_CultLocation_01_LVL01", "box_PlayerFullyDetected_12.Detected", "box_GroupAddToGroup_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_5_End()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_6();
    l0 = self.box_ContextualActionListener_5;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1983346262", "1983346262", "E3_CultLocation_01_LVL01", "box_ContextualActionListener_5.End", "box_SetContextualStrategy_6.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|382454936", "382454936", "E3_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|623356372", "623356372", "E3_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|617087073", "617087073", "E3_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1410567962", "1410567962", "E3_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|@Add_Group_Combat");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|@Hostage_Change_CS");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|@NPC_Spawn_From_Script");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_13_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|@Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|@Wave_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_3()
    local params;
    params = {
        -- Direction,
        [0] = "east",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_2()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2099208971419137186",
        -- ReinforcementPos02,
        [1] = "2100080522100222358",
        -- ReinforcementPos03,
        [2] = "2103968770610434871",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_10()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103466278822898307",
        -- Vehicles_list,
        [1] = Globals.E3_CultLocation_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|643507282");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104354514321593109",
        -- Group,
        [1] = "2099209345270036051",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_7()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#E4CAEC55",
        -- Alarm02,
        [2] = "#7DC3BDEF",
        -- CultLoc_Music_Type,
        [4] = "1931423462",
        -- CultLocationNPC_Group,
        [5] = "#CA290239",
        -- SafeHouseEntity,
        [6] = "2099126624225077703",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_17()
    local params;
    params = {
        -- Type,
        [1] = "plane",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|871817546");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#CA290239",
        -- ToGroup,
        [1] = "#65C95A74",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_14()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2100080766051421316",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100067978964911809",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1331134444");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_12()
    local params;
    params = {
        -- group,
        [0] = "#CA290239",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100067979191404277",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_5()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2104353191375147945",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E3\\E3_CultLocation_01.domino|@E3_CultLocation_01_LVL01|1759410655");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
            },
            count = 4,
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
