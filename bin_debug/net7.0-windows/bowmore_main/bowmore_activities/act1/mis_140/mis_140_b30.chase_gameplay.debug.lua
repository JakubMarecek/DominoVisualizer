LUAC�; -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/mis_140/mis_140_b30.domino
-- User graph: Chase_Gameplay
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
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/ForceVehicleCrash_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.Chase_Gameplay.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")] = {
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
                name = "gasPedal",
                type = "float",
            },
            [1] = {
                name = "steeringWheel",
                type = "float",
            },
            [2] = {
                name = "useDamageFactor",
                type = "bool",
            },
            [3] = {
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
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
                name = "requiresPawnsActive",
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
    self._name = "Chase_Gameplay";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay";
    self.box_VehicleListener_v3_116 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1279152");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_116_OnSit,
    });
    self.box_Gate_v3_111 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|24624407");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_111_Out,
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|26509775");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_7_Out,
    });
    self.box_ProximityTrigger_v3_49 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|58518186");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_49_Enter,
    });
    self.box_Gate_v3_103 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|74197692");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_103_Out,
    });
    self.box_VehicleListener_v3_124 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|95061821");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_124_OnSit,
    });
    self.box_ProximityTrigger_v3_52 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|118559500");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_52_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_52_Enter,
    });
    self.box_ProximityTrigger_v3_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|134990964");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_1_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_1_Enter,
    });
    self.box_ProximityTrigger_v3_25 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|139295936");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_25_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_25_Enter,
    });
    self.box_ProximityTrigger_v3_2 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|168895697");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_2_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_2_Enter,
    });
    self.box_Gate_v3_104 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|174254345");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_104_Out,
    });
    self.box_ProximityTrigger_v3_77 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|266665827");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_77_Enter,
    });
    self.box_VehicleListener_v3_125 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|338404943");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_125_OnSit,
    });
    self.box_Gate_v3_106 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|411670908");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_106_Out,
    });
    self.box_SpawnAI_82 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|419722261");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_82_Spawned,
    });
    self.box_SpawnAI_48 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|437046770");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_48_Spawned,
    });
    self.box_ProximityTrigger_v3_86 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|501939864");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_86_Enter,
    });
    self.box_SpawnAI_62 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|510212825");
    l0:SetConnections({
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|536400439");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_31_Spawned,
    });
    self.box_Gate_v3_99 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|547480001");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_99_Out,
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|558495926");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_26_Spawned,
    });
    self.box_SpawnAI_59 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|576581633");
    l0:SetConnections({
    });
    self.box_MultipleOR_76 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|582787715");
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
        [0] = self.f_box_MultipleOR_76_Out,
    });
    self.box_ProximityTrigger_v3_32 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|601494142");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_32_Enter,
    });
    self.box_Gate_v3_102 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|629772346");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_102_Out,
    });
    self.box_ProximityTrigger_v3_60 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|650940401");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_60_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_60_Enter,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|656678232");
    l0:SetConnections({
    });
    self.box_SpawnAI_80 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|683159797");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_80_Spawned,
    });
    self.box_Gate_v3_107 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|692317287");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_107_Out,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|770196124");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_43_Spawned,
    });
    self.box_ProximityTrigger_v3_23 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|776787151");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_23_Enter,
    });
    self.box_ProximityTrigger_v3_114 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|815425419");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_114_Enter,
    });
    self.box_VehicleListener_v3_115 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|837569670");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_115_OnSit,
    });
    self.box_VehicleListener_v3_127 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|850610811");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_127_OnSit,
    });
    self.box_ProximityTrigger_v3_64 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|877842036");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_64_Enter,
    });
    self.box_ProximityTrigger_v3_65 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|899635237");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_65_Enter,
    });
    self.box_VehicleListener_v3_119 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|931560794");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_119_OnSit,
    });
    self.box_VehicleListener_v3_117 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|937556838");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_117_OnSit,
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|940398268");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_ProximityTrigger_v3_46 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|976179874");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_46_Enter,
    });
    self.box_VehicleListener_v3_122 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1000101779");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_122_OnSit,
    });
    self.box_ProximityTrigger_v3_79 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1003305670");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_79_Enter,
    });
    self.box_ProximityTrigger_v3_74 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1009878218");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_74_Enter,
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1026760996");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_22_Spawned,
    });
    self.box_ProximityTrigger_v3_93 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1045660767");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_93_Enter,
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1072308668");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1082470036");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1090687671");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_13_Spawned,
    });
    self.box_ProximityTrigger_v3_33 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1137736700");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_33_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_33_Enter,
    });
    self.box_Gate_v3_108 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1173146457");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_108_Out,
    });
    self.box_ProximityTrigger_v3_81 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1232044507");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_81_Enter,
    });
    self.box_ProximityTrigger_v3_75 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1275124746");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_75_Enter,
    });
    self.box_MultipleOR_97 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1303304321");
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
        [0] = self.f_box_MultipleOR_97_Out,
    });
    self.box_ProximityTrigger_v3_42 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1323680977");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_42_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_42_Enter,
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1335170315");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_Gate_v3_105 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1353944638");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_105_Out,
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1359104947");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_24_Spawned,
    });
    self.box_ProximityTrigger_v3_67 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1364665057");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_67_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_67_Enter,
    });
    self.box_ProximityTrigger_v3_41 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1445095654");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_41_Enter,
    });
    self.box_SpawnAI_53 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1493941916");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_53_Spawned,
    });
    self.box_VehicleListener_v3_126 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1543614860");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_126_OnSit,
    });
    self.box_ProximityTrigger_v3_95 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1546685224");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_95_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_95_Enter,
    });
    self.box_VehicleListener_v3_123 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1549680389");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_123_OnSit,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1569580085");
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
        [0] = self.f_box_MultipleOR_88_Out,
    });
    self.box_VehicleListener_v3_98 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1581726194");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_98_OnSit,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1628680133");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_ProximityTrigger_v3_54 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1642099613");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_54_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_54_Enter,
    });
    self.box_VehicleListener_v3_118 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1693244798");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_118_OnSit,
    });
    self.box_ProximityTrigger_v3_19 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1728283657");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_19_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_19_Enter,
    });
    self.box_Gate_v3_101 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1734995095");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_101_Out,
    });
    self.box_MultipleOR_91 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1743814563");
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
        [0] = self.f_box_MultipleOR_91_Out,
    });
    self.box_SpawnAI_61 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1786638530");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_61_Spawned,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1795240483");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_Gate_v3_109 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1828708279");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_109_Out,
    });
    self.box_ProximityTrigger_v3_38 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1830445348");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_38_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_38_Enter,
    });
    self.box_Gate_v3_112 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1859946007");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_112_Out,
    });
    self.box_ProximityTrigger_v3_35 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1862717682");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_35_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_35_Enter,
    });
    self.box_VehicleListener_v3_120 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1867838480");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_120_OnSit,
    });
    self.box_ProximityTrigger_v3_11 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1887020468");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_11_Enter,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1932774798");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_SpawnAI_92 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1944725325");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_92_Spawned,
    });
    self.box_SpawnAI_69 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1947210576");
    l0:SetConnections({
    });
    self.box_Gate_v3_113 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1960002660");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_113_Out,
    });
    self.box_VehicleListener_v3_121 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1967895133");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_121_OnSit,
    });
    self.box_ProximityTrigger_v3_3 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1988079648");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_3_Enter,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1988599279");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_ProximityTrigger_v3_45 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2033356336");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_45_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_45_Enter,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2046071080");
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_Gate_v3_110 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2072051401");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_110_Out,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2118043164");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_21_Spawned,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2129481007");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_ProximityTrigger_v3_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2143840636");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_30_Enter,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1040423373", "1040423373", "Chase_Gameplay", "In", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_116_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_102();
    l0 = self.box_VehicleListener_v3_116;
    l1 = self.box_Gate_v3_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|97503080", "97503080", "Chase_Gameplay", "box_VehicleListener_v3_116.OnSit", "box_Gate_v3_102.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_37();
    l0 = self.box_Gate_v3_111;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1836779633", "1836779633", "Chase_Gameplay", "box_Gate_v3_111.Out", "box_ForceVehicleCrash_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_98();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_VehicleListener_v3_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1287685811", "1287685811", "Chase_Gameplay", "box_SpawnAI_7.Out", "box_VehicleListener_v3_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_49_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_49;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|14087764", "14087764", "Chase_Gameplay", "box_ProximityTrigger_v3_49.Enter", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_8();
    l0 = self.box_Gate_v3_103;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|525620891", "525620891", "Chase_Gameplay", "box_Gate_v3_103.Out", "box_ForceVehicleCrash_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_124_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_110();
    l0 = self.box_VehicleListener_v3_124;
    l1 = self.box_Gate_v3_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1331540900", "1331540900", "Chase_Gameplay", "box_VehicleListener_v3_124.OnSit", "box_Gate_v3_110.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_52_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_74();
    l0 = self.box_ProximityTrigger_v3_52;
    l1 = self.box_ProximityTrigger_v3_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2076037053", "2076037053", "Chase_Gameplay", "box_ProximityTrigger_v3_52.Enabled", "box_ProximityTrigger_v3_74.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_52_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_82();
    l0 = self.box_ProximityTrigger_v3_52;
    l1 = self.box_SpawnAI_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1780274215", "1780274215", "Chase_Gameplay", "box_ProximityTrigger_v3_52.Enter", "box_SpawnAI_82.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_64();
    l0 = self.box_ProximityTrigger_v3_1;
    l1 = self.box_ProximityTrigger_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|98178001", "98178001", "Chase_Gameplay", "box_ProximityTrigger_v3_1.Enabled", "box_ProximityTrigger_v3_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_1_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_ProximityTrigger_v3_1;
    l1 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1275706306", "1275706306", "Chase_Gameplay", "box_ProximityTrigger_v3_1.Enter", "box_SpawnAI_43.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_25_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_79();
    l0 = self.box_ProximityTrigger_v3_25;
    l1 = self.box_ProximityTrigger_v3_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|701697999", "701697999", "Chase_Gameplay", "box_ProximityTrigger_v3_25.Enabled", "box_ProximityTrigger_v3_79.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_25_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_ProximityTrigger_v3_25;
    l1 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2015708581", "2015708581", "Chase_Gameplay", "box_ProximityTrigger_v3_25.Enter", "box_SpawnAI_22.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_49();
    l0 = self.box_ProximityTrigger_v3_2;
    l1 = self.box_ProximityTrigger_v3_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1402202465", "1402202465", "Chase_Gameplay", "box_ProximityTrigger_v3_2.Enabled", "box_ProximityTrigger_v3_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_2_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_53();
    l0 = self.box_ProximityTrigger_v3_2;
    l1 = self.box_SpawnAI_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|650887036", "650887036", "Chase_Gameplay", "box_ProximityTrigger_v3_2.Enter", "box_SpawnAI_53.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_15();
    l0 = self.box_Gate_v3_104;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1090175536", "1090175536", "Chase_Gameplay", "box_Gate_v3_104.Out", "box_ForceVehicleCrash_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_77_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_77;
    l1 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1168828498", "1168828498", "Chase_Gameplay", "box_ProximityTrigger_v3_77.Enter", "box_MultipleOR_97.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_125_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_111();
    l0 = self.box_VehicleListener_v3_125;
    l1 = self.box_Gate_v3_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2118485738", "2118485738", "Chase_Gameplay", "box_VehicleListener_v3_125.OnSit", "box_Gate_v3_111.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_5();
    l0 = self.box_Gate_v3_106;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|790961871", "790961871", "Chase_Gameplay", "box_Gate_v3_106.Out", "box_ForceVehicleCrash_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_82_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_125();
    l0 = self.box_SpawnAI_82;
    l1 = self.box_VehicleListener_v3_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1059437430", "1059437430", "Chase_Gameplay", "box_SpawnAI_82.Spawned", "box_VehicleListener_v3_125.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_48_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_118();
    l0 = self.box_SpawnAI_48;
    l1 = self.box_VehicleListener_v3_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1965337560", "1965337560", "Chase_Gameplay", "box_SpawnAI_48.Spawned", "box_VehicleListener_v3_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_86_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_86;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1276494664", "1276494664", "Chase_Gameplay", "box_ProximityTrigger_v3_86.Enter", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_31_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_123();
    l0 = self.box_SpawnAI_31;
    l1 = self.box_VehicleListener_v3_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|435515088", "435515088", "Chase_Gameplay", "box_SpawnAI_31.Spawned", "box_VehicleListener_v3_123.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_63();
    l0 = self.box_Gate_v3_99;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1380391416", "1380391416", "Chase_Gameplay", "box_Gate_v3_99.Out", "box_ForceVehicleCrash_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_26_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_127();
    l0 = self.box_SpawnAI_26;
    l1 = self.box_VehicleListener_v3_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1749076987", "1749076987", "Chase_Gameplay", "box_SpawnAI_26.Spawned", "box_VehicleListener_v3_127.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_113();
    l0 = self.box_MultipleOR_76;
    l1 = self.box_Gate_v3_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|233645480", "233645480", "Chase_Gameplay", "box_MultipleOR_76.Out", "box_Gate_v3_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_32_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_32;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|758974092", "758974092", "Chase_Gameplay", "box_ProximityTrigger_v3_32.Enter", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_102_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_87();
    l0 = self.box_Gate_v3_102;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|387313216", "387313216", "Chase_Gameplay", "box_Gate_v3_102.Out", "box_ForceVehicleCrash_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_60_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_30();
    l0 = self.box_ProximityTrigger_v3_60;
    l1 = self.box_ProximityTrigger_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1717212323", "1717212323", "Chase_Gameplay", "box_ProximityTrigger_v3_60.Enabled", "box_ProximityTrigger_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_60_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_ProximityTrigger_v3_60;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1020095329", "1020095329", "Chase_Gameplay", "box_ProximityTrigger_v3_60.Enter", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_80_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_120();
    l0 = self.box_SpawnAI_80;
    l1 = self.box_VehicleListener_v3_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2146764135", "2146764135", "Chase_Gameplay", "box_SpawnAI_80.Spawned", "box_VehicleListener_v3_120.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_47();
    l0 = self.box_Gate_v3_107;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|383703081", "383703081", "Chase_Gameplay", "box_Gate_v3_107.Out", "box_ForceVehicleCrash_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_43_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_126();
    l0 = self.box_SpawnAI_43;
    l1 = self.box_VehicleListener_v3_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|50725276", "50725276", "Chase_Gameplay", "box_SpawnAI_43.Spawned", "box_VehicleListener_v3_126.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_23_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_69();
    l0 = self.box_ProximityTrigger_v3_23;
    l1 = self.box_SpawnAI_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|583355128", "583355128", "Chase_Gameplay", "box_ProximityTrigger_v3_23.Enter", "box_SpawnAI_69.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_114_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_128();
    l0 = self.box_ProximityTrigger_v3_114;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1339766633", "1339766633", "Chase_Gameplay", "box_ProximityTrigger_v3_114.Enter", "box_SetContextualStrategy_128.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_115_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_VehicleListener_v3_115;
    l1 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|56955450", "56955450", "Chase_Gameplay", "box_VehicleListener_v3_115.OnSit", "box_Gate_v3_101.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_127_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_113();
    l0 = self.box_VehicleListener_v3_127;
    l1 = self.box_Gate_v3_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1551982700", "1551982700", "Chase_Gameplay", "box_VehicleListener_v3_127.OnSit", "box_Gate_v3_113.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_60();
    l0 = self.box_ProximityTrigger_v3_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|404601370", "404601370", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_19();
    l0 = self.box_ProximityTrigger_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1042423777", "1042423777", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_35();
    l0 = self.box_ProximityTrigger_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1054240022", "1054240022", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_2();
    l0 = self.box_ProximityTrigger_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1464215258", "1464215258", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_95();
    l0 = self.box_ProximityTrigger_v3_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|946513165", "946513165", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_95.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_54();
    l0 = self.box_ProximityTrigger_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|432839219", "432839219", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_45();
    l0 = self.box_ProximityTrigger_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1712228624", "1712228624", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_25();
    l0 = self.box_ProximityTrigger_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|388163132", "388163132", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_33();
    l0 = self.box_ProximityTrigger_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1538572897", "1538572897", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_67();
    l0 = self.box_ProximityTrigger_v3_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1052807349", "1052807349", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_38();
    l0 = self.box_ProximityTrigger_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|997355248", "997355248", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_52();
    l0 = self.box_ProximityTrigger_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1172631633", "1172631633", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_1();
    l0 = self.box_ProximityTrigger_v3_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1902099872", "1902099872", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_42();
    l0 = self.box_ProximityTrigger_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1828078267", "1828078267", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_11();
    l0 = self.box_ProximityTrigger_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|603353111", "603353111", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_23();
    l0 = self.box_ProximityTrigger_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|567083924", "567083924", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_3();
    l0 = self.box_ProximityTrigger_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|135500697", "135500697", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_114();
    l0 = self.box_ProximityTrigger_v3_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1001313126", "1001313126", "Chase_Gameplay", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_64_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1681220014", "1681220014", "Chase_Gameplay", "box_ProximityTrigger_v3_64.Enter", "box_MultipleOR_91.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_65_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_65;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1372145621", "1372145621", "Chase_Gameplay", "box_ProximityTrigger_v3_65.Enter", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_119_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_VehicleListener_v3_119;
    l1 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1361684912", "1361684912", "Chase_Gameplay", "box_VehicleListener_v3_119.OnSit", "box_Gate_v3_105.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_117_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_103();
    l0 = self.box_VehicleListener_v3_117;
    l1 = self.box_Gate_v3_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1718863206", "1718863206", "Chase_Gameplay", "box_VehicleListener_v3_117.OnSit", "box_Gate_v3_103.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_111();
    l0 = self.box_MultipleOR_71;
    l1 = self.box_Gate_v3_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|719676135", "719676135", "Chase_Gameplay", "box_MultipleOR_71.Out", "box_Gate_v3_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_46_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_46;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1407481372", "1407481372", "Chase_Gameplay", "box_ProximityTrigger_v3_46.Enter", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_122_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_108();
    l0 = self.box_VehicleListener_v3_122;
    l1 = self.box_Gate_v3_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1186142292", "1186142292", "Chase_Gameplay", "box_VehicleListener_v3_122.OnSit", "box_Gate_v3_108.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_79_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_79;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1668509429", "1668509429", "Chase_Gameplay", "box_ProximityTrigger_v3_79.Enter", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_74_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_74;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1584892191", "1584892191", "Chase_Gameplay", "box_ProximityTrigger_v3_74.Enter", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_22_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_121();
    l0 = self.box_SpawnAI_22;
    l1 = self.box_VehicleListener_v3_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|909648496", "909648496", "Chase_Gameplay", "box_SpawnAI_22.Spawned", "box_VehicleListener_v3_121.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_93_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_93;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|119824284", "119824284", "Chase_Gameplay", "box_ProximityTrigger_v3_93.Enter", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_107();
    l0 = self.box_MultipleOR_68;
    l1 = self.box_Gate_v3_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1791495458", "1791495458", "Chase_Gameplay", "box_MultipleOR_68.Out", "box_Gate_v3_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_106();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_Gate_v3_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1589132310", "1589132310", "Chase_Gameplay", "box_MultipleOR_16.Out", "box_Gate_v3_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_13_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_124();
    l0 = self.box_SpawnAI_13;
    l1 = self.box_VehicleListener_v3_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1208900937", "1208900937", "Chase_Gameplay", "box_SpawnAI_13.Spawned", "box_VehicleListener_v3_124.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_41();
    l0 = self.box_ProximityTrigger_v3_33;
    l1 = self.box_ProximityTrigger_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1224029143", "1224029143", "Chase_Gameplay", "box_ProximityTrigger_v3_33.Enabled", "box_ProximityTrigger_v3_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_33_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_ProximityTrigger_v3_33;
    l1 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|311992067", "311992067", "Chase_Gameplay", "box_ProximityTrigger_v3_33.Enter", "box_SpawnAI_21.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_34();
    l0 = self.box_Gate_v3_108;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|262267080", "262267080", "Chase_Gameplay", "box_Gate_v3_108.Out", "box_ForceVehicleCrash_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_81_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_81;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2093226353", "2093226353", "Chase_Gameplay", "box_ProximityTrigger_v3_81.Enter", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_75_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_75;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|699504749", "699504749", "Chase_Gameplay", "box_ProximityTrigger_v3_75.Enter", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_110();
    l0 = self.box_MultipleOR_97;
    l1 = self.box_Gate_v3_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1114869565", "1114869565", "Chase_Gameplay", "box_MultipleOR_97.Out", "box_Gate_v3_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_65();
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_ProximityTrigger_v3_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|125707801", "125707801", "Chase_Gameplay", "box_ProximityTrigger_v3_42.Enabled", "box_ProximityTrigger_v3_65.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_42_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|57545362", "57545362", "Chase_Gameplay", "box_ProximityTrigger_v3_42.Enter", "box_SpawnAI_26.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_103();
    l0 = self.box_MultipleOR_66;
    l1 = self.box_Gate_v3_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1195848497", "1195848497", "Chase_Gameplay", "box_MultipleOR_66.Out", "box_Gate_v3_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_29();
    l0 = self.box_Gate_v3_105;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2036532735", "2036532735", "Chase_Gameplay", "box_Gate_v3_105.Out", "box_ForceVehicleCrash_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_24_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_116();
    l0 = self.box_SpawnAI_24;
    l1 = self.box_VehicleListener_v3_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|101066656", "101066656", "Chase_Gameplay", "box_SpawnAI_24.Spawned", "box_VehicleListener_v3_116.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_67_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_75();
    l0 = self.box_ProximityTrigger_v3_67;
    l1 = self.box_ProximityTrigger_v3_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1212318384", "1212318384", "Chase_Gameplay", "box_ProximityTrigger_v3_67.Enabled", "box_ProximityTrigger_v3_75.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_67_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_ProximityTrigger_v3_67;
    l1 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1311748712", "1311748712", "Chase_Gameplay", "box_ProximityTrigger_v3_67.Enter", "box_SpawnAI_31.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_41_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_41;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2083788639", "2083788639", "Chase_Gameplay", "box_ProximityTrigger_v3_41.Enter", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_53_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_117();
    l0 = self.box_SpawnAI_53;
    l1 = self.box_VehicleListener_v3_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|381499030", "381499030", "Chase_Gameplay", "box_SpawnAI_53.Spawned", "box_VehicleListener_v3_117.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_126_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_112();
    l0 = self.box_VehicleListener_v3_126;
    l1 = self.box_Gate_v3_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|952309616", "952309616", "Chase_Gameplay", "box_VehicleListener_v3_126.OnSit", "box_Gate_v3_112.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_95_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_32();
    l0 = self.box_ProximityTrigger_v3_95;
    l1 = self.box_ProximityTrigger_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|468525503", "468525503", "Chase_Gameplay", "box_ProximityTrigger_v3_95.Enabled", "box_ProximityTrigger_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_95_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_48();
    l0 = self.box_ProximityTrigger_v3_95;
    l1 = self.box_SpawnAI_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1280023162", "1280023162", "Chase_Gameplay", "box_ProximityTrigger_v3_95.Enter", "box_SpawnAI_48.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_123_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_109();
    l0 = self.box_VehicleListener_v3_123;
    l1 = self.box_Gate_v3_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1703849364", "1703849364", "Chase_Gameplay", "box_VehicleListener_v3_123.OnSit", "box_Gate_v3_109.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_MultipleOR_88;
    l1 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|541820919", "541820919", "Chase_Gameplay", "box_MultipleOR_88.Out", "box_Gate_v3_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_98_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_99();
    l0 = self.box_VehicleListener_v3_98;
    l1 = self.box_Gate_v3_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|494696688", "494696688", "Chase_Gameplay", "box_VehicleListener_v3_98.OnSit", "box_Gate_v3_99.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_59();
    l0 = self.box_SpawnAI_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1937255802", "1937255802", "Chase_Gameplay", "box_OutputOrder_v2_85.Out", "box_SpawnAI_59.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_62();
    l0 = self.box_SpawnAI_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|611625392", "611625392", "Chase_Gameplay", "box_OutputOrder_v2_85.Out", "box_SpawnAI_62.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_MultipleOR_51;
    l1 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|63674397", "63674397", "Chase_Gameplay", "box_MultipleOR_51.Out", "box_Gate_v3_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_54_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_93();
    l0 = self.box_ProximityTrigger_v3_54;
    l1 = self.box_ProximityTrigger_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|901380752", "901380752", "Chase_Gameplay", "box_ProximityTrigger_v3_54.Enabled", "box_ProximityTrigger_v3_93.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_54_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_61();
    l0 = self.box_ProximityTrigger_v3_54;
    l1 = self.box_SpawnAI_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|653383378", "653383378", "Chase_Gameplay", "box_ProximityTrigger_v3_54.Enter", "box_SpawnAI_61.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_118_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_VehicleListener_v3_118;
    l1 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1580842182", "1580842182", "Chase_Gameplay", "box_VehicleListener_v3_118.OnSit", "box_Gate_v3_104.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_19_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_86();
    l0 = self.box_ProximityTrigger_v3_19;
    l1 = self.box_ProximityTrigger_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1244442615", "1244442615", "Chase_Gameplay", "box_ProximityTrigger_v3_19.Enabled", "box_ProximityTrigger_v3_86.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_19_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_92();
    l0 = self.box_ProximityTrigger_v3_19;
    l1 = self.box_SpawnAI_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|216330030", "216330030", "Chase_Gameplay", "box_ProximityTrigger_v3_19.Enter", "box_SpawnAI_92.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_101_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_50();
    l0 = self.box_Gate_v3_101;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|855433332", "855433332", "Chase_Gameplay", "box_Gate_v3_101.Out", "box_ForceVehicleCrash_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_112();
    l0 = self.box_MultipleOR_91;
    l1 = self.box_Gate_v3_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1350234646", "1350234646", "Chase_Gameplay", "box_MultipleOR_91.Out", "box_Gate_v3_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_61_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_119();
    l0 = self.box_SpawnAI_61;
    l1 = self.box_VehicleListener_v3_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|694310460", "694310460", "Chase_Gameplay", "box_SpawnAI_61.Spawned", "box_VehicleListener_v3_119.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_99();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_Gate_v3_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1740427882", "1740427882", "Chase_Gameplay", "box_MultipleOR_4.Out", "box_Gate_v3_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_12();
    l0 = self.box_Gate_v3_109;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1627948429", "1627948429", "Chase_Gameplay", "box_Gate_v3_109.Out", "box_ForceVehicleCrash_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_77();
    l0 = self.box_ProximityTrigger_v3_38;
    l1 = self.box_ProximityTrigger_v3_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1696655682", "1696655682", "Chase_Gameplay", "box_ProximityTrigger_v3_38.Enabled", "box_ProximityTrigger_v3_77.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_38_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_ProximityTrigger_v3_38;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|289985131", "289985131", "Chase_Gameplay", "box_ProximityTrigger_v3_38.Enter", "box_SpawnAI_13.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_58();
    l0 = self.box_Gate_v3_112;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|82995787", "82995787", "Chase_Gameplay", "box_Gate_v3_112.Out", "box_ForceVehicleCrash_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_46();
    l0 = self.box_ProximityTrigger_v3_35;
    l1 = self.box_ProximityTrigger_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1513936740", "1513936740", "Chase_Gameplay", "box_ProximityTrigger_v3_35.Enabled", "box_ProximityTrigger_v3_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_35_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_ProximityTrigger_v3_35;
    l1 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1905440196", "1905440196", "Chase_Gameplay", "box_ProximityTrigger_v3_35.Enter", "box_SpawnAI_24.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_120_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_106();
    l0 = self.box_VehicleListener_v3_120;
    l1 = self.box_Gate_v3_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|300814532", "300814532", "Chase_Gameplay", "box_VehicleListener_v3_120.OnSit", "box_Gate_v3_106.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_11_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_ProximityTrigger_v3_11;
    l1 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|390070556", "390070556", "Chase_Gameplay", "box_ProximityTrigger_v3_11.Enter", "box_SpawnAI_28.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|152640781", "152640781", "Chase_Gameplay", "box_MultipleOR_36.Out", "box_Gate_v3_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_92_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_115();
    l0 = self.box_SpawnAI_92;
    l1 = self.box_VehicleListener_v3_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1786859467", "1786859467", "Chase_Gameplay", "box_SpawnAI_92.Spawned", "box_VehicleListener_v3_115.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_113_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_6();
    l0 = self.box_Gate_v3_113;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1806803734", "1806803734", "Chase_Gameplay", "box_Gate_v3_113.Out", "box_ForceVehicleCrash_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_121_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_107();
    l0 = self.box_VehicleListener_v3_121;
    l1 = self.box_Gate_v3_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2045559052", "2045559052", "Chase_Gameplay", "box_VehicleListener_v3_121.OnSit", "box_Gate_v3_107.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_3_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = self.box_ProximityTrigger_v3_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|876828204", "876828204", "Chase_Gameplay", "box_ProximityTrigger_v3_3.Enter", "box_OutputOrder_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_109();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_Gate_v3_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|917648957", "917648957", "Chase_Gameplay", "box_MultipleOR_39.Out", "box_Gate_v3_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_81();
    l0 = self.box_ProximityTrigger_v3_45;
    l1 = self.box_ProximityTrigger_v3_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|758753920", "758753920", "Chase_Gameplay", "box_ProximityTrigger_v3_45.Enabled", "box_ProximityTrigger_v3_81.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_45_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_80();
    l0 = self.box_ProximityTrigger_v3_45;
    l1 = self.box_SpawnAI_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|586583362", "586583362", "Chase_Gameplay", "box_ProximityTrigger_v3_45.Enter", "box_SpawnAI_80.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_102();
    l0 = self.box_MultipleOR_78;
    l1 = self.box_Gate_v3_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1841420850", "1841420850", "Chase_Gameplay", "box_MultipleOR_78.Out", "box_Gate_v3_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_73();
    l0 = self.box_Gate_v3_110;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1033249772", "1033249772", "Chase_Gameplay", "box_Gate_v3_110.Out", "box_ForceVehicleCrash_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_21_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_122();
    l0 = self.box_SpawnAI_21;
    l1 = self.box_VehicleListener_v3_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|397538728", "397538728", "Chase_Gameplay", "box_SpawnAI_21.Spawned", "box_VehicleListener_v3_122.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_108();
    l0 = self.box_MultipleOR_27;
    l1 = self.box_Gate_v3_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1202848869", "1202848869", "Chase_Gameplay", "box_MultipleOR_27.Out", "box_Gate_v3_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_30_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|401534735", "401534735", "Chase_Gameplay", "box_ProximityTrigger_v3_30.Enter", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_VehicleListener_v3_116()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108210193323059815",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|21833756");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108210193323059815",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_111()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108126883215332500",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108211542580340324",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_103()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|78554775");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2109371514169116391",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_124()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2109162996287675534",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109163133737115038",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108211542580340324",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108639942828629084",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108211514212165137",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_104()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|213365355");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108639930373643257",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_77()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108211514212165137",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|332254956");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2109164055986977554",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_125()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2109163118478237021",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|383137272");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2109163118478237021",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_106()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_82()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109163118463556942",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_48()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108253631716277091",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108128640903425393",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_62()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109396982981235168",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109162375880927910",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_99()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109371514156533470",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_59()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109385198639582918",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108291285287722051",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|610651020");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2109162996287675534",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_102()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108127270911628686",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108901285584497535",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|657737711");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108211498686948804",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_80()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108638840114649741",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_107()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109164055976491781",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108638863751650053",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108640001221729416",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|833844444");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2109162375891413683",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_115()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108208606963847914",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_127()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2109371514169116391",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|870806266");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 19,
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
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [3] = self.f_box_OutputOrder_v2_10_Out_3,
                [4] = self.f_box_OutputOrder_v2_10_Out_4,
                [5] = self.f_box_OutputOrder_v2_10_Out_5,
                [6] = self.f_box_OutputOrder_v2_10_Out_6,
                [7] = self.f_box_OutputOrder_v2_10_Out_7,
                [8] = self.f_box_OutputOrder_v2_10_Out_8,
                [9] = self.f_box_OutputOrder_v2_10_Out_9,
                [10] = self.f_box_OutputOrder_v2_10_Out_10,
                [11] = self.f_box_OutputOrder_v2_10_Out_11,
                [12] = self.f_box_OutputOrder_v2_10_Out_12,
                [13] = self.f_box_OutputOrder_v2_10_Out_13,
                [15] = self.f_box_OutputOrder_v2_10_Out_15,
                [16] = self.f_box_OutputOrder_v2_10_Out_16,
                [17] = self.f_box_OutputOrder_v2_10_Out_17,
                [18] = self.f_box_OutputOrder_v2_10_Out_18,
            },
            count = 19,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108637491603974593",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|877859937");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108253720509692963",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_65()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108640001221729416",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_119()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108253720509692963",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_117()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108211498686948804",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|951386447");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108253641681943483",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108211208346732744",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_122()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108819848495648091",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108640001221729416",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_74()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108640001221729416",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108639930363157484",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_93()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108291351566113903",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109162996277189761",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1102033271");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108208606963847914",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108819855187660155",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1167020371");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108819848495648091",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_108()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108638989436066630",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1238221077");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108126900728649040",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108210206663043825",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109371556441409336",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_105()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108210193289505365",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109162404909706023",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109162404909706023",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_53()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108211498668074420",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_126()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2109164055986977554",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_95()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108291259731827757",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_123()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2109162375891413683",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_98()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108126900728649040",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1606014548");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108291342741298274",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_118()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108253641681943483",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108128601084800049",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_101()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_61()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108253720501304346",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_109()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109162453181950797",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_112()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108210206663043825",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_120()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108638840133524125",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108211514212165137",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|1927040827");
    l0:SetConnections({
    });
    params = {
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2108638840133524125",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_92()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108208606942876378",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_69()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108901362082311198",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_113()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_121()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2108639930373643257",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109287050134954919",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108638863751650053",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@Chase_Gameplay|2037583241");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109940740686643599",
        -- Group,
        [1] = "#7DBDAD40",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_110()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108819848476773707",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108128640903425393",
    };
    return params;
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
