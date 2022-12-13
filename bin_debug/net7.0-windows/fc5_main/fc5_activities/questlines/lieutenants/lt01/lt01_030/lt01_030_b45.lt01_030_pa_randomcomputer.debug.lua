LUACH�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b45.domino
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
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3118418628.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3302273970.bnk]], "CSoundResource");
        cboxRes:LoadResource([[583224428.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1573410691.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1982322890.bnk]], "CSoundResource");
        cboxRes:LoadResource([[304050177.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1715325879.bnk]], "CSoundResource");
        cboxRes:LoadResource([[16432295.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1158408695.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2630574900.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4181251447.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1609314223.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1138832686.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1093190570.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1480691066.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_RandomComputer.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "StartFire",
            },
            [2] = {
                name = "Stop",
            },
            [3] = {
                name = "StopFire",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua")] = {
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
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer";
    self.box_Gate_v3_29 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|71021368");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_29_Out,
    });
    self.box_Random_33 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|86121089");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 10,
        },
        dataIn = {
            [1] = 10,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_33_Output_0,
                [1] = self.f_box_Random_33_Output_1,
                [2] = self.f_box_Random_33_Output_2,
                [3] = self.f_box_Random_33_Output_3,
                [4] = self.f_box_Random_33_Output_4,
                [5] = self.f_box_Random_33_Output_5,
                [6] = self.f_box_Random_33_Output_6,
                [7] = self.f_box_Random_33_Output_7,
                [8] = self.f_box_Random_33_Output_8,
                [9] = self.f_box_Random_33_Output_9,
            },
            count = 10,
        },
    });
    self.box_LT01_030_PA_Dialog_38 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|86949408");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_13 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|120058478");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_8 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|300282847");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_41 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|349378706");
    l0:SetConnections({
    });
    self.box_Random_18 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|353356162");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
            [1] = 5,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Random_18_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_18_Output_0,
                [1] = self.f_box_Random_18_Output_1,
                [2] = self.f_box_Random_18_Output_2,
                [3] = self.f_box_Random_18_Output_3,
                [4] = self.f_box_Random_18_Output_4,
            },
            count = 5,
        },
    });
    self.box_LT01_030_PA_Dialog_26 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|353714476");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_27 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|468182944");
    l0:SetConnections({
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|565340294");
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
    self.box_Gate_v3_28 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|592170462");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_28_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|597399330");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_Gate_v3_23 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|624806240");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_23_Out,
    });
    self.box_LT01_030_PA_Dialog_22 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|628523065");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_16 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|706088982");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_10 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|827440214");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_14 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|859712212");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_24 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|881840149");
    l0:SetConnections({
    });
    self.box_Gate_v3_4 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|913527510");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_4_Out,
    });
    self.box_LT01_030_PA_Dialog_35 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|928921729");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_15 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|963220414");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_31 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1148774015");
    l0:SetConnections({
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1153968206");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_LT01_030_PA_Dialog_32 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1231445054");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_7 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1318034327");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_39 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1347635990");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_37 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1407052245");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_19 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1463173898");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_40 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1476577534");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_36 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1603614719");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_34 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1645165047");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_12 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1926527949");
    l0:SetConnections({
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1956086750");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_Random_2 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1992211933");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 10,
        },
        dataIn = {
            [1] = 10,
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
            },
            count = 10,
        },
    });
    self.box_LT01_030_PA_Dialog_11 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|2023922681");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_9 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B45.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|2126993379");
    l0:SetConnections({
    });
end;

function export:Start()
    local l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|583437457", "583437457", "LT01_030_PA_RandomComputer", "Start", "box_MultipleOR_5.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:StartFire()
    local l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|354792445", "354792445", "LT01_030_PA_RandomComputer", "StartFire", "box_MultipleOR_21.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_4();
    l0 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|194138788", "194138788", "LT01_030_PA_RandomComputer", "Stop", "box_Gate_v3_4.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:StopFire()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_23();
    l0 = self.box_Gate_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|331284602", "331284602", "LT01_030_PA_RandomComputer", "StopFire", "box_Gate_v3_23.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_33();
    l0 = self.box_Gate_v3_29;
    l1 = self.box_Random_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1241755929", "1241755929", "LT01_030_PA_RandomComputer", "box_Gate_v3_29.Out", "box_Random_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_34();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1757607793", "1757607793", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_34.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_35();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1683626005", "1683626005", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_35.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_36();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1510013311", "1510013311", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_36.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_31();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|67857376", "67857376", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_31.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_32();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|196886471", "196886471", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_32.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_39();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1726331731", "1726331731", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_39.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_38();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|522634013", "522634013", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_38.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_37();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1824882766", "1824882766", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_37.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_40();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1691381405", "1691381405", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_40.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_33_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_41();
    l0 = self.box_Random_33;
    l1 = self.box_LT01_030_PA_Dialog_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|726658903", "726658903", "LT01_030_PA_RandomComputer", "box_Random_33.Output", "box_LT01_030_PA_Dialog_41.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_18_None()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_Random_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1249350284", "1249350284", "LT01_030_PA_RandomComputer", "box_Random_18.None", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_18_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_24();
    l0 = self.box_Random_18;
    l1 = self.box_LT01_030_PA_Dialog_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1253172645", "1253172645", "LT01_030_PA_RandomComputer", "box_Random_18.Output", "box_LT01_030_PA_Dialog_24.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_18_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_22();
    l0 = self.box_Random_18;
    l1 = self.box_LT01_030_PA_Dialog_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1665405862", "1665405862", "LT01_030_PA_RandomComputer", "box_Random_18.Output", "box_LT01_030_PA_Dialog_22.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_18_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_26();
    l0 = self.box_Random_18;
    l1 = self.box_LT01_030_PA_Dialog_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1194714476", "1194714476", "LT01_030_PA_RandomComputer", "box_Random_18.Output", "box_LT01_030_PA_Dialog_26.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_18_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_27();
    l0 = self.box_Random_18;
    l1 = self.box_LT01_030_PA_Dialog_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|185379445", "185379445", "LT01_030_PA_RandomComputer", "box_Random_18.Output", "box_LT01_030_PA_Dialog_27.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_18_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_19();
    l0 = self.box_Random_18;
    l1 = self.box_LT01_030_PA_Dialog_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|485215987", "485215987", "LT01_030_PA_RandomComputer", "box_Random_18.Output", "box_LT01_030_PA_Dialog_19.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_4();
    l0 = self.box_MultipleOR_5;
    l1 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|491602238", "491602238", "LT01_030_PA_RandomComputer", "box_MultipleOR_5.Out", "box_Gate_v3_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_18();
    l0 = self.box_Gate_v3_28;
    l1 = self.box_Random_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|2020077429", "2020077429", "LT01_030_PA_RandomComputer", "box_Gate_v3_28.Out", "box_Random_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_23();
    l0 = self.box_MultipleOR_21;
    l1 = self.box_Gate_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1475555265", "1475555265", "LT01_030_PA_RandomComputer", "box_MultipleOR_21.Out", "box_Gate_v3_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_20();
    l0 = self.box_Gate_v3_23;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|157988738", "157988738", "LT01_030_PA_RandomComputer", "box_Gate_v3_23.Out", "box_RandomFloat_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_6();
    l0 = self.box_Gate_v3_4;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|547688279", "547688279", "LT01_030_PA_RandomComputer", "box_Gate_v3_4.Out", "box_RandomFloat_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_20_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|2050840880", "2050840880", "LT01_030_PA_RandomComputer", "box_RandomFloat_v2_20.Out", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1243168734", "1243168734", "LT01_030_PA_RandomComputer", "box_Delay_v5_3.TimeElapsed", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_2();
    l0 = self.box_Random_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|2059212661", "2059212661", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_1.Out", "box_Random_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|2097312822", "2097312822", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_1.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1892302709", "1892302709", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_25.Out", "box_Gate_v3_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|811338453", "811338453", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_25.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_29();
    l0 = self.box_Gate_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|837029633", "837029633", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_25.Out", "box_Gate_v3_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|249421909", "249421909", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_30.Out", "box_Gate_v3_28.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_29();
    l0 = self.box_Gate_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|624571210", "624571210", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_30.Out", "box_Gate_v3_29.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|658249632", "658249632", "LT01_030_PA_RandomComputer", "box_Delay_v5_17.TimeElapsed", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_2_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_7();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|679423570", "679423570", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_7.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_8();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|583443805", "583443805", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_8.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_9();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|75398936", "75398936", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_9.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_10();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1325944227", "1325944227", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_10.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_11();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1468939678", "1468939678", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_13();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1574413533", "1574413533", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_14();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|789871852", "789871852", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_14.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_12();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1965542064", "1965542064", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_12.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_16();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1450406262", "1450406262", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_2_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_15();
    l0 = self.box_Random_2;
    l1 = self.box_LT01_030_PA_Dialog_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1661185859", "1661185859", "LT01_030_PA_RandomComputer", "box_Random_2.Output", "box_LT01_030_PA_Dialog_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_6_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1512885152", "1512885152", "LT01_030_PA_RandomComputer", "box_RandomFloat_v2_6.Out", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_Gate_v3_29()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Random_33()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 10,
        },
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_38()
    local params;
    params = {
        -- Dialog,
        [0] = "3302273970",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_13()
    local params;
    params = {
        -- Dialog,
        [0] = "1715325879",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_8()
    local params;
    params = {
        -- Dialog,
        [0] = "16432295",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_41()
    local params;
    params = {
        -- Dialog,
        [0] = "16432295",
    };
    return params;
end;

function export:OnEnter_box_Random_18()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_26()
    local params;
    params = {
        -- Dialog,
        [0] = "1982322890",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_27()
    local params;
    params = {
        -- Dialog,
        [0] = "1609314223",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_28()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_23()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_22()
    local params;
    params = {
        -- Dialog,
        [0] = "583224428",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_16()
    local params;
    params = {
        -- Dialog,
        [0] = "1573410691",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_10()
    local params;
    params = {
        -- Dialog,
        [0] = "4181251447",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_14()
    local params;
    params = {
        -- Dialog,
        [0] = "1138832686",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_24()
    local params;
    params = {
        -- Dialog,
        [0] = "1158408695",
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

function export:OnEnter_box_LT01_030_PA_Dialog_35()
    local params;
    params = {
        -- Dialog,
        [0] = "583224428",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_15()
    local params;
    params = {
        -- Dialog,
        [0] = "304050177",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1005091854");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_20_Out,
    });
    params = {
        -- Max,
        [0] = self.MaxTime,
        -- Min,
        [1] = self.MinTime,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_31()
    local params;
    params = {
        -- Dialog,
        [0] = "1609314223",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
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

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1183578947");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_32()
    local params;
    params = {
        -- Dialog,
        [0] = "3118418628",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_7()
    local params;
    params = {
        -- Dialog,
        [0] = "1093190570",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_39()
    local params;
    params = {
        -- Dialog,
        [0] = "4181251447",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_37()
    local params;
    params = {
        -- Dialog,
        [0] = "1573410691",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1454322062");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_19()
    local params;
    params = {
        -- Dialog,
        [0] = "3118418628",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_40()
    local params;
    params = {
        -- Dialog,
        [0] = "304050177",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_36()
    local params;
    params = {
        -- Dialog,
        [0] = "1982322890",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|1626377628");
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

function export:OnEnter_box_LT01_030_PA_Dialog_34()
    local params;
    params = {
        -- Dialog,
        [0] = "1158408695",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_12()
    local params;
    params = {
        -- Dialog,
        [0] = "3302273970",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
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

function export:OnEnter_box_Random_2()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 10,
        },
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_11()
    local params;
    params = {
        -- Dialog,
        [0] = "1480691066",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B45.domino|@LT01_030_PA_RandomComputer|2082708164");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_6_Out,
    });
    params = {
        -- Max,
        [0] = self.MaxTime,
        -- Min,
        [1] = self.MinTime,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_9()
    local params;
    params = {
        -- Dialog,
        [0] = "2630574900",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_20_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_17;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_6_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_3;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StartFire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StopFire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="MaxTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="MinTime" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
