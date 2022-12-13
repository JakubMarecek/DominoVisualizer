LUAC(�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/e1/e1_outpost_01.domino
-- User graph: E1_Outpost_01_Expert
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/E1/E1_Outpost_01.E1_Outpost_01_Expert.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "E1_Outpost_01_Expert";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert";
    self.Out = DummyFunction;
    self.box_Outpost_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|549898903");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|689180931");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_2_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Outpost_Gameplay_Main_v2_2_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_2_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Outpost_Gameplay_Main_v2_2_Out,
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1264844757");
    l0:SetConnections({
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1266427880");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_18 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1287343055");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_18_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_18_Unloaded,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1317460276");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_8_Unloaded,
    });
    self.box_Brick_Outpost_Reinforcements_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1359080471");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_5_ReinforcementCalled,
    });
    self.box_Brick_Outpost_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1421015974");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_4_ReinforcementCalled,
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1527042517");
    l0:SetConnections({
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1530808412");
    l0:SetConnections({
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1700683007");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1895275377");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_1_Unloaded,
    });
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|2022369097");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_17_Unloaded,
    });
    self.box_PlayerFullyDetected_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|2143407670");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_7_Detected,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_2();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1631499130", "1631499130", "E1_Outpost_01_Expert", "In", "box_Brick_Outpost_Gameplay_Main_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_2();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|182071489", "182071489", "E1_Outpost_01_Expert", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_2.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1981865597", "1981865597", "E1_Outpost_01_Expert", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1318293677", "1318293677", "E1_Outpost_01_Expert", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_18();
    l0 = self.box_EntityStatusListener_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1870156829", "1870156829", "E1_Outpost_01_Expert", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|359699749", "359699749", "E1_Outpost_01_Expert", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_7();
    l0 = self.box_PlayerFullyDetected_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|608969857", "608969857", "E1_Outpost_01_Expert", "box_OutputOrder_v2_9.Out", "box_PlayerFullyDetected_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_2_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_2;
    l1 = self.box_Brick_Outpost_Reinforcements_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1027019732", "1027019732", "E1_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_2.CallReinforcement_Wave1", "box_Brick_Outpost_Reinforcements_4.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_2_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_5();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_2;
    l1 = self.box_Brick_Outpost_Reinforcements_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|998992226", "998992226", "E1_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_2.CallReinforcement_Wave2", "box_Brick_Outpost_Reinforcements_5.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_2_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|521378020", "521378020", "E1_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_2.CustomScript", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_2_Out()
    local l0;
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1750531974", "1750531974", "E1_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_2.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_EntityStatusListener_18_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_EntityStatusListener_18;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1659780173", "1659780173", "E1_Outpost_01_Expert", "box_EntityStatusListener_18.Loaded", "box_SpawnAI_15.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_18_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_EntityStatusListener_18;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|411970731", "411970731", "E1_Outpost_01_Expert", "box_EntityStatusListener_18.Unloaded", "box_SpawnAI_15.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1048298488", "1048298488", "E1_Outpost_01_Expert", "box_EntityStatusListener_8.Loaded", "box_SpawnAI_13.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_8_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1656030519", "1656030519", "E1_Outpost_01_Expert", "box_EntityStatusListener_8.Unloaded", "box_SpawnAI_13.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_5_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_6();
    l0 = self.box_Brick_Outpost_Reinforcements_5;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1193374421", "1193374421", "E1_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_5.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_6.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|926818245", "926818245", "E1_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_4.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1487010217", "1487010217", "E1_Outpost_01_Expert", "box_EntityStatusListener_1.Loaded", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1861349408", "1861349408", "E1_Outpost_01_Expert", "box_EntityStatusListener_1.Unloaded", "box_SpawnAI_12.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1265139700", "1265139700", "E1_Outpost_01_Expert", "box_EntityStatusListener_17.Loaded", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_17_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|49009057", "49009057", "E1_Outpost_01_Expert", "box_EntityStatusListener_17.Unloaded", "box_SpawnAI_16.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_PlayerFullyDetected_7_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_10();
    l0 = self.box_PlayerFullyDetected_7;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|1033610689", "1033610689", "E1_Outpost_01_Expert", "box_PlayerFullyDetected_7.Detected", "box_GroupAddToGroup_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_GroupAddToGroup_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|249991791");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#CD9860D2",
        -- ToGroup,
        [1] = "#AE3000BB",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E1\\E1_Outpost_01.domino|@E1_Outpost_01_Expert|411516483");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [4] = self.f_box_OutputOrder_v2_9_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3()
    local params;
    params = {
        -- Direction,
        [0] = "flanking",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_2()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#D3007E27",
        -- Alarm02,
        [2] = "#4A092F9D",
        -- Alarm03,
        [3] = "#3D0E1F0B",
        -- b2waves,
        [4] = true,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2107338921196132665",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#CD9860D2",
        -- eSceneEntity,
        [9] = "2107835303694713028",
        -- eSequenceTeleport,
        [10] = "2108430400956155122",
        -- eSequenceTeleportClient,
        [11] = "2108430402220737780",
        -- RadioEntity,
        [12] = "2109290732146663602",
        -- SafeHouseEntity,
        [13] = "2106966027949579963",
        -- sSequenceFile,
        [14] = "sequences/bowmore_main/celebration/e1/e1_outpost_01.seq",
        -- VehicleCleanupTrigger,
        [15] = "2108693962117099072",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108503665038861523",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108503613398590356",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108503665038861523",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108503672099972467",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_5()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2107936186721900688",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_4()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2107935835878855712",
        -- ReinforcementPos02,
        [1] = "2107935763067835105",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108503672099972467",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_6()
    local params;
    params = {
        -- Direction,
        [0] = "road",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108503669591778587",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108503613398590356",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108503669591778587",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_7()
    local params;
    params = {
        -- group,
        [0] = "#CD9860D2",
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
