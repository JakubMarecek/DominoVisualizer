LUAC�w  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b40.domino
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
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[16432295.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1715325879.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3302273970.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1573410691.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1138832686.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4181251447.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2630574900.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1480691066.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1093190570.bnk]], "CSoundResource");
        cboxRes:LoadResource([[304050177.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_RandomComputer.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua")] = {
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
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer";
    self.box_LT01_030_PA_Dialog_16 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|102763497");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_13 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|860754117");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_9 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|968657826");
    l0:SetConnections({
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1005553279");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Random_4 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1282670544");
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
                [0] = self.f_box_Random_4_Output_0,
                [1] = self.f_box_Random_4_Output_1,
                [2] = self.f_box_Random_4_Output_2,
                [3] = self.f_box_Random_4_Output_3,
                [4] = self.f_box_Random_4_Output_4,
                [5] = self.f_box_Random_4_Output_5,
                [6] = self.f_box_Random_4_Output_6,
                [7] = self.f_box_Random_4_Output_7,
                [8] = self.f_box_Random_4_Output_8,
                [9] = self.f_box_Random_4_Output_9,
            },
            count = 10,
        },
    });
    self.box_LT01_030_PA_Dialog_15 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1301293381");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_7 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1349777818");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_24 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1351126989");
    l0:SetConnections({
    });
    self.box_Gate_v3_2 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1481098130");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_2_Out,
    });
    self.box_LT01_030_PA_Dialog_23 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1504259223");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_20 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1662237415");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_10 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1921139470");
    l0:SetConnections({
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|2059666528");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_LT01_030_PA_Dialog_22 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|2061791249");
    l0:SetConnections({
    });
end;

function export:Start()
    local l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|981182808", "981182808", "LT01_030_PA_RandomComputer", "Start", "box_MultipleOR_26.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1056838329", "1056838329", "LT01_030_PA_RandomComputer", "Stop", "box_Gate_v3_2.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_4();
    l0 = self.box_Random_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1335258497", "1335258497", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_25.Out", "box_Random_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1729982844", "1729982844", "LT01_030_PA_RandomComputer", "box_OutputOrder_v2_25.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_MultipleOR_26;
    l1 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|457956884", "457956884", "LT01_030_PA_RandomComputer", "box_MultipleOR_26.Out", "box_Gate_v3_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_4_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_7();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1514696852", "1514696852", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_7.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_9();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1852054990", "1852054990", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_9.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_10();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|917595038", "917595038", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_10.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_13();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|2100356183", "2100356183", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_16();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|664774182", "664774182", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_15();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|351092000", "351092000", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_23();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|718712688", "718712688", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_23.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_22();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1826598754", "1826598754", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_22.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_20();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|271529145", "271529145", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_20.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_4_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_24();
    l0 = self.box_Random_4;
    l1 = self.box_LT01_030_PA_Dialog_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|2023364598", "2023364598", "LT01_030_PA_RandomComputer", "box_Random_4.Output", "box_LT01_030_PA_Dialog_24.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_1_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|896061676", "896061676", "LT01_030_PA_RandomComputer", "box_RandomFloat_v2_1.Out", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_1();
    l0 = self.box_Gate_v3_2;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|678191146", "678191146", "LT01_030_PA_RandomComputer", "box_Gate_v3_2.Out", "box_RandomFloat_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|934474007", "934474007", "LT01_030_PA_RandomComputer", "box_Delay_v5_3.TimeElapsed", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_LT01_030_PA_Dialog_16()
    local params;
    params = {
        -- Dialog,
        [0] = "1480691066",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|210654880");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
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
        [0] = "4181251447",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_9()
    local params;
    params = {
        -- Dialog,
        [0] = "16432295",
    };
    return params;
end;

function export:OnEnter_box_Random_4()
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

function export:OnEnter_box_LT01_030_PA_Dialog_15()
    local params;
    params = {
        -- Dialog,
        [0] = "1715325879",
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

function export:OnEnter_box_LT01_030_PA_Dialog_24()
    local params;
    params = {
        -- Dialog,
        [0] = "304050177",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_PA_RandomComputer|1359207365");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_1_Out,
    });
    params = {
        -- Max,
        [0] = self.MaxTime,
        -- Min,
        [1] = self.MinTime,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_2()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_23()
    local params;
    params = {
        -- Dialog,
        [0] = "1138832686",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_20()
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
        [0] = "2630574900",
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

function export:OnEnter_box_LT01_030_PA_Dialog_22()
    local params;
    params = {
        -- Dialog,
        [0] = "3302273970",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_1_Out()
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
		<ControlIn Name="Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="MaxTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="MinTime" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
