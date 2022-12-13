LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b20.domino
-- User graph: MIS_330_MissionLimits
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Interior Limit" Type="Core|bool" />
    <DataIn Name="Sas Limit" Type="Core|bool" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_MissionLimits.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Interior_Limit",
                type = "bool",
            },
            [1] = {
                name = "Sas_Limit",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
            },
        },
        controlInCount = 4,
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_330_MissionLimits";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits";
    self.gp_FriendlyPlayers = nil;
    self.e_PlayerVehicle = nil;
    self.e_collider = nil;
    self.box_ProximityTrigger_v3_8 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|59132126");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_8_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_8_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_8_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_8_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_8_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_8_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_8_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_8_Use,
    });
    self.box_TeleportPawns_19 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|425917366");
    l0:SetConnections({
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|757678960");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_TeleportPawns_11 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|820033915");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_11_Out,
    });
    self.box_TeleportPawns_17 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|857555511");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_17_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|917798225");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_ProximityTrigger_v3_21 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|960610548");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_21_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_21_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_21_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_21_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_21_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_21_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_21_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_21_Use,
    });
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1028449131");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 2,
        },
    });
    self.box_TeleportPawns_2 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1050339322");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_2_Out,
    });
    self.box_TeleportPawns_15 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1126961390");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_15_Out,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1788460904");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_10 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1818196346");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_10_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_10_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_10_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_10_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_10_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_10_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_10_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_10_Use,
    });
    self.box_Random_12 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1948401790");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_12_Output_0,
                [1] = self.f_box_Random_12_Output_1,
                [2] = self.f_box_Random_12_Output_2,
                [3] = self.f_box_Random_12_Output_3,
            },
            count = 4,
        },
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1959306550");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|2039629746");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v3_21();
    l0 = self.box_ProximityTrigger_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1500963637", "1500963637", "MIS_330_MissionLimits", "Disable", "box_ProximityTrigger_v3_21.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_TriggerState_v2_3();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1976827563", "1976827563", "MIS_330_MissionLimits", "Disable", "box_TriggerState_v2_3.SetDisabled", self, l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ProximityTrigger_v3_10();
    l0 = self.box_ProximityTrigger_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1321455142", "1321455142", "MIS_330_MissionLimits", "Disable", "box_ProximityTrigger_v3_10.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_8();
    l0 = self.box_ProximityTrigger_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1923012569", "1923012569", "MIS_330_MissionLimits", "Disable", "box_ProximityTrigger_v3_8.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1520552778", "1520552778", "MIS_330_MissionLimits", "In", "box_GetPlayerGroup_v2_6.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_8_Enabled()
    self:OnExit_box_ProximityTrigger_v3_8_Enabled();
end;

function export:f_box_ProximityTrigger_v3_8_Enter()
    self:OnExit_box_ProximityTrigger_v3_8_Enter();
end;

function export:f_box_ProximityTrigger_v3_8_Leave()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v3_8_Leave();
    l0 = self.box_ProximityTrigger_v3_8;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1530035445", "1530035445", "MIS_330_MissionLimits", "box_ProximityTrigger_v3_8.Leave", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_8_OnEmpty()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_8_OnEmpty();
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_ProximityTrigger_v3_8;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1702964415", "1702964415", "MIS_330_MissionLimits", "box_ProximityTrigger_v3_8.OnEmpty", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_8_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_8_OnOccupied();
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_ProximityTrigger_v3_8;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|481661332", "481661332", "MIS_330_MissionLimits", "box_ProximityTrigger_v3_8.OnOccupied", "box_Delay_v5_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v3_8_Use()
    self:OnExit_box_ProximityTrigger_v3_8_Use();
end;

function export:f_box_TriggerState_v2_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_10();
    l0 = self.box_ProximityTrigger_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|942327876", "942327876", "MIS_330_MissionLimits", "box_TriggerState_v2_23.Enabled", "box_ProximityTrigger_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_7_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_7_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_19();
    l0 = self.box_TeleportPawns_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1266370409", "1266370409", "MIS_330_MissionLimits", "box_GetPawnVehicleInfo_7.InVehicle", "box_TeleportPawns_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetPawnVehicleInfo_7_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_7_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_7_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_7_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_12();
    l0 = self.box_Random_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1943905830", "1943905830", "MIS_330_MissionLimits", "box_GetPawnVehicleInfo_7.Out", "box_Random_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_TriggerState_v2_24_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_21();
    l0 = self.box_ProximityTrigger_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|105790847", "105790847", "MIS_330_MissionLimits", "box_TriggerState_v2_24.Enabled", "box_ProximityTrigger_v3_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_13();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|618367909", "618367909", "MIS_330_MissionLimits", "box_MultipleOR_14.Out", "box_Simple_Node_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|134082045", "134082045", "MIS_330_MissionLimits", "box_Simple_Node_13.Out", "box_OnceOnly_v3_16.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_TeleportPawns_11_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_11;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1231051044", "1231051044", "MIS_330_MissionLimits", "box_TeleportPawns_11.Out", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TeleportPawns_17_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_17;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1275217919", "1275217919", "MIS_330_MissionLimits", "box_TeleportPawns_17.Out", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|2122153331", "2122153331", "MIS_330_MissionLimits", "box_MultipleOR_1.Out", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_21_Enabled()
    self:OnExit_box_ProximityTrigger_v3_21_Enabled();
end;

function export:f_box_ProximityTrigger_v3_21_Enter()
    self:OnExit_box_ProximityTrigger_v3_21_Enter();
end;

function export:f_box_ProximityTrigger_v3_21_Leave()
    self:OnExit_box_ProximityTrigger_v3_21_Leave();
end;

function export:f_box_ProximityTrigger_v3_21_OnEmpty()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_21_OnEmpty();
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_ProximityTrigger_v3_21;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|932119245", "932119245", "MIS_330_MissionLimits", "box_ProximityTrigger_v3_21.OnEmpty", "box_Delay_v5_22.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v3_21_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_21_OnOccupied();
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_ProximityTrigger_v3_21;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|799556161", "799556161", "MIS_330_MissionLimits", "box_ProximityTrigger_v3_21.OnOccupied", "box_Delay_v5_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_21_Use()
    self:OnExit_box_ProximityTrigger_v3_21_Use();
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_7();
    l0 = self.box_OnceOnly_v3_16;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1232305908", "1232305908", "MIS_330_MissionLimits", "box_OnceOnly_v3_16.Out", "box_GetPawnVehicleInfo_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_2_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_2;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1130390171", "1130390171", "MIS_330_MissionLimits", "box_TeleportPawns_2.Out", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TeleportPawns_15_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_15;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|729651454", "729651454", "MIS_330_MissionLimits", "box_TeleportPawns_15.Out", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Compare_Boolean_20_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_24();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|387026831", "387026831", "MIS_330_MissionLimits", "box_Compare_Boolean_20.A_is_True", "box_TriggerState_v2_24.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_18_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_23();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1236781388", "1236781388", "MIS_330_MissionLimits", "box_Compare_Boolean_18.A_is_True", "box_TriggerState_v2_23.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|27395712", "27395712", "MIS_330_MissionLimits", "box_Delay_v5_4.TimeElapsed", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_10_Enabled()
    self:OnExit_box_ProximityTrigger_v3_10_Enabled();
end;

function export:f_box_ProximityTrigger_v3_10_Enter()
    self:OnExit_box_ProximityTrigger_v3_10_Enter();
end;

function export:f_box_ProximityTrigger_v3_10_Leave()
    self:OnExit_box_ProximityTrigger_v3_10_Leave();
end;

function export:f_box_ProximityTrigger_v3_10_OnEmpty()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_10_OnEmpty();
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_ProximityTrigger_v3_10;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1050809520", "1050809520", "MIS_330_MissionLimits", "box_ProximityTrigger_v3_10.OnEmpty", "box_Delay_v5_5.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v3_10_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_10_OnOccupied();
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_ProximityTrigger_v3_10;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1824091530", "1824091530", "MIS_330_MissionLimits", "box_ProximityTrigger_v3_10.OnOccupied", "box_Delay_v5_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_10_Use()
    self:OnExit_box_ProximityTrigger_v3_10_Use();
end;

function export:f_box_TriggerState_v2_3_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_8();
    l0 = self.box_ProximityTrigger_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|2038142019", "2038142019", "MIS_330_MissionLimits", "box_TriggerState_v2_3.Enabled", "box_ProximityTrigger_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Random_12_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_2();
    l0 = self.box_Random_12;
    l1 = self.box_TeleportPawns_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|754652926", "754652926", "MIS_330_MissionLimits", "box_Random_12.Output", "box_TeleportPawns_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_12_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_11();
    l0 = self.box_Random_12;
    l1 = self.box_TeleportPawns_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|860126781", "860126781", "MIS_330_MissionLimits", "box_Random_12.Output", "box_TeleportPawns_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_12_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_17();
    l0 = self.box_Random_12;
    l1 = self.box_TeleportPawns_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|996031299", "996031299", "MIS_330_MissionLimits", "box_Random_12.Output", "box_TeleportPawns_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_12_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_15();
    l0 = self.box_Random_12;
    l1 = self.box_TeleportPawns_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1745454541", "1745454541", "MIS_330_MissionLimits", "box_Random_12.Output", "box_TeleportPawns_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_22;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|2121290181", "2121290181", "MIS_330_MissionLimits", "box_Delay_v5_22.TimeElapsed", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|379890056", "379890056", "MIS_330_MissionLimits", "box_GetPlayerGroup_v2_6.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_3();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|615957742", "615957742", "MIS_330_MissionLimits", "box_OutputOrder_v2_9.Out", "box_TriggerState_v2_3.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_18();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1413936409", "1413936409", "MIS_330_MissionLimits", "box_OutputOrder_v2_9.Out", "box_Compare_Boolean_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_20();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|358882997", "358882997", "MIS_330_MissionLimits", "box_OutputOrder_v2_9.Out", "box_Compare_Boolean_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_5;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1120105825", "1120105825", "MIS_330_MissionLimits", "box_Delay_v5_5.TimeElapsed", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_ProximityTrigger_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gp_FriendlyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108486765036711484",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|388520460");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_23_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109384267315307196",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_19()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109552731405430162",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.e_PlayerVehicle,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|527172497");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_7_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_7_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_7_Out,
    });
    params = {
        -- pawn,
        [0] = self.e_collider,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|737775845");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_24_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109274540306608347",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|799720219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_11()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109384351394325368",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.e_collider,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_17()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109384352956703612",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.e_collider,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_21()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gp_FriendlyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109274540306608347",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_2()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108486833647136429",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.e_collider,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_15()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109384354227577728",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.e_collider,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1663164474");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_20_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Sas_Limit,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1689187467");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_18_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Interior_Limit,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gp_FriendlyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109384267315307196",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1860022031");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_3_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108486765036711484",
    };
    return params;
end;

function export:OnEnter_box_Random_12()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1988841007");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_MissionLimits|1992913461");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnExit_box_ProximityTrigger_v3_8_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_7_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_7_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.e_PlayerVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_ProximityTrigger_v3_21_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v3_21;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_21_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v3_21;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_21_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v3_21;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_21_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v3_21;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_21_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v3_21;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_21_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v3_21;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.e_collider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gp_FriendlyPlayers = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Interior_Limit" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="Sas_Limit" AnchorDynType="0" DataTypeID="bool" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
