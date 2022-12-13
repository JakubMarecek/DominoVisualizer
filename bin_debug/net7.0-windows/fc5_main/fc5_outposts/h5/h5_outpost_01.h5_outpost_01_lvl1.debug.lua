LUAC0[  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h5/h5_outpost_01.domino
-- User graph: H5_Outpost_01_LVL1
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
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/H5/H5_Outpost_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1289406973.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.H5_Outpost_01 = nil;
    Globals.H5_Outpost_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/H5/H5_Outpost_01.H5_Outpost_01_LVL1.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "H5_Outpost_01_LVL1";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1";
    self.Out = DummyFunction;
    self.box_Brick_Cult_Location_Gameplay_V3_Main_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|72505811");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_Out,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|481049640");
    l0:SetConnections({
    });
    self.box_CultLocation_Vehicles_Manager_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|732147516");
    l0:SetConnections({
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1277962203");
    l0:SetConnections({
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1302205402");
    l0:SetConnections({
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1405302559");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1559599702");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled,
    });
    self.box_Brick_Cult_Location_Reinforcements_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|2086152839");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_3_ReinforcementCalled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1615410910", "1615410910", "H5_Outpost_01_LVL1", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|913675806", "913675806", "H5_Outpost_01_LVL1", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_2.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = self.box_Brick_Cult_Location_Reinforcements_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1164972846", "1164972846", "H5_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CallReinforcement_Wave1", "box_Brick_Cult_Location_Reinforcements_1.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_3();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = self.box_Brick_Cult_Location_Reinforcements_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|345463973", "345463973", "H5_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CallReinforcement_Wave2", "box_Brick_Cult_Location_Reinforcements_3.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|8923284", "8923284", "H5_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CustomScript", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1330715337", "1330715337", "H5_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_2.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_5();
    l0 = self.box_CultLocation_Vehicles_Manager_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|808873197", "808873197", "H5_Outpost_01_LVL1", "box_OutputOrder_v2_9.Out", "box_CultLocation_Vehicles_Manager_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|85598031", "85598031", "H5_Outpost_01_LVL1", "box_OutputOrder_v2_9.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1734076135", "1734076135", "H5_Outpost_01_LVL1", "box_OutputOrder_v2_10.Out", "box_SpawnAI_7.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|487121947", "487121947", "H5_Outpost_01_LVL1", "box_OutputOrder_v2_10.Out", "box_SpawnAI_8.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_6();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1881004595", "1881004595", "H5_Outpost_01_LVL1", "box_Brick_Cult_Location_Reinforcements_1.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_6.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_3_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_4();
    l0 = self.box_Brick_Cult_Location_Reinforcements_3;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|1343692747", "1343692747", "H5_Outpost_01_LVL1", "box_Brick_Cult_Location_Reinforcements_3.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_4.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#AA2ECE85",
        -- CultLoc_Music_Type,
        [4] = "1289406973",
        -- CultLocationNPC_Group,
        [5] = "#34F48EB0",
        -- SafeHouseEntity,
        [6] = "2098379717116700151",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|389717160");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2097869596580122305",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_5()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2104673090651834889",
        -- Vehicles_list,
        [1] = Globals.H5_Outpost_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_LVL1|963548207");
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

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_6()
    local params;
    params = {
        -- Direction,
        [0] = "road",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_4()
    local params;
    params = {
        -- Direction,
        [0] = "mountain",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2097982026087927721",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2099795687850908852",
        -- ReinforcementPos02,
        [1] = "2101261221331217236",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_3()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2102737904544565229",
        -- ReinforcementPos02,
        [1] = "2102737879414392544",
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
