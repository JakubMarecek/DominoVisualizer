LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni58/uni58_020/uni58_020_b10.domino
-- User graph: DragonEggsManager
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3319793136.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2268508890.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_020/UNI58_020_B10.DragonEggsManager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
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
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "DragonEggsManager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager";
    self.box_StaticBreakableListener_10 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|26113480");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_10_OnDamage,
    });
    self.box_StaticBreakableListener_5 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|117654615");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_5_OnDamage,
    });
    self.box_StaticBreakableListener_6 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|310234694");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_6_OnDamage,
    });
    self.box_StaticBreakableListener_9 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|312116624");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_9_OnDamage,
    });
    self.box_StaticBreakableListener_13 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|324744567");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_13_OnDamage,
    });
    self.box_StaticBreakableListener_17 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|340383237");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_17_OnDamage,
    });
    self.box_StaticBreakableListener_7 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|562719113");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_7_OnDamage,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|665127804");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_StaticBreakableListener_12 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|687321275");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_12_OnDamage,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|743619298");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_StaticBreakableListener_15 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|785385236");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_15_OnDamage,
    });
    self.box_StaticBreakableListener_4 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|943197161");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_4_OnDamage,
    });
    self.box_StaticBreakableListener_2 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|957165440");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_2_OnDamage,
    });
    self.box_StaticBreakableListener_11 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1103420588");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_11_OnDamage,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1176910989");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 16,
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
    self.box_Switch_3 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1292145088");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_3_Output_0,
                [1] = self.f_box_Switch_3_Output_1,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_24 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1376384089");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_24_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_24_Out,
    });
    self.box_StaticBreakableListener_22 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1521972001");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_22_OnDamage,
    });
    self.box_StaticBreakableListener_26 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1682941581");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_26_OnDamage,
    });
    self.box_StaticBreakableListener_23 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1734811220");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_23_OnDamage,
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1780703225");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_1_Finished,
    });
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1865285130");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_21_Finished,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1981492688");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_StaticBreakableListener_19 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|2031834390");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_19_OnDamage,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|825474813", "825474813", "DragonEggsManager", "In", "box_OutputOrder_v2_18.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_10_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_10;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|578670163", "578670163", "DragonEggsManager", "box_StaticBreakableListener_10.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_StaticBreakableListener_5_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_5;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|802815087", "802815087", "DragonEggsManager", "box_StaticBreakableListener_5.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_StaticBreakableListener_6_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_6;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1453164227", "1453164227", "DragonEggsManager", "box_StaticBreakableListener_6.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_StaticBreakableListener_9_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_9;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1693920842", "1693920842", "DragonEggsManager", "box_StaticBreakableListener_9.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_13_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_13;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1799416547", "1799416547", "DragonEggsManager", "box_StaticBreakableListener_13.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_StaticBreakableListener_17_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_17;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|635937878", "635937878", "DragonEggsManager", "box_StaticBreakableListener_17.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_StaticBreakableListener_7_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_7;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1275069522", "1275069522", "DragonEggsManager", "box_StaticBreakableListener_7.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 15);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|148899261", "148899261", "DragonEggsManager", "box_MultipleOR_8.Out", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_12_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_12;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|657547988", "657547988", "DragonEggsManager", "box_StaticBreakableListener_12.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 14);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Delay_v5_20;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|232770564", "232770564", "DragonEggsManager", "box_Delay_v5_20.TimeElapsed", "box_Gate_v3_24.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_15_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_15;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|130969350", "130969350", "DragonEggsManager", "box_StaticBreakableListener_15.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 13);
end;

function export:f_box_StaticBreakableListener_4_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|448523014", "448523014", "DragonEggsManager", "box_StaticBreakableListener_4.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_9();
    l0 = self.box_StaticBreakableListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|935813003", "935813003", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_19();
    l0 = self.box_StaticBreakableListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|2132703322", "2132703322", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_11();
    l0 = self.box_StaticBreakableListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|656964583", "656964583", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_17();
    l0 = self.box_StaticBreakableListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|2144442850", "2144442850", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_4();
    l0 = self.box_StaticBreakableListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|2088311740", "2088311740", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_23();
    l0 = self.box_StaticBreakableListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|194737098", "194737098", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_6();
    l0 = self.box_StaticBreakableListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|96185584", "96185584", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_10();
    l0 = self.box_StaticBreakableListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|135524736", "135524736", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_22();
    l0 = self.box_StaticBreakableListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|187599907", "187599907", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_2();
    l0 = self.box_StaticBreakableListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1697179764", "1697179764", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_5();
    l0 = self.box_StaticBreakableListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|603074697", "603074697", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_13();
    l0 = self.box_StaticBreakableListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1034500588", "1034500588", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_26();
    l0 = self.box_StaticBreakableListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|43853467", "43853467", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_15();
    l0 = self.box_StaticBreakableListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1481622396", "1481622396", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_12();
    l0 = self.box_StaticBreakableListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1025817815", "1025817815", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_7();
    l0 = self.box_StaticBreakableListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|260688115", "260688115", "DragonEggsManager", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_2_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_2;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|751587135", "751587135", "DragonEggsManager", "box_StaticBreakableListener_2.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_StaticBreakableListener_11_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_11;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|354292073", "354292073", "DragonEggsManager", "box_StaticBreakableListener_11.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|2094769970", "2094769970", "DragonEggsManager", "box_MultipleOR_25.Out", "box_Gate_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_3_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|466316369", "466316369", "DragonEggsManager", "box_Switch_3.Output", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_3_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|241750731", "241750731", "DragonEggsManager", "box_Switch_3.Output", "box_PlayDialog_v6_21.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_24_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Gate_v3_24;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|210271407", "210271407", "DragonEggsManager", "box_Gate_v3_24.Opened", "box_Delay_v5_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_Gate_v3_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|557268378", "557268378", "DragonEggsManager", "box_Gate_v3_24.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_22_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_22;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1017978072", "1017978072", "DragonEggsManager", "box_StaticBreakableListener_22.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_StaticBreakableListener_26_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_26;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|693688463", "693688463", "DragonEggsManager", "box_StaticBreakableListener_26.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_StaticBreakableListener_23_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_23;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|120020674", "120020674", "DragonEggsManager", "box_StaticBreakableListener_23.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_PlayDialog_v6_1_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|759715180", "759715180", "DragonEggsManager", "box_PlayDialog_v6_1.Finished", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_21_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_21;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1836290336", "1836290336", "DragonEggsManager", "box_PlayDialog_v6_21.Finished", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1059567121", "1059567121", "DragonEggsManager", "box_OutputOrder_v2_16.Out", "box_Gate_v3_24.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_3();
    l0 = self.box_Switch_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|193162316", "193162316", "DragonEggsManager", "box_OutputOrder_v2_16.Out", "box_Switch_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_3();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_Switch_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|248373834", "248373834", "DragonEggsManager", "box_Delay_v5_14.TimeElapsed", "box_Switch_3.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_19_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_19;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|715758066", "715758066", "DragonEggsManager", "box_StaticBreakableListener_19.OnDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_StaticBreakableListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101245031517006661",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101256887166060253",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101233168714581265",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101134322751783709",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101256890068518623",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101149273044304818",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101148886585328513",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101145374822515521",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101145292918244136",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2103221731891148439",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|947828196");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 16,
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
                [4] = self.f_box_OutputOrder_v2_18_Out_4,
                [5] = self.f_box_OutputOrder_v2_18_Out_5,
                [6] = self.f_box_OutputOrder_v2_18_Out_6,
                [7] = self.f_box_OutputOrder_v2_18_Out_7,
                [8] = self.f_box_OutputOrder_v2_18_Out_8,
                [9] = self.f_box_OutputOrder_v2_18_Out_9,
                [10] = self.f_box_OutputOrder_v2_18_Out_10,
                [11] = self.f_box_OutputOrder_v2_18_Out_11,
                [12] = self.f_box_OutputOrder_v2_18_Out_12,
                [13] = self.f_box_OutputOrder_v2_18_Out_13,
                [14] = self.f_box_OutputOrder_v2_18_Out_14,
                [15] = self.f_box_OutputOrder_v2_18_Out_15,
            },
            count = 16,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101245038437608267",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101768198742348976",
    };
    return params;
end;

function export:OnEnter_box_Switch_3()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_24()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101245035814071113",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_26()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101145288283538214",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2103221752199968408",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    DrawTextToScreen("Comment: Hey! Thosee are one of a kind props!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hey! Thosee are one of a kind props!");
    params = {
        -- Group,
        [0] = "#325D8262",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3319793136",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    DrawTextToScreen("Comment: Not my dragon eggs!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Not my dragon eggs!");
    params = {
        -- Group,
        [0] = "#325D8262",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2268508890",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_B10.domino|@DragonEggsManager|1872062648");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2101148897937212295",
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
