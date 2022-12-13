LUAC` -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b10.domino
-- User graph: MIS_310_B10_LightsAnimation
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1876800193.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3857464667.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2851779681.bnk]], "CSoundResource");
        cboxRes:LoadResource([[573764039.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1866545317.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4274888341.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2299299980.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_LightsAnimation.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
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
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
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
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua")] = {
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
                name = "delay",
                type = "float",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "Light",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_310_B10_LightsAnimation";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation";
    self.Out = DummyFunction;
    self.Lights_Loops = 0;
    self.lights_flicker_delay = 0.02;
    self.Lights_Blink_Loops = 0;
    self.box_MIS_310_B10_Lights_41 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|15917426");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_41_Out,
    });
    self.box_MIS_310_B10_Lights_9 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|18197757");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_9_Out,
    });
    self.box_MIS_310_B10_Lights_21 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|118119233");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_21_Out,
    });
    self.box_MIS_310_B10_Lights_19 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|188350084");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_19_Out,
    });
    self.box_MIS_310_B10_Lights_39 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|296011650");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_39_Out,
    });
    self.box_MIS_310_B10_Lights_40 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|318506920");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_40_Out,
    });
    self.box_MIS_310_B10_Lights_10 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|346921939");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_10_Out,
    });
    self.box_SoundModifier_v2_15 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|379464037");
    l0:SetConnections({
    });
    self.box_MIS_310_B10_Lights_29 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|423305818");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_29_Out,
    });
    self.box_MIS_310_B10_Lights_30 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|627201186");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_30_Out,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|637521010");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_MIS_310_B10_Lights_20 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|649581771");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_20_Out,
    });
    self.box_MIS_310_B10_Lights_3 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|680522339");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_3_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|700941823");
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
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|765947795");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|834991915");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_MIS_310_B10_Lights_18 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|997841354");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_18_Out,
    });
    self.box_MIS_310_B10_Lights_1 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1203932852");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_1_Out,
    });
    self.box_MIS_310_B10_Lights_24 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1331974055");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_24_Out,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1384008220");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_MIS_310_B10_Lights_17 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1390105038");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_17_Out,
    });
    self.box_MIS_310_B10_Lights_8 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1417506859");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_8_Out,
    });
    self.box_MIS_310_B10_Lights_23 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1574170700");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_23_Out,
    });
    self.box_SoundModifier_v2_28 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1590430772");
    l0:SetConnections({
    });
    self.box_MIS_310_B10_Lights_5 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1605668384");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_5_Out,
    });
    self.box_MIS_310_B10_Lights_34 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1660892786");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_34_Out,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1683662320");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_MIS_310_B10_Lights_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1737729779");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_14_Out,
    });
    self.box_MIS_310_B10_Lights_31 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1784553342");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_31_Out,
    });
    self.box_MIS_310_B10_Lights_33 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1844052800");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_33_Out,
    });
    self.box_MIS_310_B10_Lights_6 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1914861331");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_6_Out,
    });
    self.box_MIS_310_B10_Lights_42 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1982007911");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_42_Out,
    });
    self.box_MIS_310_B10_Lights_12 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|2066807207");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_12_Out,
    });
    self.box_MIS_310_B10_Lights_32 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|2103339945");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_32_Out,
    });
    self.box_MIS_310_B10_Lights_13 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b10.MIS_310_B10_Lights.debug.lua");
    l0 = self.box_MIS_310_B10_Lights_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_B10_Lights_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|2125311121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_B10_Lights_13_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1471469751", "1471469751", "MIS_310_B10_LightsAnimation", "In", "box_MultipleOR_16.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MIS_310_B10_Lights_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_42();
    l0 = self.box_MIS_310_B10_Lights_41;
    l1 = self.box_MIS_310_B10_Lights_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1155467829", "1155467829", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_41.Out", "box_MIS_310_B10_Lights_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_20();
    l0 = self.box_MIS_310_B10_Lights_9;
    l1 = self.box_MIS_310_B10_Lights_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1083981931", "1083981931", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_9.Out", "box_MIS_310_B10_Lights_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_4_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|2135001540", "2135001540", "MIS_310_B10_LightsAnimation", "box_IntegerArithmetics_v2_4.Out", "box_Delay_v5_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_310_B10_Lights_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_19();
    l0 = self.box_MIS_310_B10_Lights_21;
    l1 = self.box_MIS_310_B10_Lights_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1526774752", "1526774752", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_21.Out", "box_MIS_310_B10_Lights_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_36_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|878532987", "878532987", "MIS_310_B10_LightsAnimation", "box_Compare_Integers_36.A_lt_B", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_310_B10_Lights_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_23();
    l0 = self.box_MIS_310_B10_Lights_19;
    l1 = self.box_MIS_310_B10_Lights_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1417508307", "1417508307", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_19.Out", "box_MIS_310_B10_Lights_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_B10_Lights_1();
    l0 = self.box_MIS_310_B10_Lights_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1041290023", "1041290023", "MIS_310_B10_LightsAnimation", "box_OutputOrder_v2_27.Out", "box_MIS_310_B10_Lights_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_28();
    l0 = self.box_SoundModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|2106610304", "2106610304", "MIS_310_B10_LightsAnimation", "box_OutputOrder_v2_27.Out", "box_SoundModifier_v2_28.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_40();
    l0 = self.box_MIS_310_B10_Lights_39;
    l1 = self.box_MIS_310_B10_Lights_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1415812525", "1415812525", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_39.Out", "box_MIS_310_B10_Lights_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_34();
    l0 = self.box_MIS_310_B10_Lights_40;
    l1 = self.box_MIS_310_B10_Lights_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|586513260", "586513260", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_40.Out", "box_MIS_310_B10_Lights_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|992436865", "992436865", "MIS_310_B10_LightsAnimation", "box_OutputOrder_v2_22.Out", "box_Delay_v5_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_15();
    l0 = self.box_SoundModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|861398125", "861398125", "MIS_310_B10_LightsAnimation", "box_OutputOrder_v2_22.Out", "box_SoundModifier_v2_15.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|610561557", "610561557", "MIS_310_B10_LightsAnimation", "box_OutputOrder_v2_22.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MIS_310_B10_Lights_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_13();
    l0 = self.box_MIS_310_B10_Lights_10;
    l1 = self.box_MIS_310_B10_Lights_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1842208491", "1842208491", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_10.Out", "box_MIS_310_B10_Lights_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_33();
    l0 = self.box_MIS_310_B10_Lights_29;
    l1 = self.box_MIS_310_B10_Lights_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1077635436", "1077635436", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_29.Out", "box_MIS_310_B10_Lights_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_45_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1056209042", "1056209042", "MIS_310_B10_LightsAnimation", "box_IntegerArithmetics_v2_45.Out", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_310_B10_Lights_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_41();
    l0 = self.box_MIS_310_B10_Lights_30;
    l1 = self.box_MIS_310_B10_Lights_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1172411651", "1172411651", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_30.Out", "box_MIS_310_B10_Lights_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_11();
    l0 = self.box_Delay_v5_7;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1889208548", "1889208548", "MIS_310_B10_LightsAnimation", "box_Delay_v5_7.TimeElapsed", "box_Compare_Integers_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_B10_Lights_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_8();
    l0 = self.box_MIS_310_B10_Lights_20;
    l1 = self.box_MIS_310_B10_Lights_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1599173674", "1599173674", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_20.Out", "box_MIS_310_B10_Lights_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_21();
    l0 = self.box_MIS_310_B10_Lights_3;
    l1 = self.box_MIS_310_B10_Lights_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|249867597", "249867597", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_3.Out", "box_MIS_310_B10_Lights_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_17();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_MIS_310_B10_Lights_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|489816119", "489816119", "MIS_310_B10_LightsAnimation", "box_MultipleOR_16.Out", "box_MIS_310_B10_Lights_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_11_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1882887811", "1882887811", "MIS_310_B10_LightsAnimation", "box_Compare_Integers_11.A_ge_B", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_11_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1977291630", "1977291630", "MIS_310_B10_LightsAnimation", "box_Compare_Integers_11.A_lt_B", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_31();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_MIS_310_B10_Lights_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|312880297", "312880297", "MIS_310_B10_LightsAnimation", "box_Delay_v5_43.TimeElapsed", "box_MIS_310_B10_Lights_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local l0;
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1063756197", "1063756197", "MIS_310_B10_LightsAnimation", "box_Delay_v5_2.TimeElapsed", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_MIS_310_B10_Lights_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_6();
    l0 = self.box_MIS_310_B10_Lights_18;
    l1 = self.box_MIS_310_B10_Lights_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|372172659", "372172659", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_18.Out", "box_MIS_310_B10_Lights_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_14();
    l0 = self.box_MIS_310_B10_Lights_1;
    l1 = self.box_MIS_310_B10_Lights_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|365119696", "365119696", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_1.Out", "box_MIS_310_B10_Lights_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_3();
    l0 = self.box_MIS_310_B10_Lights_24;
    l1 = self.box_MIS_310_B10_Lights_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|945353501", "945353501", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_24.Out", "box_MIS_310_B10_Lights_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_36();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|927494426", "927494426", "MIS_310_B10_LightsAnimation", "box_Delay_v5_37.TimeElapsed", "box_Compare_Integers_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_B10_Lights_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_24();
    l0 = self.box_MIS_310_B10_Lights_17;
    l1 = self.box_MIS_310_B10_Lights_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1492034443", "1492034443", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_17.Out", "box_MIS_310_B10_Lights_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_MIS_310_B10_Lights_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1968069628", "1968069628", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_8.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_B10_Lights_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_18();
    l0 = self.box_MIS_310_B10_Lights_23;
    l1 = self.box_MIS_310_B10_Lights_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1279779140", "1279779140", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_23.Out", "box_MIS_310_B10_Lights_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_4();
    l0 = self.box_MIS_310_B10_Lights_5;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|906496197", "906496197", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_5.Out", "box_IntegerArithmetics_v2_4.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_B10_Lights_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_MIS_310_B10_Lights_34;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|438642081", "438642081", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_34.Out", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_29();
    l0 = self.box_MultipleOR_44;
    l1 = self.box_MIS_310_B10_Lights_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1497005734", "1497005734", "MIS_310_B10_LightsAnimation", "box_MultipleOR_44.Out", "box_MIS_310_B10_Lights_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_9();
    l0 = self.box_MIS_310_B10_Lights_14;
    l1 = self.box_MIS_310_B10_Lights_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1687343170", "1687343170", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_14.Out", "box_MIS_310_B10_Lights_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_30();
    l0 = self.box_MIS_310_B10_Lights_31;
    l1 = self.box_MIS_310_B10_Lights_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|681173089", "681173089", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_31.Out", "box_MIS_310_B10_Lights_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_39();
    l0 = self.box_MIS_310_B10_Lights_33;
    l1 = self.box_MIS_310_B10_Lights_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|341035667", "341035667", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_33.Out", "box_MIS_310_B10_Lights_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_12();
    l0 = self.box_MIS_310_B10_Lights_6;
    l1 = self.box_MIS_310_B10_Lights_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|151593418", "151593418", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_6.Out", "box_MIS_310_B10_Lights_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_32();
    l0 = self.box_MIS_310_B10_Lights_42;
    l1 = self.box_MIS_310_B10_Lights_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|904752479", "904752479", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_42.Out", "box_MIS_310_B10_Lights_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_10();
    l0 = self.box_MIS_310_B10_Lights_12;
    l1 = self.box_MIS_310_B10_Lights_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1365197856", "1365197856", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_12.Out", "box_MIS_310_B10_Lights_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_310_B10_Lights_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_45();
    l0 = self.box_MIS_310_B10_Lights_32;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|47345437", "47345437", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_32.Out", "box_IntegerArithmetics_v2_45.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_B10_Lights_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_B10_Lights_5();
    l0 = self.box_MIS_310_B10_Lights_13;
    l1 = self.box_MIS_310_B10_Lights_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|1512312235", "1512312235", "MIS_310_B10_LightsAnimation", "box_MIS_310_B10_Lights_13.Out", "box_MIS_310_B10_Lights_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_MIS_310_B10_Lights_41()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071624681635700",
        -- Light,
        [2] = "2109071575318871914",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_9()
    local params;
    params = {
        -- delay,
        [0] = 0.3,
        -- Destination,
        [1] = "2109071624681635700",
        -- Light,
        [2] = "2109071575318871914",
        -- SoundId,
        [3] = "573764039",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|40463739");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_4_Out,
    });
    params = {
        -- A,
        [0] = self.Lights_Loops,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_21()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071625539370870",
        -- Light,
        [2] = "2109071557629394759",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|178906151");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_36_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Lights_Blink_Loops,
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_19()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071626009132920",
        -- Light,
        [2] = "2109071575864131436",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|270762095");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_39()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071575318871914",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_40()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071557629394759",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|337150865");
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

function export:OnEnter_box_MIS_310_B10_Lights_10()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071557629394759",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_15()
    local params;
    params = {
        -- Pawns,
        [0] = "2109511497813076863",
        -- SoundId,
        [1] = "1876800193",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_29()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071577120325486",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|535657006");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_45_Out,
    });
    params = {
        -- A,
        [0] = self.Lights_Blink_Loops,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_30()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071623798734706",
        -- Light,
        [2] = "2109071565242056543",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_20()
    local params;
    params = {
        -- delay,
        [0] = 0.3,
        -- Destination,
        [1] = "2109071625539370870",
        -- Light,
        [2] = "2109071557629394759",
        -- SoundId,
        [3] = "2851779681",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_3()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071624681635700",
        -- Light,
        [2] = "2109071575318871914",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b10.domino|@MIS_310_B10_LightsAnimation|731381731");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_11_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_11_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Lights_Loops,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_18()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071577120325486",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_1()
    local params;
    params = {
        -- delay,
        [0] = 0.3,
        -- Destination,
        [1] = "2109071611490549616",
        -- Light,
        [2] = "2109071577120325486",
        -- SoundId,
        [3] = "4274888341",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_24()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071623798734706",
        -- Light,
        [2] = "2109071565242056543",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_17()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071611490549616",
        -- Light,
        [2] = "2109071577120325486",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_8()
    local params;
    params = {
        -- delay,
        [0] = 0.3,
        -- Destination,
        [1] = "2109071626009132920",
        -- Light,
        [2] = "2109071575864131436",
        -- SoundId,
        [3] = "1866545317",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_23()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071626516643706",
        -- Light,
        [2] = "2109071555874078533",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_28()
    local params;
    params = {
        -- Pawns,
        [0] = "2109511497813076863",
        -- SoundId,
        [1] = "3857464667",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_5()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071555874078533",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_34()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071575864131436",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_14()
    local params;
    params = {
        -- delay,
        [0] = 0.3,
        -- Destination,
        [1] = "2109071623798734706",
        -- Light,
        [2] = "2109071565242056543",
        -- SoundId,
        [3] = "2299299980",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_31()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071611490549616",
        -- Light,
        [2] = "2109071577120325486",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_33()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071565242056543",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_6()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071565242056543",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_42()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071625539370870",
        -- Light,
        [2] = "2109071557629394759",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_12()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071575318871914",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_32()
    local params;
    params = {
        -- delay,
        [0] = 0,
        -- Destination,
        [1] = "2109071626009132920",
        -- Light,
        [2] = "2109071575864131436",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_B10_Lights_13()
    local params;
    params = {
        -- delay,
        [0] = self.lights_flicker_delay,
        -- Destination,
        [1] = "2109071737082694674",
        -- Light,
        [2] = "2109071575864131436",
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.Lights_Loops = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.Lights_Blink_Loops = l0:GetDataOutValue(0);
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
	<DatasIn />
	<DatasOut />
</DominoMetadata>
