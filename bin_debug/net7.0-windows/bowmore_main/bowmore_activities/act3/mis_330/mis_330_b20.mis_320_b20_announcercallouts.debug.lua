LUACk�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b20.domino
-- User graph: MIS_320_B20_AnnouncerCallouts
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Player Car" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/VehicleStateListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3381772755.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1798947681.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2039021040.bnk]], "CSoundResource");
        cboxRes:LoadResource([[408503149.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1783736204.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_320_B20_AnnouncerCallouts.debug.lua")] = {
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
                name = "Player_Car",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
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
    metadataTable[GetPathID("Domino/System/VehicleStateListener.lua")] = {
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
                name = "OnVehicleFlipped",
                delayed = true,
            },
            [3] = {
                name = "OnVehicleFlippedUpright",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "vehicle",
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
    self._name = "MIS_320_B20_AnnouncerCallouts";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts";
    self.Out = DummyFunction;
    self.e_PlayerCar = nil;
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|56635051");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_10_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_10_FinishedInterrupted,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|88619807");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|202068971");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
    self.box_MultipleAND_v2_17 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|334437208");
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
        [0] = self.f_box_MultipleAND_v2_17_Out,
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|719683171");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_20_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_20_FinishedInterrupted,
    });
    self.box_HealthListener_v6_9 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|757405130");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_9_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_9_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_9_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_9_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_9_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_9_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_9_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_9_Revived,
    });
    self.box_Random_14 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|759721952");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_14_Output_0,
                [1] = self.f_box_Random_14_Output_1,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|801110443");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_2_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_2_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1227404724");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_11_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_11_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1383536566");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_8_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_8_FinishedInterrupted,
    });
    self.box_Random_1 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1896277079");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_1_Output_0,
                [1] = self.f_box_Random_1_Output_1,
                [2] = self.f_box_Random_1_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1898698729");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|2007268215");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|2038705757");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_VehicleStateListener_5 = cbox:CreateBox("Domino/System/VehicleStateListener.lua");
    l0 = self.box_VehicleStateListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleStateListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|2115759400");
    l0:SetConnections({
        -- OnVehicleFlipped,
        [2] = self.f_box_VehicleStateListener_5_OnVehicleFlipped,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|2118487408");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|263315298", "263315298", "MIS_320_B20_AnnouncerCallouts", "In", "box_OutputOrder_v2_19.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_10_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1176476849", "1176476849", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_10.Finished", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_10_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|681802344", "681802344", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_10.FinishedInterrupted", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_6;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1973638093", "1973638093", "MIS_320_B20_AnnouncerCallouts", "box_Delay_v5_6.TimeElapsed", "box_OnceOnly_v3_12.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|900784918", "900784918", "MIS_320_B20_AnnouncerCallouts", "box_MultipleOR_4.Out", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_MultipleAND_v2_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|784134165", "784134165", "MIS_320_B20_AnnouncerCallouts", "box_MultipleAND_v2_17.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_1();
    l0 = self.box_Random_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|316327537", "316327537", "MIS_320_B20_AnnouncerCallouts", "box_OutputOrder_v2_7.Out", "box_Random_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_9();
    l0 = self.box_HealthListener_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1650680780", "1650680780", "MIS_320_B20_AnnouncerCallouts", "box_OutputOrder_v2_7.Out", "box_HealthListener_v6_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Floats_16_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|355658328", "355658328", "MIS_320_B20_AnnouncerCallouts", "box_Compare_Floats_16.A_le_B", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_PlayDialog_v6_20_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|112489334", "112489334", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_20.Finished", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_20_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|516210497", "516210497", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_20.FinishedInterrupted", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_HealthListener_v6_9_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_HealthListener_v6_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|14317223", "14317223", "MIS_320_B20_AnnouncerCallouts", "box_HealthListener_v6_9.Damaged", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_14_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Random_14;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1581796637", "1581796637", "MIS_320_B20_AnnouncerCallouts", "box_Random_14.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_14_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_Random_14;
    l1 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1896065670", "1896065670", "MIS_320_B20_AnnouncerCallouts", "box_Random_14.Output", "box_PlayDialog_v6_20.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_2_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1680407888", "1680407888", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_2.Finished", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_2_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1487144169", "1487144169", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_2.FinishedInterrupted", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_16();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|74939364", "74939364", "MIS_320_B20_AnnouncerCallouts", "box_OutputOrder_v2_21.Out", "box_Compare_Floats_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_13();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1894778881", "1894778881", "MIS_320_B20_AnnouncerCallouts", "box_OutputOrder_v2_21.Out", "box_Compare_Floats_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_13_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1359157327", "1359157327", "MIS_320_B20_AnnouncerCallouts", "box_Compare_Floats_13.A_ge_B", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PlayDialog_v6_11_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1068448592", "1068448592", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_11.Finished", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_11_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1203446723", "1203446723", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_11.FinishedInterrupted", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_8_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_8;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1240311584", "1240311584", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_8.Finished", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_8_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_8;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|771722353", "771722353", "MIS_320_B20_AnnouncerCallouts", "box_PlayDialog_v6_8.FinishedInterrupted", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleStateListener_5();
    l0 = self.box_VehicleStateListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|2002640633", "2002640633", "MIS_320_B20_AnnouncerCallouts", "box_OutputOrder_v2_19.Out", "box_VehicleStateListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|145607601", "145607601", "MIS_320_B20_AnnouncerCallouts", "box_OutputOrder_v2_19.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|745903931", "745903931", "MIS_320_B20_AnnouncerCallouts", "box_OutputOrder_v2_19.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Random_1_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Random_1;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1208594856", "1208594856", "MIS_320_B20_AnnouncerCallouts", "box_Random_1.Output", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_1_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_Random_1;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1180470298", "1180470298", "MIS_320_B20_AnnouncerCallouts", "box_Random_1.Output", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_1_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_Random_1;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1873217401", "1873217401", "MIS_320_B20_AnnouncerCallouts", "box_Random_1.Output", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|910650838", "910650838", "MIS_320_B20_AnnouncerCallouts", "box_MultipleOR_15.Out", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Random_14();
    l0 = self.box_OnceOnly_v3_12;
    l1 = self.box_Random_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1260081774", "1260081774", "MIS_320_B20_AnnouncerCallouts", "box_OnceOnly_v3_12.Out", "box_Random_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_9();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_HealthListener_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|536200544", "536200544", "MIS_320_B20_AnnouncerCallouts", "box_MultipleOR_3.Out", "box_HealthListener_v6_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleStateListener_5_OnVehicleFlipped()
    local l0, l1;
    l0 = self.box_VehicleStateListener_5;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1141605120", "1141605120", "MIS_320_B20_AnnouncerCallouts", "box_VehicleStateListener_5.OnVehicleFlipped", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_18;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1077474511", "1077474511", "MIS_320_B20_AnnouncerCallouts", "box_Delay_v5_18.TimeElapsed", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3381772755",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_17()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|347826280");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|684309683");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_16_A_le_B,
    });
    l0 = self.box_HealthListener_v6_9;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = 50,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1783736204",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_9()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Random_14()
    local params;
    DrawTextToScreen("Comment: Player flipped", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Random')-- Comment: Player flipped");
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1798947681",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|895959734");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1091791734");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_13_A_ge_B,
    });
    l0 = self.box_HealthListener_v6_9;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 20,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2039021040",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "408503149",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_320_B20_AnnouncerCallouts|1827689798");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_1()
    local params;
    DrawTextToScreen("Comment: Player Hurt", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Random')-- Comment: Player Hurt");
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleStateListener_5()
    local params;
    params = {
        -- vehicle,
        [0] = self.Player_Car,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
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
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Player_Car" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
