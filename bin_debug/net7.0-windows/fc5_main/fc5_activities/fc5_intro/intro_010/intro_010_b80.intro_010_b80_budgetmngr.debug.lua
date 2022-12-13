LUAC�X -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b80.domino
-- User graph: Intro_010_B80_BudgetMngr
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B80.Intro_010_B80_BudgetMngr.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
            [0] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MultipleOR.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Input",
                dynamicType = 1,
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
            [0] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Intro_010_B80_BudgetMngr";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr";
    self.players = nil;
    self.box_RemoveEntity_v2_43 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|25887793");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_43_Out,
    });
    self.box_RemoveEntity_v2_8 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|245921243");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_8_Out,
    });
    self.box_OnceOnly_v3_17 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|375056586");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_17_Out_0,
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_31 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|401389126");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_31_Loaded,
    });
    self.box_RemoveEntity_v2_51 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|425303189");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_51_Out,
    });
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|455875313");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|524332942");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|566458838");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_42_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_39 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|579955325");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_39_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_39_Enter,
    });
    self.box_ProximityTrigger_v2_12 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|662115626");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_12_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_12_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_12_OnOccupied,
    });
    self.box_RemoveEntity_v2_52 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|774966815");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_9 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|775616092");
    l0:SetConnections({
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|957864451");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1024836454");
    l0:SetConnections({
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1121826790");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_7 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1146503479");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_7_Disabled,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_7_Leave,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1194729918");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
            count = 1,
        },
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1223794080");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_53 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1245985044");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_53_Out,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1402860707");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1421590287");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_RemoveEntity_v2_4 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1508183901");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_21 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1510942385");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_21_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_21_Loaded,
    });
    self.box_RemoveEntity_v2_32 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1525308178");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_32_Out,
    });
    self.box_RemoveEntity_v2_23 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1572392399");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_23_Out,
    });
    self.box_EntityStatusListener_35 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1573782921");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_35_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_35_Loaded,
    });
    self.box_RemoveEntity_v2_6 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1584690455");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_6_Out,
    });
    self.box_ProximityTrigger_v2_36 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1638471059");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_36_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_36_OnOccupied,
    });
    self.box_EntityStatusListener_27 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1652759517");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_27_Loaded,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1699875881");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_RemoveEntity_v2_30 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1725092800");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_54 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1733058685");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_15 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1740992963");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_15_Leave,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1817137974");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_EntityStatusListener_47 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1817818075");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_47_Loaded,
    });
    self.box_ProximityTrigger_v2_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1830923575");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_5_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_5_OnOccupied,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1885435519");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_EntityStatusListener_44 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1896105106");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_44_Loaded,
    });
    self.box_RemoveEntity_v2_56 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|2010413240");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_48 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|2057702819");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_48_Leave,
    });
    self.box_RemoveEntity_v2_55 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|2073222959");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_55_Out,
    });
    self.box_ProximityTrigger_v2_11 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|2126477018");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_11_Leave,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|2144393239");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_49();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|76138365", "76138365", "Intro_010_B80_BudgetMngr", "In", "box_GetPlayerGroup_v2_49.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_53();
    l0 = self.box_RemoveEntity_v2_43;
    l1 = self.box_RemoveEntity_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|108049648", "108049648", "Intro_010_B80_BudgetMngr", "box_RemoveEntity_v2_43.Out", "box_RemoveEntity_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_41_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_41();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1862174893", "1862174893", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_41.Deactivated", "box_MissionBlockLayer_41.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_41_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_43();
    l0 = self.box_RemoveEntity_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|594052725", "594052725", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_41.Disabled", "box_RemoveEntity_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_9();
    l0 = self.box_RemoveEntity_v2_8;
    l1 = self.box_RemoveEntity_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1024449632", "1024449632", "Intro_010_B80_BudgetMngr", "box_RemoveEntity_v2_8.Out", "box_RemoveEntity_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_24();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|851291736", "851291736", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_3.Out", "box_MissionBlockLayer_24.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_5();
    l0 = self.box_ProximityTrigger_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1716429726", "1716429726", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_3.Out", "box_ProximityTrigger_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_17_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_OnceOnly_v3_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|457881479", "457881479", "Intro_010_B80_BudgetMngr", "box_OnceOnly_v3_17.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_31_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_23();
    l0 = self.box_EntityStatusListener_31;
    l1 = self.box_RemoveEntity_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|573168091", "573168091", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_31.Loaded", "box_RemoveEntity_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_52();
    l0 = self.box_RemoveEntity_v2_51;
    l1 = self.box_RemoveEntity_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1819298695", "1819298695", "Intro_010_B80_BudgetMngr", "box_RemoveEntity_v2_51.Out", "box_RemoveEntity_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_OnceOnly_v3_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1976535351", "1976535351", "Intro_010_B80_BudgetMngr", "box_OnceOnly_v3_26.Out", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_OnceOnly_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|998194703", "998194703", "Intro_010_B80_BudgetMngr", "box_MultipleOR_25.Out", "box_OnceOnly_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_42_Started()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_8();
    l0 = self.box_Delay_v5_42;
    l1 = self.box_RemoveEntity_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|876024990", "876024990", "Intro_010_B80_BudgetMngr", "box_Delay_v5_42.Started", "box_RemoveEntity_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_30();
    l0 = self.box_Delay_v5_42;
    l1 = self.box_RemoveEntity_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1431126865", "1431126865", "Intro_010_B80_BudgetMngr", "box_Delay_v5_42.TimeElapsed", "box_RemoveEntity_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_11();
    l0 = self.box_ProximityTrigger_v2_39;
    l1 = self.box_ProximityTrigger_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|113632363", "113632363", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_39.Enabled", "box_ProximityTrigger_v2_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_39_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_41();
    l0 = self.box_ProximityTrigger_v2_39;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|805992289", "805992289", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_39.Enter", "box_MissionBlockLayer_41.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_44();
    l0 = self.box_ProximityTrigger_v2_12;
    l1 = self.box_EntityStatusListener_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1317010935", "1317010935", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_12.Enabled", "box_EntityStatusListener_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_12_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_12;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|159199355", "159199355", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_12.Enter", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_12_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_12;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1477636348", "1477636348", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_12.OnOccupied", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_14_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_14();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1494515429", "1494515429", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_14.Deactivated", "box_MissionBlockLayer_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_37();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1822666128", "1822666128", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_14.Disabled", "box_MissionBlockLayer_37.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_10_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_10();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|16476181", "16476181", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_10.Deactivated", "box_MissionBlockLayer_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_10_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_38();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1970424148", "1970424148", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_10.Disabled", "box_MissionBlockLayer_38.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_37_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_37();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1658902217", "1658902217", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_37.Deactivated", "box_MissionBlockLayer_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_37_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_6();
    l0 = self.box_RemoveEntity_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|334653804", "334653804", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_37.Disabled", "box_RemoveEntity_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_20_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_20;
    l1 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1684187700", "1684187700", "Intro_010_B80_BudgetMngr", "box_MultipleOR_20.Out", "box_OnceOnly_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_49_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_36();
    l0 = self.box_ProximityTrigger_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|556323841", "556323841", "Intro_010_B80_BudgetMngr", "box_GetPlayerGroup_v2_49.Out", "box_ProximityTrigger_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_51();
    l0 = self.box_Delay_v5_50;
    l1 = self.box_RemoveEntity_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1256692443", "1256692443", "Intro_010_B80_BudgetMngr", "box_Delay_v5_50.TimeElapsed", "box_RemoveEntity_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_7_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_ProximityTrigger_v2_7;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1131144273", "1131144273", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_7.Disabled", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_7_Leave()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_7();
    l0 = self.box_ProximityTrigger_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1671653914", "1671653914", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_7.Leave", "box_ProximityTrigger_v2_7.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_OnceOnly_v3_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|653187990", "653187990", "Intro_010_B80_BudgetMngr", "box_OnceOnly_v3_13.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_54();
    l0 = self.box_RemoveEntity_v2_53;
    l1 = self.box_RemoveEntity_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1128865938", "1128865938", "Intro_010_B80_BudgetMngr", "box_RemoveEntity_v2_53.Out", "box_RemoveEntity_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_1_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_1();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|254805465", "254805465", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_1.Deactivated", "box_MissionBlockLayer_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_1_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1775795500", "1775795500", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_1.Disabled", "box_Delay_v5_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_15();
    l0 = self.box_EntityStatusListener_29;
    l1 = self.box_ProximityTrigger_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|564940728", "564940728", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_29.Loaded", "box_ProximityTrigger_v2_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_2();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1268428071", "1268428071", "Intro_010_B80_BudgetMngr", "box_Delay_v5_40.TimeElapsed", "box_MissionBlockLayer_2.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_35();
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_EntityStatusListener_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1580427049", "1580427049", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_21.Enabled", "box_EntityStatusListener_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_21_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|940374448", "940374448", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_21.Loaded", "box_SpawnAI_33.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_28();
    l0 = self.box_RemoveEntity_v2_32;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1218784657", "1218784657", "Intro_010_B80_BudgetMngr", "box_RemoveEntity_v2_32.Out", "box_MissionBlockLayer_28.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_55();
    l0 = self.box_RemoveEntity_v2_23;
    l1 = self.box_RemoveEntity_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1019443512", "1019443512", "Intro_010_B80_BudgetMngr", "box_RemoveEntity_v2_23.Out", "box_RemoveEntity_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_47();
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_EntityStatusListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|405912030", "405912030", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_35.Enabled", "box_EntityStatusListener_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_35_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1499083914", "1499083914", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_35.Loaded", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_4();
    l0 = self.box_RemoveEntity_v2_6;
    l1 = self.box_RemoveEntity_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|865856393", "865856393", "Intro_010_B80_BudgetMngr", "box_RemoveEntity_v2_6.Out", "box_RemoveEntity_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_38_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1147218483", "1147218483", "Intro_010_B80_BudgetMngr", "box_MissionBlockLayer_38.Activated", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_36_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_36;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1455515068", "1455515068", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_36.Enter", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_36_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_36;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1261225695", "1261225695", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_36.OnOccupied", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_27_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_39();
    l0 = self.box_EntityStatusListener_27;
    l1 = self.box_ProximityTrigger_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|275952697", "275952697", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_27.Loaded", "box_ProximityTrigger_v2_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_21();
    l0 = self.box_Delay_v5_19;
    l1 = self.box_EntityStatusListener_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|539128950", "539128950", "Intro_010_B80_BudgetMngr", "box_Delay_v5_19.TimeElapsed", "box_EntityStatusListener_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_15_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = self.box_ProximityTrigger_v2_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|142886609", "142886609", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_15.Leave", "box_MissionBlockLayer_10.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_18;
    l1 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1503122555", "1503122555", "Intro_010_B80_BudgetMngr", "box_MultipleOR_18.Out", "box_OnceOnly_v3_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_47_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_48();
    l0 = self.box_EntityStatusListener_47;
    l1 = self.box_ProximityTrigger_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1453510072", "1453510072", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_47.Loaded", "box_ProximityTrigger_v2_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_5_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_5;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|697814760", "697814760", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_5.Enter", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_5_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_5;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|631641992", "631641992", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_5.OnOccupied", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_1();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1570899858", "1570899858", "Intro_010_B80_BudgetMngr", "box_Delay_v5_16.TimeElapsed", "box_MissionBlockLayer_1.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_44_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_7();
    l0 = self.box_EntityStatusListener_44;
    l1 = self.box_ProximityTrigger_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1505182696", "1505182696", "Intro_010_B80_BudgetMngr", "box_EntityStatusListener_44.Loaded", "box_ProximityTrigger_v2_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1096562666", "1096562666", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_22.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_22_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_1();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1425303533", "1425303533", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_22.Out", "box_MissionBlockLayer_1.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_12();
    l0 = self.box_ProximityTrigger_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|949277664", "949277664", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_22.Out", "box_ProximityTrigger_v2_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_48_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_ProximityTrigger_v2_48;
    l1 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|463863650", "463863650", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_48.Leave", "box_Delay_v5_50.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_56();
    l0 = self.box_RemoveEntity_v2_55;
    l1 = self.box_RemoveEntity_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1375789830", "1375789830", "Intro_010_B80_BudgetMngr", "box_RemoveEntity_v2_55.Out", "box_RemoveEntity_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_11_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_ProximityTrigger_v2_11;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|290716886", "290716886", "Intro_010_B80_BudgetMngr", "box_ProximityTrigger_v2_11.Leave", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1898459874", "1898459874", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_45.Out", "box_MissionBlockLayer_10.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_14();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|86960934", "86960934", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_45.Out", "box_MissionBlockLayer_14.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1128334243", "1128334243", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_45.Out", "box_EntityStatusListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_31();
    l0 = self.box_EntityStatusListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|552215538", "552215538", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_45.Out", "box_EntityStatusListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|332816011", "332816011", "Intro_010_B80_BudgetMngr", "box_OutputOrder_v2_45.Out", "box_EntityStatusListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_32();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_RemoveEntity_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1798463858", "1798463858", "Intro_010_B80_BudgetMngr", "box_Delay_v5_34.TimeElapsed", "box_RemoveEntity_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_RemoveEntity_v2_43()
    local params;
    params = {
        -- Group,
        [0] = "#0859A332",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|47495626");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160218914558134",
        -- missionLayerId,
        [1] = "36167443600062759",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|233047315");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_41_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_41_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160218914558134",
        -- missionLayerId,
        [1] = "54181842109557123",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_8()
    local params;
    params = {
        -- Group,
        [0] = "#33ACE4E0",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|248736756");
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
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 4,
        },
    });
    params = {
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
        [2] = "2104593863281857150",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_51()
    local params;
    params = {
        -- Group,
        [0] = "#23563A47",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|440886510");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160218914558134",
        -- missionLayerId,
        [1] = "27160252421004688",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|543271247");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160218036649871",
        -- missionLayerId,
        [1] = "27160244552438654",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103746025811412426",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103569358625324894",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|676187267");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_14_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_14_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160218036649871",
        -- missionLayerId,
        [1] = "27160254296415620",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|704557453");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_10_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_10_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160218914558134",
        -- missionLayerId,
        [1] = "45174642854809744",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|719015622");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_37_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_37_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160218914558134",
        -- missionLayerId,
        [1] = "36167443600062759",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_52()
    local params;
    params = {
        -- Group,
        [0] = "#02CAE4B5",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_9()
    local params;
    params = {
        -- Group,
        [0] = "#52A8D21D",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103085811825176709",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1091765423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_49_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_50()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103169418216490286",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104441198719571693",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_53()
    local params;
    params = {
        -- Group,
        [0] = "#2734E93C",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1311914408");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_1_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_1_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160218914558134",
        -- missionLayerId,
        [1] = "27160244345300184",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103746086884673242",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_4()
    local params;
    params = {
        -- Group,
        [0] = "#4BAB2D42",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104441198719571693",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_32()
    local params;
    params = {
        -- Group,
        [0] = "#AC290609",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_23()
    local params;
    params = {
        -- Group,
        [0] = "#963D3691",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103085811825176709",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_6()
    local params;
    params = {
        -- Group,
        [0] = "#7F5E93A4",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|1638411076");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_38_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160218914558134",
        -- missionLayerId,
        [1] = "54181842109557123",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103569336347278904",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103746025811412426",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_30()
    local params;
    params = {
        -- Group,
        [0] = "#E657C21E",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_54()
    local params;
    params = {
        -- Group,
        [0] = "#06A837CE",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103746086884673242",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101839312218772997",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103569384151859039",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103169418216490286",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_56()
    local params;
    params = {
        -- Group,
        [0] = "#7988921C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|2018271525");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
                [3] = self.f_box_OutputOrder_v2_22_Out_3,
                [5] = self.f_box_OutputOrder_v2_22_Out_5,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101839312218772997",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_55()
    local params;
    params = {
        -- Group,
        [0] = "#E22EC45B",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103746025811412426",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_BudgetMngr|2133113746");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
                [3] = self.f_box_OutputOrder_v2_45_Out_3,
                [4] = self.f_box_OutputOrder_v2_45_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.players = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
