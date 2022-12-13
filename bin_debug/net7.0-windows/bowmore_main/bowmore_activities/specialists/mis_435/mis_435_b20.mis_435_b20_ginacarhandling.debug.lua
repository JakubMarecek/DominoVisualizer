LUACc -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_435/mis_435_b20.domino
-- User graph: MIS_435_B20_GinaCarHandling
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
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleHealthListener_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_B20_CarDestruction.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3645490129.bnk]], "CSoundResource");
        cboxRes:LoadResource([[767264659.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2778928548.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_B20_GinaCarHandling.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/FloatArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "A",
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/VehicleHealthListener_v2.lua")] = {
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
                name = "HealthChanged",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
            },
            [1] = {
                name = "Instigator",
                type = "entity",
            },
            [2] = {
                name = "MaxHealth",
                type = "float",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_B20_CarDestruction.debug.lua")] = {
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
            [1] = {
                name = "Vehicle_Destroyed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
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
    self._name = "MIS_435_B20_GinaCarHandling";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling";
    self.Out = DummyFunction;
    self.Fail = DummyFunction;
    self.e_Gina = nil;
    self.f_MaxHealth = 0;
    self.f_CurrentHealth = 0;
    self.f_Percentage = 0;
    self.f_Intermediate = 0;
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|92522989");
    l0:SetConnections({
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_21_Stopped,
    });
    self.box_MIS_435_B20_CarDestruction_33 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_B20_CarDestruction.debug.lua");
    l0 = self.box_MIS_435_B20_CarDestruction_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_B20_CarDestruction_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|232397393");
    l0:SetConnections({
        -- Vehicle Destroyed,
        [1] = self.f_box_MIS_435_B20_CarDestruction_33_Vehicle_Destroyed,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|249334383");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_OnceOnly_v3_23 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|285133035");
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
                [0] = self.f_box_OnceOnly_v3_23_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|366272582");
    l0:SetConnections({
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_20_Stopped,
    });
    self.box_PlayDialog_v6_17 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|390812638");
    l0:SetConnections({
    });
    self.box_VehicleDamageListener_v2_6 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|409858929");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_6_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_6_Disabled,
    });
    self.box_Gate_v3_14 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|449317556");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_14_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_14_Out,
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|512672314");
    l0:SetConnections({
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_22_Stopped,
    });
    self.box_MIS_435_B20_CarDestruction_3 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_B20_CarDestruction.debug.lua");
    l0 = self.box_MIS_435_B20_CarDestruction_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_B20_CarDestruction_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|587885357");
    l0:SetConnections({
        -- Vehicle Destroyed,
        [1] = self.f_box_MIS_435_B20_CarDestruction_3_Vehicle_Destroyed,
    });
    self.box_HealthListener_v6_7 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|748589566");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_7_Killed,
    });
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|802892368");
    l0:SetConnections({
    });
    self.box_VehicleHealthListener_v2_2 = cbox:CreateBox("Domino/System/VehicleHealthListener_v2.lua");
    l0 = self.box_VehicleHealthListener_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleHealthListener_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1100432110");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleHealthListener_v2_2_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleHealthListener_v2_2_Enabled,
        -- HealthChanged,
        [2] = self.f_box_VehicleHealthListener_v2_2_HealthChanged,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1194428024");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_Gate_v3_15 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1362942627");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_15_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_15_Out,
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1484023470");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1580122742");
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
                [0] = self.f_box_OnceOnly_v3_19_Out_0,
            },
            count = 2,
        },
    });
    self.box_CharacterLoadedIdListener_v2_1 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1659507438");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_1_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_1_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_1_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_1_LoadedIdReceived,
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1877190672");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_Gate_v3_27 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1931349967");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_27_Out,
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1945870627");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|2127211566");
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
    self.box_OnceOnly_v3_24 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|2144222623");
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
                [0] = self.f_box_OnceOnly_v3_24_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|149736292", "149736292", "MIS_435_B20_GinaCarHandling", "In", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_21_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_PlayDialog_v6_21;
    l1 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|956200400", "956200400", "MIS_435_B20_GinaCarHandling", "box_PlayDialog_v6_21.Stopped", "box_PlayDialog_v6_18.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MIS_435_B20_CarDestruction_33_Vehicle_Destroyed()
    local l0, l1;
    l0 = self.box_MIS_435_B20_CarDestruction_33;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1650091299", "1650091299", "MIS_435_B20_GinaCarHandling", "box_MIS_435_B20_CarDestruction_33.Vehicle Destroyed", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Floats_9_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1276848800", "1276848800", "MIS_435_B20_GinaCarHandling", "box_Compare_Floats_9.A_le_B", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|811285286", "811285286", "MIS_435_B20_GinaCarHandling", "box_MultipleOR_5.Out", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|69215520", "69215520", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_28.Out", "box_PlayDialog_v6_20.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|914545986", "914545986", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_28.Out", "box_Gate_v3_14.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_23_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_OnceOnly_v3_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1636541162", "1636541162", "MIS_435_B20_GinaCarHandling", "box_OnceOnly_v3_23.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_13_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1288914160", "1288914160", "MIS_435_B20_GinaCarHandling", "box_Compare_Floats_13.A_le_B", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_20_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|332564709", "332564709", "MIS_435_B20_GinaCarHandling", "box_PlayDialog_v6_20.Stopped", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_10_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_11();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1574139839", "1574139839", "MIS_435_B20_GinaCarHandling", "box_FloatArithmetics_v2_10.Out", "box_FloatArithmetics_v2_11.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_6_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_6;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1115809961", "1115809961", "MIS_435_B20_GinaCarHandling", "box_VehicleDamageListener_v2_6.Destroyed", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_6_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_B20_CarDestruction_3();
    l0 = self.box_VehicleDamageListener_v2_6;
    l1 = self.box_MIS_435_B20_CarDestruction_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|181220714", "181220714", "MIS_435_B20_GinaCarHandling", "box_VehicleDamageListener_v2_6.Disabled", "box_MIS_435_B20_CarDestruction_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_14_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Gate_v3_14;
    l1 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|923489740", "923489740", "MIS_435_B20_GinaCarHandling", "box_Gate_v3_14.Closed", "box_Gate_v3_15.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_9();
    l0 = self.box_Gate_v3_14;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1618064948", "1618064948", "MIS_435_B20_GinaCarHandling", "box_Gate_v3_14.Out", "box_Compare_Floats_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_22_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_17();
    l0 = self.box_PlayDialog_v6_22;
    l1 = self.box_PlayDialog_v6_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|504042430", "504042430", "MIS_435_B20_GinaCarHandling", "box_PlayDialog_v6_22.Stopped", "box_PlayDialog_v6_17.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MIS_435_B20_CarDestruction_3_Vehicle_Destroyed()
    local l0, l1;
    l0 = self.box_MIS_435_B20_CarDestruction_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|242082040", "242082040", "MIS_435_B20_GinaCarHandling", "box_MIS_435_B20_CarDestruction_3.Vehicle Destroyed", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_7_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_B20_CarDestruction_33();
    l0 = self.box_HealthListener_v6_7;
    l1 = self.box_MIS_435_B20_CarDestruction_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|975543136", "975543136", "MIS_435_B20_GinaCarHandling", "box_HealthListener_v6_7.Killed", "box_MIS_435_B20_CarDestruction_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1912342962", "1912342962", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_30.Out", "box_PlayDialog_v6_21.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1701402189", "1701402189", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_30.Out", "box_Gate_v3_27.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_VehicleHealthListener_v2_2_Enabled()
    local l0;
    l0 = self.box_VehicleHealthListener_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1725095316", "1725095316", "MIS_435_B20_GinaCarHandling", "box_VehicleHealthListener_v2_2.Enabled", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_VehicleHealthListener_v2_2_HealthChanged()
    local params, l0, l1;
    self:OnExit_box_VehicleHealthListener_v2_2_HealthChanged();
    params = self:OnEnter_box_FloatArithmetics_v2_10();
    l0 = self.box_VehicleHealthListener_v2_2;
    l1 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1940888116", "1940888116", "MIS_435_B20_GinaCarHandling", "box_VehicleHealthListener_v2_2.HealthChanged", "box_FloatArithmetics_v2_10.Mul", l0:GetLuaBox(), l1:GetLuaBox());
    -- Mul
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_31;
    l1 = self.box_OnceOnly_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1337710126", "1337710126", "MIS_435_B20_GinaCarHandling", "box_Delay_v5_31.TimeElapsed", "box_OnceOnly_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|48110834", "48110834", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_29.Out", "box_PlayDialog_v6_22.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|733817290", "733817290", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_29.Out", "box_Gate_v3_15.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_15_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_15;
    l1 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1298369474", "1298369474", "MIS_435_B20_GinaCarHandling", "box_Gate_v3_15.Closed", "box_Gate_v3_27.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_12();
    l0 = self.box_Gate_v3_15;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|4705283", "4705283", "MIS_435_B20_GinaCarHandling", "box_Gate_v3_15.Out", "box_Compare_Floats_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleHealthListener_v2_2();
    l0 = self.box_VehicleHealthListener_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|133256325", "133256325", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_8.Out", "box_VehicleHealthListener_v2_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_6();
    l0 = self.box_VehicleDamageListener_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|431403813", "431403813", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_8.Out", "box_VehicleDamageListener_v2_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_1();
    l0 = self.box_CharacterLoadedIdListener_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|995076242", "995076242", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_8.Out", "box_CharacterLoadedIdListener_v2_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_OnceOnly_v3_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1209940291", "1209940291", "MIS_435_B20_GinaCarHandling", "box_OnceOnly_v3_19.Out", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_1_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_1_LoadedIdReceived();
    params = self:OnEnter_box_HealthListener_v6_7();
    l0 = self.box_CharacterLoadedIdListener_v2_1;
    l1 = self.box_HealthListener_v6_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|4274627", "4274627", "MIS_435_B20_GinaCarHandling", "box_CharacterLoadedIdListener_v2_1.LoadedIdReceived", "box_HealthListener_v6_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|362999994", "362999994", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_26.Out", "box_Gate_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1812325614", "1812325614", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_26.Out", "box_Gate_v3_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|2030752929", "2030752929", "MIS_435_B20_GinaCarHandling", "box_OutputOrder_v2_26.Out", "box_Gate_v3_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_25;
    l1 = self.box_OnceOnly_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1422247408", "1422247408", "MIS_435_B20_GinaCarHandling", "box_Delay_v5_25.TimeElapsed", "box_OnceOnly_v3_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FloatArithmetics_v2_11_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|928086993", "928086993", "MIS_435_B20_GinaCarHandling", "box_FloatArithmetics_v2_11.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_13();
    l0 = self.box_Gate_v3_27;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|2040247019", "2040247019", "MIS_435_B20_GinaCarHandling", "box_Gate_v3_27.Out", "box_Compare_Floats_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_32;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|429497400", "429497400", "MIS_435_B20_GinaCarHandling", "box_Delay_v5_32.TimeElapsed", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Floats_12_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1892938794", "1892938794", "MIS_435_B20_GinaCarHandling", "box_Compare_Floats_12.A_le_B", "box_Delay_v5_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1406225087", "1406225087", "MIS_435_B20_GinaCarHandling", "box_MultipleOR_4.Out", "Fail", l0:GetLuaBox(), self);
    self:Fail();
end;

function export:f_box_OnceOnly_v3_24_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_OnceOnly_v3_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1992380014", "1992380014", "MIS_435_B20_GinaCarHandling", "box_OnceOnly_v3_24.Out", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_435_B20_CarDestruction_33()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108597303016179225",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|243575270");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_9_A_le_B,
    });
    params = {
        -- A,
        [0] = self.f_Percentage,
        -- B,
        [1] = 80,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|256487274");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|345847941");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_13_A_le_B,
    });
    params = {
        -- A,
        [0] = self.f_Percentage,
        -- B,
        [1] = 40,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|384454215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_10_Out,
    });
    params = {
        -- A,
        [0] = self.f_CurrentHealth,
        -- B,
        [1] = 100,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_17()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "767264659",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_6()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108597303016179225",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_14()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_435_B20_CarDestruction_3()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108597303016179225",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_7()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2778928548",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1074030888");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleHealthListener_v2_2()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108597303016179225",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1357282407");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_15()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3645490129",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1510212044");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328871120802",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1739955713");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1916112754");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_11_Out,
    });
    params = {
        -- A,
        [0] = self.f_Intermediate,
        -- B,
        [1] = self.f_MaxHealth,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_27()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_B20_GinaCarHandling|1960644083");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_12_A_le_B,
    });
    params = {
        -- A,
        [0] = self.f_Percentage,
        -- B,
        [1] = 60,
    };
    return params;
end;

function export:OnExit_box_FloatArithmetics_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.f_Intermediate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleHealthListener_v2_2_HealthChanged()
    local l0;
    l0 = self.box_VehicleHealthListener_v2_2;
    self.f_CurrentHealth = l0:GetDataOutValue(0);
    self.f_MaxHealth = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_1_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_1;
    self.e_Gina = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.f_Percentage = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Fail()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Fail" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
