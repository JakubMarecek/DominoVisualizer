LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/g2/g2_outpost_01.domino
-- User graph: G2_Outpost_01_LVL1
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Outposts/G2/G2_Outpost_01.FlamerConvo.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/G2/G2_Outpost_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1289406973.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.G2_Outpost_01 = nil;
    Globals.G2_Outpost_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/G2/G2_Outpost_01.G2_Outpost_01_LVL1.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
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
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/G2/G2_Outpost_01.FlamerConvo.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "G2_Outpost_01_LVL1";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1";
    self.Out = DummyFunction;
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|43267456");
    l0:SetConnections({
    });
    self.box_FlamerConvo_4 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/G2/G2_Outpost_01.FlamerConvo.debug.lua");
    l0 = self.box_FlamerConvo_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FlamerConvo_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|72445032");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FlamerConvo_4_Out,
    });
    self.box_ProximityTrigger_v2_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|527077462");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_5_OnOccupied,
    });
    self.box_Brick_Cult_Location_Reinforcements_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|680623804");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_11_ReinforcementCalled,
    });
    self.box_CultLocation_Vehicles_Manager_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|835728080");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|922464489");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_3_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_3_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_3_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_3_Out,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|945787536");
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1090108291");
    l0:SetConnections({
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1441290558");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1459906576");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_8_ReinforcementCalled,
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1691804430");
    l0:SetConnections({
    });
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1779803122");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_3();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1165345080", "1165345080", "G2_Outpost_01_LVL1", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_3();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1436649777", "1436649777", "G2_Outpost_01_LVL1", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_3.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1554924311", "1554924311", "G2_Outpost_01_LVL1", "box_Simple_Node_15.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_11();
    l0 = self.box_Brick_Cult_Location_Reinforcements_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1880081815", "1880081815", "G2_Outpost_01_LVL1", "box_Simple_Node_1.Out", "box_Brick_Cult_Location_Reinforcements_11.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_2_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_8();
    l0 = self.box_Brick_Cult_Location_Reinforcements_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1928660093", "1928660093", "G2_Outpost_01_LVL1", "box_Simple_Node_2.Out", "box_Brick_Cult_Location_Reinforcements_8.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_FlamerConvo_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_6();
    l0 = self.box_FlamerConvo_4;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|878381576", "878381576", "G2_Outpost_01_LVL1", "box_FlamerConvo_4.Out", "box_Print_v2_6.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_5_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_ProximityTrigger_v2_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|2074497917", "2074497917", "G2_Outpost_01_LVL1", "box_ProximityTrigger_v2_5.OnOccupied", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_11_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_7();
    l0 = self.box_Brick_Cult_Location_Reinforcements_11;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|548413178", "548413178", "G2_Outpost_01_LVL1", "box_Brick_Cult_Location_Reinforcements_11.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_7.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_3_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|857672746", "857672746", "G2_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_3.CallReinforcement_Wave1", "box_Simple_Node_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_3_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_2();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1248465051", "1248465051", "G2_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_3.CallReinforcement_Wave2", "box_Simple_Node_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_3_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1108462795", "1108462795", "G2_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_3.CustomScript", "box_Simple_Node_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_3_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|495148467", "495148467", "G2_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_3.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_OnceOnly_v3_13;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|2130882663", "2130882663", "G2_Outpost_01_LVL1", "box_OnceOnly_v3_13.Out", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_5();
    l0 = self.box_ProximityTrigger_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1106613552", "1106613552", "G2_Outpost_01_LVL1", "box_OutputOrder_v2_9.Out", "box_ProximityTrigger_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_FlamerConvo_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|666184716", "666184716", "G2_Outpost_01_LVL1", "box_OutputOrder_v2_9.Out", "box_FlamerConvo_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_16();
    l0 = self.box_CultLocation_Vehicles_Manager_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|2119349025", "2119349025", "G2_Outpost_01_LVL1", "box_OutputOrder_v2_9.Out", "box_CultLocation_Vehicles_Manager_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|108936340", "108936340", "G2_Outpost_01_LVL1", "box_OutputOrder_v2_9.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|83755418", "83755418", "G2_Outpost_01_LVL1", "box_OutputOrder_v2_19.Out", "box_SpawnAI_17.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1961677637", "1961677637", "G2_Outpost_01_LVL1", "box_OutputOrder_v2_19.Out", "box_SpawnAI_18.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_8_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_10();
    l0 = self.box_Brick_Cult_Location_Reinforcements_8;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|795658870", "795658870", "G2_Outpost_01_LVL1", "box_Brick_Cult_Location_Reinforcements_8.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_10.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|179828634", "179828634", "G2_Outpost_01_LVL1", "box_OutputOrder_v2_14.Out", "box_OnceOnly_v3_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_5();
    l0 = self.box_ProximityTrigger_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|52114301", "52114301", "G2_Outpost_01_LVL1", "box_OutputOrder_v2_14.Out", "box_ProximityTrigger_v2_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|@Custom");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|@Wave1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_1_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|@Wave2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_7()
    local params;
    params = {
        -- Direction,
        [0] = "road",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104646977357629719",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_11()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2095812220937047675",
        -- ReinforcementPos02,
        [1] = "2095965686907015958",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_16()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2104647043677964595",
        -- Vehicles_list,
        [1] = Globals.G2_Outpost_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_3()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#32B1A1BC",
        -- Alarm02,
        [2] = "#D830F00B",
        -- CultLoc_Music_Type,
        [4] = "1289406973",
        -- CultLocationNPC_Group,
        [5] = "#889D8566",
        -- SafeHouseEntity,
        [6] = "2095812220934950493",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|985069812");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1040414782");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Flamer Dead",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1041555100");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104646779564738237",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_10()
    local params;
    params = {
        -- Type,
        [1] = "water",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_8()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2102006323928376387",
        -- ReinforcementPos02,
        [1] = "2103361406708494889",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_LVL1|1556784353");
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

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103307023627063379",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100087209307671408",
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
