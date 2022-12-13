LUAC7�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b50.domino
-- User graph: LT01_030_PA_RandomComputer
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="MinTime" Type="Core|float" />
    <DataIn Name="MaxTime" Type="Core|float" />
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3011427566.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3302273970.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1573410691.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1138832686.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1607747531.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4181251447.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2901129454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2200234458.bnk]], "CSoundResource");
        cboxRes:LoadResource([[16432295.bnk]], "CSoundResource");
        cboxRes:LoadResource([[304050177.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2630574900.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1715325879.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1480691066.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1093190570.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_RandomComputer.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "StartHatchOverride_Evac",
            },
            [2] = {
                name = "Stop",
            },
            [3] = {
                name = "StopHatchOverride_Evac",
            },
        },
        controlInCount = 4,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "MaxTime",
                type = "float",
            },
            [1] = {
                name = "MinTime",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
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
                name = "Dialog",
                type = "Sound",
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
    self._name = "LT01_030_PA_RandomComputer";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer";
    self.box_LT01_030_PA_Dialog_9 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|62708238");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_8 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|259261621");
    l0:SetConnections({
    });
    self.box_Random_28 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|260996392");
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
                [0] = self.f_box_Random_28_Output_0,
                [1] = self.f_box_Random_28_Output_1,
                [2] = self.f_box_Random_28_Output_2,
            },
            count = 3,
        },
    });
    self.box_LT01_030_PA_Dialog_6 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|290568834");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_19 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|299240538");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_14 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|369922364");
    l0:SetConnections({
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|456369263");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|509038799");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_LT01_030_PA_Dialog_12 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|587937767");
    l0:SetConnections({
    });
    self.box_Random_2 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|631427528");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 13,
        },
        dataIn = {
            [1] = 13,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_2_Output_0,
                [1] = self.f_box_Random_2_Output_1,
                [2] = self.f_box_Random_2_Output_2,
                [3] = self.f_box_Random_2_Output_3,
                [4] = self.f_box_Random_2_Output_4,
                [5] = self.f_box_Random_2_Output_5,
                [6] = self.f_box_Random_2_Output_6,
                [7] = self.f_box_Random_2_Output_7,
                [8] = self.f_box_Random_2_Output_8,
                [9] = self.f_box_Random_2_Output_9,
                [10] = self.f_box_Random_2_Output_10,
                [11] = self.f_box_Random_2_Output_11,
                [12] = self.f_box_Random_2_Output_12,
            },
            count = 13,
        },
    });
    self.box_LT01_030_PA_Dialog_13 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|917542503");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_27 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|918744556");
    l0:SetConnections({
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|930364928");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_LT01_030_PA_Dialog_16 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1034557057");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_20 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1063002553");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_11 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1121430158");
    l0:SetConnections({
    });
    self.box_Random_26 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1145697358");
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
                [0] = self.f_box_Random_26_Output_0,
                [1] = self.f_box_Random_26_Output_1,
            },
            count = 2,
        },
    });
    self.box_LT01_030_PA_Dialog_18 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1194388798");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_29 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1241879973");
    l0:SetConnections({
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1306357749");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_LT01_030_PA_Dialog_15 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1380655619");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_5 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1489082800");
    l0:SetConnections({
    });
    self.box_Gate_v3_4 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1525418986");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_4_Out,
    });
    self.box_Gate_v3_22 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1611544171");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_22_Out,
    });
    self.box_LT01_030_PA_Dialog_17 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1906800977");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_30 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1975350287");
    l0:SetConnections({
    });
end;

function export:Start()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1078433924", "1078433924", "LT01_030_PA_RandomComputer", "Start", "box_MultipleOR_7.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:StartHatchOverride_Evac()
    local l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1015140309", "1015140309", "LT01_030_PA_RandomComputer", "StartHatchOverride_Evac", "box_MultipleOR_25.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_4();
    l0 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1633141548", "1633141548", "LT01_030_PA_RandomComputer", "Stop", "box_Gate_v3_4.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:StopHatchOverride_Evac()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|113227526", "113227526", "LT01_030_PA_RandomComputer", "StopHatchOverride_Evac", "box_Gate_v3_22.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_26();
    l0 = self.box_Random_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|857199465", "857199465", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_24.Out", "box_Random_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1052270882", "1052270882", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_24.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_28_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_27();
    l0 = self.box_Random_28;
    l1 = self.box_LT01_030_PA_Dialog_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1687194754", "1687194754", "LT01_030_PA_RandomComputer", "box_Random_28.Output", "box_LT01_030_PA_Dialog_27.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_28_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_29();
    l0 = self.box_Random_28;
    l1 = self.box_LT01_030_PA_Dialog_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1116626817", "1116626817", "LT01_030_PA_RandomComputer", "box_Random_28.Output", "box_LT01_030_PA_Dialog_29.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_28_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_30();
    l0 = self.box_Random_28;
    l1 = self.box_LT01_030_PA_Dialog_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1215009739", "1215009739", "LT01_030_PA_RandomComputer", "box_Random_28.Output", "box_LT01_030_PA_Dialog_30.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_Delay_v5_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|986239122", "986239122", "LT01_030_PA_RandomComputer", "box_Delay_v5_1.TimeElapsed", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_4();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1306077933", "1306077933", "LT01_030_PA_RandomComputer", "box_MultipleOR_7.Out", "box_Gate_v3_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_21_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|324325299", "324325299", "LT01_030_PA_RandomComputer", "box_RandomFloat_v2_21.Out", "box_Delay_v5_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Random_2_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_9();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|388494556", "388494556", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_9.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_8();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1863833197", "1863833197", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_8.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_6();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|360467050", "360467050", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_6.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_5();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|308931701", "308931701", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_5.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_12();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|789117177", "789117177", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_12.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_13();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1852390714", "1852390714", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_11();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|543387254", "543387254", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_14();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1023404617", "1023404617", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_14.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_16();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1899406400", "1899406400", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_17();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1384270598", "1384270598", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_17.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_15();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|670252446", "670252446", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_18();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1426766621", "1426766621", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_18.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_19();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|717100019", "717100019", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_19.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_2();
    l0 = self.box_Random_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1311723297", "1311723297", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_10.Out", "box_Random_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1517376268", "1517376268", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_10.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1132679092", "1132679092", "LT01_030_PA_RandomComputer", "box_MultipleOR_25.Out", "box_Gate_v3_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_3_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1396303472", "1396303472", "LT01_030_PA_RandomComputer", "box_RandomFloat_v2_3.Out", "box_Delay_v5_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Random_26_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_20();
    l0 = self.box_Random_26;
    l1 = self.box_LT01_030_PA_Dialog_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|304148191", "304148191", "LT01_030_PA_RandomComputer", "box_Random_26.Output", "box_LT01_030_PA_Dialog_20.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_26_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Random_28();
    l0 = self.box_Random_26;
    l1 = self.box_Random_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|150826674", "150826674", "LT01_030_PA_RandomComputer", "box_Random_26.Output", "box_Random_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_Delay_v5_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|241969379", "241969379", "LT01_030_PA_RandomComputer", "box_Delay_v5_23.TimeElapsed", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_3();
    l0 = self.box_Gate_v3_4;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1198023209", "1198023209", "LT01_030_PA_RandomComputer", "box_Gate_v3_4.Out", "box_RandomFloat_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_21();
    l0 = self.box_Gate_v3_22;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1714256305", "1714256305", "LT01_030_PA_RandomComputer", "box_Gate_v3_22.Out", "box_RandomFloat_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_LT01_030_PA_Dialog_9()
    local params;
    params = {
        -- Dialog,
        [0] = "1607747531",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|196098663");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_8()
    local params;
    params = {
        -- Dialog,
        [0] = "3011427566",
    };
    return params;
end;

function export:OnEnter_box_Random_28()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_6()
    local params;
    params = {
        -- Dialog,
        [0] = "2200234458",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_19()
    local params;
    params = {
        -- Dialog,
        [0] = "304050177",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_14()
    local params;
    params = {
        -- Dialog,
        [0] = "1480691066",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|529665899");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_21_Out,
    });
    params = {
        -- Max,
        [0] = self.MaxTime,
        -- Min,
        [1] = self.MinTime,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_12()
    local params;
    params = {
        -- Dialog,
        [0] = "16432295",
    };
    return params;
end;

function export:OnEnter_box_Random_2()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 13,
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|652929468");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_13()
    local params;
    params = {
        -- Dialog,
        [0] = "2630574900",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_27()
    local params;
    params = {
        -- Dialog,
        [0] = "1093190570",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_16()
    local params;
    params = {
        -- Dialog,
        [0] = "1715325879",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_20()
    local params;
    params = {
        -- Dialog,
        [0] = "2901129454",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_PA_RandomComputer|1081211393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_3_Out,
    });
    params = {
        -- Max,
        [0] = self.MaxTime,
        -- Min,
        [1] = self.MinTime,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_11()
    local params;
    params = {
        -- Dialog,
        [0] = "4181251447",
    };
    return params;
end;

function export:OnEnter_box_Random_26()
    local params;
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

function export:OnEnter_box_LT01_030_PA_Dialog_18()
    local params;
    params = {
        -- Dialog,
        [0] = "1573410691",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_29()
    local params;
    params = {
        -- Dialog,
        [0] = "2630574900",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_15()
    local params;
    params = {
        -- Dialog,
        [0] = "3302273970",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_5()
    local params;
    params = {
        -- Dialog,
        [0] = "1093190570",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_4()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_22()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_17()
    local params;
    params = {
        -- Dialog,
        [0] = "1138832686",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_30()
    local params;
    params = {
        -- Dialog,
        [0] = "4181251447",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_21_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_23;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_3_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_1;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StartHatchOverride_Evac" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StopHatchOverride_Evac" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="MaxTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="MinTime" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
