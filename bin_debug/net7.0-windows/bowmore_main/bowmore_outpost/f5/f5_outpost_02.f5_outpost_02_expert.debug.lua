LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/f5/f5_outpost_02.domino
-- User graph: F5_Outpost_02_Expert
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
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/F5/F5_Outpost_02.F5_Outpost_02_Expert.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive",
                delayed = false,
            },
            [1] = {
                name = "DeadOrDown",
                delayed = false,
            },
            [2] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    self._name = "F5_Outpost_02_Expert";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert";
    self.Out = DummyFunction;
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|242953099");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|264961344");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|373311474");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_18 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|433305257");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_18_Loaded,
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|457019280");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
    });
    self.box_EntityStatusListener_28 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|541267299");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_28_Loaded,
    });
    self.box_StateListener_v2_14 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|546275257");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_14_StateStart,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|746984504");
    l0:SetConnections({
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1071074980");
    l0:SetConnections({
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1084507929");
    l0:SetConnections({
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1162809006");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1227451875");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1305620862");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_4_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Outpost_Gameplay_Main_v2_4_CallReinforcement_Wave2,
        -- CultLocationCompleted_HostilityElimination,
        [2] = self.f_box_Brick_Outpost_Gameplay_Main_v2_4_CultLocationCompleted_HostilityElimination,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_4_CustomScript,
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1317771156");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_30 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1485185699");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_30_Loaded,
    });
    self.box_EntityStatusListener_31 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1686463570");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_31_Loaded,
    });
    self.box_Brick_Outpost_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1790788055");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1860905553");
    l0:SetConnections({
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1976300118");
    l0:SetConnections({
    });
    self.box_SpawnAI_29 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|2058218298");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Reinforcements_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|2094755927");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_5_ReinforcementCalled,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|2146160235");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|663036379", "663036379", "F5_Outpost_02_Expert", "In", "box_Brick_Outpost_Gameplay_Main_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1300517710", "1300517710", "F5_Outpost_02_Expert", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_4.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_14();
    l0 = self.box_StateListener_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1062769134", "1062769134", "F5_Outpost_02_Expert", "box_Simple_Node_15.Out", "box_StateListener_v2_14.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|841455324", "841455324", "F5_Outpost_02_Expert", "box_Simple_Node_27.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1795552988", "1795552988", "F5_Outpost_02_Expert", "box_EntityStatusListener_7.Loaded", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1881527661", "1881527661", "F5_Outpost_02_Expert", "box_EntityStatusListener_12.Loaded", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_18_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_EntityStatusListener_18;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|281788931", "281788931", "F5_Outpost_02_Expert", "box_EntityStatusListener_18.Loaded", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|653014765", "653014765", "F5_Outpost_02_Expert", "box_EntityStatusListener_10.Loaded", "box_SpawnAI_8.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_28_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_EntityStatusListener_28;
    l1 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|140931329", "140931329", "F5_Outpost_02_Expert", "box_EntityStatusListener_28.Loaded", "box_SpawnAI_33.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_14_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_13();
    l0 = self.box_StateListener_v2_14;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|527456362", "527456362", "F5_Outpost_02_Expert", "box_StateListener_v2_14.StateStart", "box_GroupAddToGroup_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_25_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_23();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|505810938", "505810938", "F5_Outpost_02_Expert", "box_IsPawnAlive_v3_25.Alive", "box_HealthModifier_v2_23.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_20_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_21();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|770697154", "770697154", "F5_Outpost_02_Expert", "box_IsPawnAlive_v3_20.Alive", "box_HealthModifier_v2_21.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1470490293", "1470490293", "F5_Outpost_02_Expert", "box_EntityStatusListener_17.Loaded", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_24();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|838194649", "838194649", "F5_Outpost_02_Expert", "box_OutputOrder_v2_22.Out", "box_IsPawnAlive_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_25();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1222400360", "1222400360", "F5_Outpost_02_Expert", "box_OutputOrder_v2_22.Out", "box_IsPawnAlive_v3_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_20();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1794045938", "1794045938", "F5_Outpost_02_Expert", "box_OutputOrder_v2_22.Out", "box_IsPawnAlive_v3_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_4_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_5();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    l1 = self.box_Brick_Outpost_Reinforcements_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1557274128", "1557274128", "F5_Outpost_02_Expert", "box_Brick_Outpost_Gameplay_Main_v2_4.CallReinforcement_Wave1", "box_Brick_Outpost_Reinforcements_5.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_4_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_1();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    l1 = self.box_Brick_Outpost_Reinforcements_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|445204625", "445204625", "F5_Outpost_02_Expert", "box_Brick_Outpost_Gameplay_Main_v2_4.CallReinforcement_Wave2", "box_Brick_Outpost_Reinforcements_1.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_4_CultLocationCompleted_HostilityElimination()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1558972895", "1558972895", "F5_Outpost_02_Expert", "box_Brick_Outpost_Gameplay_Main_v2_4.CultLocationCompleted_HostilityElimination", "box_Simple_Node_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_4_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|2093969380", "2093969380", "F5_Outpost_02_Expert", "box_Brick_Outpost_Gameplay_Main_v2_4.CustomScript", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_30_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_29();
    l0 = self.box_EntityStatusListener_30;
    l1 = self.box_SpawnAI_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1254437318", "1254437318", "F5_Outpost_02_Expert", "box_EntityStatusListener_30.Loaded", "box_SpawnAI_29.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|558758574", "558758574", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|313028651", "313028651", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_30();
    l0 = self.box_EntityStatusListener_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1021413999", "1021413999", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_31();
    l0 = self.box_EntityStatusListener_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|2074609345", "2074609345", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|80070003", "80070003", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1502678524", "1502678524", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|2063582850", "2063582850", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1561005948", "1561005948", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_18();
    l0 = self.box_EntityStatusListener_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1816398074", "1816398074", "F5_Outpost_02_Expert", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_24_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_26();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|735123951", "735123951", "F5_Outpost_02_Expert", "box_IsPawnAlive_v3_24.Alive", "box_HealthModifier_v2_26.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_31_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_EntityStatusListener_31;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1041311707", "1041311707", "F5_Outpost_02_Expert", "box_EntityStatusListener_31.Loaded", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|344578957", "344578957", "F5_Outpost_02_Expert", "box_Brick_Outpost_Reinforcements_1.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Outpost_Reinforcements_5_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_6();
    l0 = self.box_Brick_Outpost_Reinforcements_5;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|836206916", "836206916", "F5_Outpost_02_Expert", "box_Brick_Outpost_Reinforcements_5.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_6.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|@ADD_GROUP_COMBAT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|@KillAnimals");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|117005307");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2108695837616906237",
        -- pawns,
        [2] = "2108695837616906237",
        -- value,
        [3] = 10000,
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
        [2] = "2107328210273310958",
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
        [2] = "2107328221216250160",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|349788932");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#05D62719",
        -- ToGroup,
        [1] = "#29AD5629",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107328210273310958",
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
        [2] = "2108695837614809079",
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
        [2] = "2107328157961951305",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107090955283733550",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#05D62719",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108695837614809079",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|908978707");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_25_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2107341240910482053",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107328221216250160",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107328157961951305",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107328159966828655",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1191028593");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_20_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2107328210277505268",
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
        [2] = "2107341240897899120",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1231724269");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1282589582");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2107328210277505268",
        -- pawns,
        [2] = "2107328210277505268",
        -- value,
        [3] = 10000,
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_4()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#5B7DAF43",
        -- Alarm02,
        [2] = "#C274FEF9",
        -- Alarm03,
        [3] = "#B573CE6F",
        -- b2waves,
        [4] = true,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2107090955283733556",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#05D62719",
        -- eSceneEntity,
        [9] = "2107835580212594497",
        -- eSequenceTeleport,
        [10] = "2108403536743119891",
        -- eSequenceTeleportClient,
        [11] = "2108403540570422293",
        -- RadioEntity,
        [12] = "2108502911441968737",
        -- SafeHouseEntity,
        [13] = "2107090955283733578",
        -- sSequenceFile,
        [14] = "sequences/bowmore_main/celebration/f5/f5_outpost_02.seq",
        -- VehicleCleanupTrigger,
        [15] = "2108420867363970560",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107090955283733550",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1484382687");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2107341240910482053",
        -- pawns,
        [2] = "2107341240910482053",
        -- value,
        [3] = 10000,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107328156932249654",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    DrawTextToScreen("Comment: SCRIPT HERE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: SCRIPT HERE");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1611655607");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
                [4] = self.f_box_OutputOrder_v2_2_Out_4,
                [5] = self.f_box_OutputOrder_v2_2_Out_5,
                [6] = self.f_box_OutputOrder_v2_2_Out_6,
                [7] = self.f_box_OutputOrder_v2_2_Out_7,
                [8] = self.f_box_OutputOrder_v2_2_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_02.domino|@F5_Outpost_02_Expert|1678347526");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_24_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2108695837616906237",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107328159966828655",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2108241910624689693",
        -- ReinforcementPos02,
        [1] = "2107090955283733586",
    };
    return params;
end;

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_6()
    local params;
    params = {
        -- Direction,
        [0] = "North",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107341240897899120",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_29()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107328156932249654",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_5()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2107090955283733584",
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
