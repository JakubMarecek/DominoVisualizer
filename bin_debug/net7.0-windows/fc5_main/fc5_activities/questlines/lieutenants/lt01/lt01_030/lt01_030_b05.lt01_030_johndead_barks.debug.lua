LUACD� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b05.domino
-- User graph: LT01_030_JohnDead_Barks
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="GuardGroup" Type="Nomad|group" />
    <DataIn Name="MinDelay" Type="Core|float" />
    <DataIn Name="MaxDelay" Type="Core|float" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualStrategyListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2077797711.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2366590954.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3077199756.bnk]], "CSoundResource");
        cboxRes:LoadResource([[454591094.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3681747514.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1385621889.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1209388110.bnk]], "CSoundResource");
        cboxRes:LoadResource([[510595076.bnk]], "CSoundResource");
        cboxRes:LoadResource([[415066112.bnk]], "CSoundResource");
        cboxRes:LoadResource([[661465561.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3198781848.bnk]], "CSoundResource");
        cboxRes:LoadResource([[542188327.bnk]], "CSoundResource");
        cboxRes:LoadResource([[216758442.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2357569318.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3089629699.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3777630517.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1683679393.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1895487005.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2553638696.bnk]], "CSoundResource");
        cboxRes:LoadResource([[855053844.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4121505297.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2146534032.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3880030765.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3051382407.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3013031520.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1083364011.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2989391380.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4179890225.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B05.LT01_030_JohnDead_Barks.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_InsideBarks",
            },
            [1] = {
                name = "Start_OutsideBarks",
            },
            [2] = {
                name = "Stop_InsideBarks",
            },
            [3] = {
                name = "Stop_OutsideBarks",
            },
        },
        controlInCount = 4,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "GuardGroup",
                type = "group",
            },
            [1] = {
                name = "MaxDelay",
                type = "float",
            },
            [2] = {
                name = "MinDelay",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualStrategyListener.lua")] = {
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
                name = "End",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "ContextualStrategy",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT01_030_JohnDead_Barks";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks";
    self.box_PlayDialog_v6_63 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|18297912");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|38443871");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_51 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|54069995");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_40 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|70195488");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|181158929");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_12 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|215693361");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_13 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|229193659");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_27 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|239786088");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_60 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|252625390");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_46 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|272464779");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_42 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|291575616");
    l0:SetConnections({
    });
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|329245107");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|333826472");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|365287390");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_49 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|457435131");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|514041529");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_41 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|565049150");
    l0:SetConnections({
    });
    self.box_Gate_v3_75 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|591020433");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_75_Out,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|594201510");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|633100299");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|659785774");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|671547801");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|695272625");
    l0:SetConnections({
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|718102401");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_PlayDialog_v6_74 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|763597267");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_61 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|765421546");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|806205535");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_4 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|826972079");
    l0:SetConnections({
    });
    self.box_Random_32 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|829325450");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 24,
        },
        dataIn = {
            [1] = 24,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_32_Output_0,
                [1] = self.f_box_Random_32_Output_1,
                [2] = self.f_box_Random_32_Output_2,
                [3] = self.f_box_Random_32_Output_3,
                [4] = self.f_box_Random_32_Output_4,
                [5] = self.f_box_Random_32_Output_5,
                [6] = self.f_box_Random_32_Output_6,
                [7] = self.f_box_Random_32_Output_7,
                [8] = self.f_box_Random_32_Output_8,
                [9] = self.f_box_Random_32_Output_9,
                [10] = self.f_box_Random_32_Output_10,
                [11] = self.f_box_Random_32_Output_11,
                [12] = self.f_box_Random_32_Output_12,
                [13] = self.f_box_Random_32_Output_13,
                [14] = self.f_box_Random_32_Output_14,
                [15] = self.f_box_Random_32_Output_15,
                [16] = self.f_box_Random_32_Output_16,
                [17] = self.f_box_Random_32_Output_17,
                [18] = self.f_box_Random_32_Output_18,
                [19] = self.f_box_Random_32_Output_19,
                [20] = self.f_box_Random_32_Output_20,
                [21] = self.f_box_Random_32_Output_21,
                [22] = self.f_box_Random_32_Output_22,
                [23] = self.f_box_Random_32_Output_23,
            },
            count = 24,
        },
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|963447935");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_48 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|969127989");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_44 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|971754342");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_14 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1000000471");
    l0:SetConnections({
    });
    self.box_Gate_v3_52 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1005025799");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_52_Out,
    });
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1074125953");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1166624741");
    l0:SetConnections({
    });
    self.box_Gate_v3_35 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1306094671");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_35_Out,
    });
    self.box_PlayDialog_v6_50 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1360268804");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1469931274");
    l0:SetConnections({
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1477428757");
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
        [0] = self.f_box_MultipleOR_72_Out,
    });
    self.box_PlayDialog_v6_71 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1487473750");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_36 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1577513486");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_36_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_36_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_36_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_36_MemberRemoved,
    });
    self.box_PlayDialog_v6_64 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1585176755");
    l0:SetConnections({
    });
    self.box_Random_58 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1624957186");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 24,
        },
        dataIn = {
            [1] = 24,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_58_Output_0,
                [1] = self.f_box_Random_58_Output_1,
                [2] = self.f_box_Random_58_Output_2,
                [3] = self.f_box_Random_58_Output_3,
                [4] = self.f_box_Random_58_Output_4,
                [5] = self.f_box_Random_58_Output_5,
                [6] = self.f_box_Random_58_Output_6,
                [7] = self.f_box_Random_58_Output_7,
                [8] = self.f_box_Random_58_Output_8,
                [9] = self.f_box_Random_58_Output_9,
                [10] = self.f_box_Random_58_Output_10,
                [11] = self.f_box_Random_58_Output_11,
                [12] = self.f_box_Random_58_Output_12,
                [13] = self.f_box_Random_58_Output_13,
                [14] = self.f_box_Random_58_Output_14,
                [15] = self.f_box_Random_58_Output_15,
                [16] = self.f_box_Random_58_Output_16,
                [17] = self.f_box_Random_58_Output_17,
                [18] = self.f_box_Random_58_Output_18,
                [19] = self.f_box_Random_58_Output_19,
                [20] = self.f_box_Random_58_Output_20,
                [21] = self.f_box_Random_58_Output_21,
                [22] = self.f_box_Random_58_Output_22,
                [23] = self.f_box_Random_58_Output_23,
            },
            count = 24,
        },
    });
    self.box_PlayDialog_v6_43 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1646902956");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1691267834");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_56 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1711439131");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_56_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_56_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_56_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_56_MemberRemoved,
    });
    self.box_ContextualStrategyListener_76 = cbox:CreateBox("Domino/System/AI/ContextualStrategyListener.lua");
    l0 = self.box_ContextualStrategyListener_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualStrategyListener_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1750960904");
    l0:SetConnections({
        -- End,
        [2] = self.f_box_ContextualStrategyListener_76_End,
    });
    self.box_PlayDialog_v6_69 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1773622550");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1779783011");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_73 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1838126180");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_30 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1853382168");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_53 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1881474454");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_15 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1897953589");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_28 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1908894994");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_62 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1985448022");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_17 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2040539491");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2059632888");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_47 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2066919516");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2108663104");
    l0:SetConnections({
    });
end;

function export:Start_InsideBarks()
    local l0;
    l0 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|680021418", "680021418", "LT01_030_JohnDead_Barks", "Start_InsideBarks", "box_MultipleOR_72.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Start_OutsideBarks()
    local l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1847951451", "1847951451", "LT01_030_JohnDead_Barks", "Start_OutsideBarks", "box_MultipleOR_2.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Stop_InsideBarks()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_52();
    l0 = self.box_Gate_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|617211699", "617211699", "LT01_030_JohnDead_Barks", "Stop_InsideBarks", "box_Gate_v3_52.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:Stop_OutsideBarks()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2093494273", "2093494273", "LT01_030_JohnDead_Barks", "Stop_OutsideBarks", "box_Gate_v3_35.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_66_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_52();
    l0 = self.box_Gate_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|16465052", "16465052", "LT01_030_JohnDead_Barks", "box_RandomFloat_v2_66.Out", "box_Gate_v3_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_Delay_v5_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|444278739", "444278739", "LT01_030_JohnDead_Barks", "box_Delay_v5_65.TimeElapsed", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_33();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|350946880", "350946880", "LT01_030_JohnDead_Barks", "box_MultipleOR_2.Out", "box_RandomFloat_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1783675934", "1783675934", "LT01_030_JohnDead_Barks", "box_OutputOrder_v2_34.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_36();
    l0 = self.box_GroupSizeListener_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|860924064", "860924064", "LT01_030_JohnDead_Barks", "box_OutputOrder_v2_34.Out", "box_GroupSizeListener_v5_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualStrategyListener_76();
    l0 = self.box_ContextualStrategyListener_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1365716328", "1365716328", "LT01_030_JohnDead_Barks", "box_OutputOrder_v2_34.Out", "box_ContextualStrategyListener_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_33_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2067583273", "2067583273", "LT01_030_JohnDead_Barks", "box_RandomFloat_v2_33.Out", "box_Gate_v3_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_55_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_58();
    l0 = self.box_Random_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|15184849", "15184849", "LT01_030_JohnDead_Barks", "box_Compare_Integers_55.A_gt_B", "box_Random_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_32();
    l0 = self.box_Gate_v3_75;
    l1 = self.box_Random_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2026889085", "2026889085", "LT01_030_JohnDead_Barks", "box_Gate_v3_75.Out", "box_Random_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_Delay_v5_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1094435775", "1094435775", "LT01_030_JohnDead_Barks", "box_Delay_v5_1.TimeElapsed", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_32_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1068366868", "1068366868", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|874847507", "874847507", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_4.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1415050983", "1415050983", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_30.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|828286585", "828286585", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1035819699", "1035819699", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_27.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1652753019", "1652753019", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_6.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|765308753", "765308753", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1177541970", "1177541970", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2108587326", "2108587326", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|229236378", "229236378", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_14.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_12();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|454197841", "454197841", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_12.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_13();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1091224408", "1091224408", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_13.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|845326372", "845326372", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2039984764", "2039984764", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_14()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_17();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1374930691", "1374930691", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_17.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_15()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1439013590", "1439013590", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_28.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_16()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2124522046", "2124522046", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_20.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_17()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1895040920", "1895040920", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_18.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_18()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|717422315", "717422315", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_21.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_19()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1384879545", "1384879545", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_20()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|68953265", "68953265", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_23.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_21()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1769253369", "1769253369", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_22()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1666182671", "1666182671", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_32_Output_23()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Random_32;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1226090061", "1226090061", "LT01_030_JohnDead_Barks", "box_Random_32.Output", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Gate_v3_52;
    l1 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|84210710", "84210710", "LT01_030_JohnDead_Barks", "box_Gate_v3_52.Out", "box_Delay_v5_65.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_37_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_75();
    l0 = self.box_Gate_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|5815866", "5815866", "LT01_030_JohnDead_Barks", "box_Compare_Integers_37.A_gt_B", "box_Gate_v3_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Gate_v3_35;
    l1 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1784163641", "1784163641", "LT01_030_JohnDead_Barks", "box_Gate_v3_35.Out", "box_Delay_v5_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_66();
    l0 = self.box_MultipleOR_72;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1702184400", "1702184400", "LT01_030_JohnDead_Barks", "box_MultipleOR_72.Out", "box_RandomFloat_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_37();
    l0 = self.box_GroupSizeListener_v5_36;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|243963318", "243963318", "LT01_030_JohnDead_Barks", "box_GroupSizeListener_v5_36.Enabled", "box_Compare_Integers_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_58_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1017941158", "1017941158", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_57.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|767452685", "767452685", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_63.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_43();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1675402126", "1675402126", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_43.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|676974713", "676974713", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_62.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_48();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|81618942", "81618942", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_48.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|2015979947", "2015979947", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_73.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_53();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1739802546", "1739802546", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_53.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_69();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|292389669", "292389669", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_69.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_41();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|872608241", "872608241", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_41.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1612209384", "1612209384", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_46();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|235530278", "235530278", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_46.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_50();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|62630896", "62630896", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_50.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1335630543", "1335630543", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_61();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|217950658", "217950658", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_61.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_14()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_60();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1699063582", "1699063582", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_60.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_15()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_47();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1148632362", "1148632362", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_47.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_16()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|944865272", "944865272", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_42.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_17()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_49();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1596958385", "1596958385", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_49.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_18()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_64();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1142693371", "1142693371", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_64.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_19()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_40();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1393693606", "1393693606", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_40.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_20()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_44();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1918211766", "1918211766", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_44.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_21()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_71();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1876209503", "1876209503", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_71.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_22()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_74();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|317178117", "317178117", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_74.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_58_Output_23()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_Random_58;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1524634339", "1524634339", "LT01_030_JohnDead_Barks", "box_Random_58.Output", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_56_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_55();
    l0 = self.box_GroupSizeListener_v5_56;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|703369656", "703369656", "LT01_030_JohnDead_Barks", "box_GroupSizeListener_v5_56.Enabled", "box_Compare_Integers_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|191164038", "191164038", "LT01_030_JohnDead_Barks", "box_OutputOrder_v2_39.Out", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_56();
    l0 = self.box_GroupSizeListener_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|269386390", "269386390", "LT01_030_JohnDead_Barks", "box_OutputOrder_v2_39.Out", "box_GroupSizeListener_v5_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ContextualStrategyListener_76_End()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_75();
    l0 = self.box_ContextualStrategyListener_76;
    l1 = self.box_Gate_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|925455605", "925455605", "LT01_030_JohnDead_Barks", "box_ContextualStrategyListener_76.End", "box_Gate_v3_75.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:OnEnter_box_PlayDialog_v6_63()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3013031520",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2553638696",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_51()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3077199756",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_40()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1385621889",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|80912588");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_66_Out,
    });
    params = {
        -- Max,
        [0] = 12,
        -- Min,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3089629699",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_12()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1209388110",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_13()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "415066112",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_27()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3681747514",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_60()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3051382407",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_46()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1209388110",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_42()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3880030765",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
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

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4121505297",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|441703484");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_49()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2366590954",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|491044775");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_33_Out,
    });
    params = {
        -- Max,
        [0] = self.MaxDelay,
        -- Min,
        [1] = self.MinDelay,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "454591094",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|541334031");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_55_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_56;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_41()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3198781848",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_75()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1895487005",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1683679393",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "510595076",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3880030765",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2077797711",
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

function export:OnEnter_box_PlayDialog_v6_74()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2146534032",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_61()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "542188327",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1385621889",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_4()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3777630517",
    };
    return params;
end;

function export:OnEnter_box_Random_32()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 24,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2357569318",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_48()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2989391380",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_44()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "855053844",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_14()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3077199756",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_52()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2366590954",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "216758442",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1260221169");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_37_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_36;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_35()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_50()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "415066112",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1083364011",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_71()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4121505297",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_36()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.GuardGroup,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_64()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1683679393",
    };
    return params;
end;

function export:OnEnter_box_Random_58()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 24,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_43()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "661465561",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4179890225",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_56()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.GuardGroup,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B05.domino|@LT01_030_JohnDead_Barks|1743059327");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualStrategyListener_76()
    local params;
    params = {
        -- ContextualStrategy,
        [0] = "2101201779791241031",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_69()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "510595076",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "855053844",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_73()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4179890225",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_30()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "542188327",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_53()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2553638696",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_15()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1083364011",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_28()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3013031520",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_62()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2357569318",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_17()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3051382407",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1895487005",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_47()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "216758442",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = self.GuardGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2146534032",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_66_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_65;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_33_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_1;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start_InsideBarks" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_OutsideBarks" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop_InsideBarks" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop_OutsideBarks" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="GuardGroup" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="MaxDelay" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="MinDelay" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
