LUAC~�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/f5/f5_outpost_01.domino
-- User graph: F5_Outpost_01_Expert
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
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/F5/F5_Outpost_01.F5_Outpost_01_Expert.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "F5_Outpost_01_Expert";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert";
    self.Out = DummyFunction;
    self.fBossProgressBar = 100;
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|560473");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
    });
    self.box_EntityStatusListener_59 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|235709315");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_59_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_59_Unloaded,
    });
    self.box_SpawnAI_60 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|240797650");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_61 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|383009922");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_61_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_61_Unloaded,
    });
    self.box_VehicleListener_v3_14 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|448242417");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_14_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_14_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_14_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_14_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_14_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_14_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_14_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_14_OnStandUp,
    });
    self.box_Brick_Outpost_Reinforcements_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|574312626");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_6_ReinforcementCalled,
    });
    self.box_EntityStatusListener_11 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|634201860");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_11_Loaded,
    });
    self.box_StateListener_v2_8 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1183097083");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_8_StateStart,
    });
    self.box_Brick_Outpost_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Reinforcements.debug.lua");
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1193835420");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled,
    });
    self.box_VehicleListener_v3_19 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1286210737");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_19_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_19_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_19_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_19_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_19_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_19_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_19_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_19_OnStandUp,
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1529570216");
    l0:SetConnections({
    });
    self.box_Outpost_Reinforcement_PhoneCall_Manager_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Outpost_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_Outpost_Reinforcement_PhoneCall_Manager_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Outpost_Reinforcement_PhoneCall_Manager_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1535970966");
    l0:SetConnections({
    });
    self.box_SpawnAI_58 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|2120774533");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Gameplay_Main_v2_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Gameplay_Main_v2.debug.lua");
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Gameplay_Main_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|2134105932");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Outpost_Gameplay_Main_v2_3_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Outpost_Gameplay_Main_v2_3_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Outpost_Gameplay_Main_v2_3_CustomScript,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_3();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|434715356", "434715356", "F5_Outpost_01_Expert", "In", "box_Brick_Outpost_Gameplay_Main_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_3();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|2090571044", "2090571044", "F5_Outpost_01_Expert", "OnLeaveZone", "box_Brick_Outpost_Gameplay_Main_v2_3.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_8();
    l0 = self.box_StateListener_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1864968050", "1864968050", "F5_Outpost_01_Expert", "box_Simple_Node_10.Out", "box_StateListener_v2_8.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|349989735", "349989735", "F5_Outpost_01_Expert", "box_Simple_Node_63.Out", "box_OutputOrder_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|754836327", "754836327", "F5_Outpost_01_Expert", "box_Simple_Node_21.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_1();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|627835880", "627835880", "F5_Outpost_01_Expert", "box_Simple_Node_5.Out", "box_Brick_Outpost_Reinforcements_1.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Outpost_Reinforcements_6();
    l0 = self.box_Brick_Outpost_Reinforcements_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1089134476", "1089134476", "F5_Outpost_01_Expert", "box_Simple_Node_4.Out", "box_Brick_Outpost_Reinforcements_6.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_19();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_VehicleListener_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|218476295", "218476295", "F5_Outpost_01_Expert", "box_EntityStatusListener_17.Loaded", "box_VehicleListener_v3_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_59_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_58();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_SpawnAI_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|996627864", "996627864", "F5_Outpost_01_Expert", "box_EntityStatusListener_59.Loaded", "box_SpawnAI_58.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_59_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_58();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_SpawnAI_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|83480535", "83480535", "F5_Outpost_01_Expert", "box_EntityStatusListener_59.Unloaded", "box_SpawnAI_58.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_61_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_60();
    l0 = self.box_EntityStatusListener_61;
    l1 = self.box_SpawnAI_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|589927853", "589927853", "F5_Outpost_01_Expert", "box_EntityStatusListener_61.Loaded", "box_SpawnAI_60.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_61_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_60();
    l0 = self.box_EntityStatusListener_61;
    l1 = self.box_SpawnAI_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1997482348", "1997482348", "F5_Outpost_01_Expert", "box_EntityStatusListener_61.Unloaded", "box_SpawnAI_60.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1745025678", "1745025678", "F5_Outpost_01_Expert", "box_OutputOrder_v2_15.Out", "box_Simple_Node_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1627048724", "1627048724", "F5_Outpost_01_Expert", "box_OutputOrder_v2_15.Out", "box_Simple_Node_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1156812102", "1156812102", "F5_Outpost_01_Expert", "box_OutputOrder_v2_15.Out", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_14_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_12();
    l0 = self.box_VehicleListener_v3_14;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|670043154", "670043154", "F5_Outpost_01_Expert", "box_VehicleListener_v3_14.OnSit", "box_RemoveFromGroup_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Reinforcements_6_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_7();
    l0 = self.box_Brick_Outpost_Reinforcements_6;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1464923738", "1464923738", "F5_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_6.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_7.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_59();
    l0 = self.box_EntityStatusListener_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|229229985", "229229985", "F5_Outpost_01_Expert", "box_OutputOrder_v2_62.Out", "box_EntityStatusListener_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_61();
    l0 = self.box_EntityStatusListener_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1290474927", "1290474927", "F5_Outpost_01_Expert", "box_OutputOrder_v2_62.Out", "box_EntityStatusListener_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_11_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_14();
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_VehicleListener_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1880534982", "1880534982", "F5_Outpost_01_Expert", "box_EntityStatusListener_11.Loaded", "box_VehicleListener_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_8_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_9();
    l0 = self.box_StateListener_v2_8;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1486375572", "1486375572", "F5_Outpost_01_Expert", "box_StateListener_v2_8.StateStart", "box_GroupAddToGroup_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_2();
    l0 = self.box_Brick_Outpost_Reinforcements_1;
    l1 = self.box_Outpost_Reinforcement_PhoneCall_Manager_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1504401773", "1504401773", "F5_Outpost_01_Expert", "box_Brick_Outpost_Reinforcements_1.ReinforcementCalled", "box_Outpost_Reinforcement_PhoneCall_Manager_2.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_19_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_16();
    l0 = self.box_VehicleListener_v3_19;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|541207860", "541207860", "F5_Outpost_01_Expert", "box_VehicleListener_v3_19.OnSit", "box_RemoveFromGroup_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|445819984", "445819984", "F5_Outpost_01_Expert", "box_OutputOrder_v2_20.Out", "box_EntityStatusListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1773000010", "1773000010", "F5_Outpost_01_Expert", "box_OutputOrder_v2_20.Out", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_3_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_5();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|947279888", "947279888", "F5_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_3.CallReinforcement_Wave1", "box_Simple_Node_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_3_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_4();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1909767346", "1909767346", "F5_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_3.CallReinforcement_Wave2", "box_Simple_Node_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Outpost_Gameplay_Main_v2_3_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_Brick_Outpost_Gameplay_Main_v2_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1548901365", "1548901365", "F5_Outpost_01_Expert", "box_Brick_Outpost_Gameplay_Main_v2_3.CustomScript", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|@Add_group");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|@HARD_EXTRA_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|@Remove_DRIVER_GROUP");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|@Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_5_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|@Wave_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_4_Out,
    });
    params = {
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
        [2] = "2108333791551427116",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2106761141830047033",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_60()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106663303903188069",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2106663303903188069",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|394340299");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_14()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#8B5920FA",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2107839051244512123",
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_6()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2108333587244781070",
        -- ReinforcementPos02,
        [1] = "2108333791522066968",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|580601876");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
            },
            count = 4,
        },
    });
    params = {
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
        [2] = "2107839051244512123",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1177351933");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#C59EFE53",
        -- ToGroup,
        [1] = "#29AD5629",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#8B5920FA",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2106605746306160857",
        -- ReinforcementPos02,
        [1] = "2106605746312452322",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_19()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#8B5920FA",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2108333791551427116",
        -- vehicleTypeFilter,
        [5] = 4,
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

function export:OnEnter_box_Outpost_Reinforcement_PhoneCall_Manager_7()
    local params;
    params = {
        -- Direction,
        [0] = "surrounding",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1802642986");
    l0:SetConnections({
    });
    l0 = self.box_VehicleListener_v3_19;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(0),
        -- Group,
        [1] = "#8B5920FA",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1822775703");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F5\\F5_Outpost_01.domino|@F5_Outpost_01_Expert|1842432975");
    l0:SetConnections({
    });
    l0 = self.box_VehicleListener_v3_14;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(0),
        -- Group,
        [1] = "#8B5920FA",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_58()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106761141830047033",
    };
    return params;
end;

function export:OnEnter_box_Brick_Outpost_Gameplay_Main_v2_3()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#F819F1F8",
        -- Alarm02,
        [2] = "#6110A042",
        -- Alarm03,
        [3] = "#161790D4",
        -- b2waves,
        [4] = true,
        -- bUseFadeInAtEnd,
        [5] = false,
        -- CS_CINEMA_Outpost_Animals,
        [6] = "2106605652039178025",
        -- CultLoc_Music_Type,
        [7] = "1931423462",
        -- CultLocationNPC_Group,
        [8] = "#8B5920FA",
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
