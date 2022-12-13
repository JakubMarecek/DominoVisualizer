LUAC.�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/e5/e5_outpost_01.domino
-- User graph: E5_Outpost_01_Expert
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
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/E5/E5_Outpost_01.E5_Outpost_01_Expert.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "E5_Outpost_01_Expert";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert";
    self.Out = DummyFunction;
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|101888239");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|107801241");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_6_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Outpost_Gameplay_Main_v2_6_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_6_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Outpost_Gameplay_Main_v2_6_Out,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|438419530");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|471564368");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_12_Unloaded,
    });
    self.box_StateListener_v2_3 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|473870856");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_3_StateStart,
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|512632442");
    l0:SetConnections({
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|975655544");
    l0:SetConnections({
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1212039032");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1463287216");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_10_Unloaded,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1523337128");
    l0:SetConnections({
    });
    self.box_PlayerFullyDetected_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1635028342");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_22_Detected,
    });
    self.box_Brick_Outpost_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1768587811");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_4_ReinforcementCalled,
    });
    self.box_Brick_Outpost_Reinforcements_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1774076683");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_19_ReinforcementCalled,
    });
    self.box_EntityStatusListener_15 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1800141024");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_15_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_15_Unloaded,
    });
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1819543382");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_17_Unloaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_6();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|226763542", "226763542", "E5_Outpost_01_Expert", "In", "box_Brick_Outpost_Gameplay_Main_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_6();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1765060327", "1765060327", "E5_Outpost_01_Expert", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_6.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_6_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_6;
    l1 = self.box_Brick_Outpost_Reinforcements_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|734014334", "734014334", "E5_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_6.CallReinforcement_Wave1", "box_Brick_Outpost_Reinforcements_4.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_6_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_19();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_6;
    l1 = self.box_Brick_Outpost_Reinforcements_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1715321859", "1715321859", "E5_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_6.CallReinforcement_Wave2", "box_Brick_Outpost_Reinforcements_19.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_6_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1578921062", "1578921062", "E5_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_6.CustomScript", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_6_Out()
    local l0;
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1808428200", "1808428200", "E5_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_6.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_3();
    l0 = self.box_StateListener_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|753002514", "753002514", "E5_Outpost_01_Expert", "box_OutputOrder_v2_5.Out", "box_StateListener_v2_3.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1614822431", "1614822431", "E5_Outpost_01_Expert", "box_OutputOrder_v2_5.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_22();
    l0 = self.box_PlayerFullyDetected_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|161600019", "161600019", "E5_Outpost_01_Expert", "box_OutputOrder_v2_5.Out", "box_PlayerFullyDetected_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|2066104815", "2066104815", "E5_Outpost_01_Expert", "box_EntityStatusListener_12.Loaded", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_12_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|305539472", "305539472", "E5_Outpost_01_Expert", "box_EntityStatusListener_12.Unloaded", "box_SpawnAI_9.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_3_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_1();
    l0 = self.box_StateListener_v2_3;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1166209107", "1166209107", "E5_Outpost_01_Expert", "box_StateListener_v2_3.StateStart", "box_GroupAddToGroup_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1792523891", "1792523891", "E5_Outpost_01_Expert", "box_EntityStatusListener_10.Loaded", "box_SpawnAI_13.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_10_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1416296639", "1416296639", "E5_Outpost_01_Expert", "box_EntityStatusListener_10.Unloaded", "box_SpawnAI_13.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_PlayerFullyDetected_22_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_23();
    l0 = self.box_PlayerFullyDetected_22;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|559047238", "559047238", "E5_Outpost_01_Expert", "box_PlayerFullyDetected_22.Detected", "box_GroupAddToGroup_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_2();
    l0 = self.box_Brick_Outpost_Reinforcements_4;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|343190008", "343190008", "E5_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_4.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_2.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_19_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_20();
    l0 = self.box_Brick_Outpost_Reinforcements_19;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|150158860", "150158860", "E5_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_19.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_20.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_15_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_EntityStatusListener_15;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|614420402", "614420402", "E5_Outpost_01_Expert", "box_EntityStatusListener_15.Loaded", "box_SpawnAI_14.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_15_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_EntityStatusListener_15;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1940008885", "1940008885", "E5_Outpost_01_Expert", "box_EntityStatusListener_15.Unloaded", "box_SpawnAI_14.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|104259027", "104259027", "E5_Outpost_01_Expert", "box_EntityStatusListener_17.Loaded", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_17_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1930969559", "1930969559", "E5_Outpost_01_Expert", "box_EntityStatusListener_17.Unloaded", "box_SpawnAI_16.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|92989653", "92989653", "E5_Outpost_01_Expert", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1089920977", "1089920977", "E5_Outpost_01_Expert", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_15();
    l0 = self.box_EntityStatusListener_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|246631601", "246631601", "E5_Outpost_01_Expert", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1891044806", "1891044806", "E5_Outpost_01_Expert", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108599999632775517",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_6()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#F994E8F9",
        -- Alarm02,
        [2] = "#609DB943",
        -- Alarm03,
        [3] = "#179A89D5",
        -- b2waves,
        [4] = true,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2107037807179483160",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#24F06D30",
        -- eSceneEntity,
        [9] = "2107835923310855834",
        -- eSequenceTeleport,
        [10] = "2108431111303483370",
        -- eSequenceTeleportClient,
        [11] = "2108431112886833134",
        -- RadioEntity,
        [12] = "2108614774806809109",
        -- SafeHouseEntity,
        [13] = "2107037807181580337",
        -- sSequenceFile,
        [14] = "sequences/bowmore_main/celebration/e5/e5_outpost_01.seq",
        -- VehicleCleanupTrigger,
        [15] = "2108696769469619223",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|265415915");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#24F06D30",
        -- ToGroup,
        [1] = "#DD382774",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    DrawTextToScreen("Comment: SCRIPT HERE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: SCRIPT HERE");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|335067957");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_20()
    local params;
    params = {
        -- Type,
        [1] = "chopper",
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
        [2] = "2108599996398967050",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#24F06D30",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108599994364729532",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108600010634435196",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_2()
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
        [2] = "2108599994364729532",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108599996398967050",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_22()
    local params;
    params = {
        -- group,
        [0] = "#24F06D30",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_4()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2108612307295688414",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_19()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2108612326931323148",
        -- ReinforcementPos02,
        [1] = "2108902949968154014",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108599999632775517",
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
        [2] = "2108600010634435196",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|1939870531");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Expert|2039043877");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#24F06D30",
        -- ToGroup,
        [1] = "#29AD5629",
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
