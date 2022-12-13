LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni53/uni53_010_cultlocation.domino
-- User graph: FatherSpeech
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
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[674278345.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1903615647.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3763887406.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3216178402.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2827851766.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2405891227.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2438318838.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1137455540.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1512298676.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4008502691.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2665053804.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3063702295.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1440390938.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_CultLocation.FatherSpeech.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StopSpeech",
            },
        },
        controlInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "FatherSpeech";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech";
    self.box_SoundModifier_v2_11 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|101906172");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_11_Finished,
    });
    self.box_SoundModifier_v2_2 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|183249307");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_2_Finished,
    });
    self.box_Gate_v3_16 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|440395256");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_16_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_16_Out,
    });
    self.box_SoundModifier_v2_4 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|455058343");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_4_Finished,
    });
    self.box_SoundModifier_v2_12 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|581923535");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_12_Finished,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|616574201");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_SoundModifier_v2_8 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1087565247");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_8_Finished,
    });
    self.box_SoundModifier_v2_7 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1326372350");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_7_Finished,
    });
    self.box_SoundModifier_v2_5 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1391921452");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_5_Finished,
    });
    self.box_SoundModifier_v2_9 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1424923385");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_9_Finished,
    });
    self.box_SoundModifier_v2_1 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1711700615");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_1_Finished,
    });
    self.box_SoundModifier_v2_10 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1717668994");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_10_Finished,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1926032425");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_SoundModifier_v2_3 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1927993827");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_3_Finished,
    });
    self.box_SoundModifier_v2_13 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1996568963");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_13_Finished,
    });
    self.box_SoundModifier_v2_6 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|2103823098");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_6_Finished,
    });
end;

function export:In()
    local l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|549076706", "549076706", "FatherSpeech", "In", "box_MultipleOR_15.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:StopSpeech()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|431355930", "431355930", "FatherSpeech", "StopSpeech", "box_Gate_v3_16.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_11_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_12();
    l0 = self.box_SoundModifier_v2_11;
    l1 = self.box_SoundModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1672302041", "1672302041", "FatherSpeech", "box_SoundModifier_v2_11.Finished", "box_SoundModifier_v2_12.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_2_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_3();
    l0 = self.box_SoundModifier_v2_2;
    l1 = self.box_SoundModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|268812445", "268812445", "FatherSpeech", "box_SoundModifier_v2_2.Finished", "box_SoundModifier_v2_3.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_16_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_Gate_v3_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|804796003", "804796003", "FatherSpeech", "box_Gate_v3_16.Closed", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_16_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_16;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|189977557", "189977557", "FatherSpeech", "box_Gate_v3_16.Out", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_4_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_5();
    l0 = self.box_SoundModifier_v2_4;
    l1 = self.box_SoundModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1933994110", "1933994110", "FatherSpeech", "box_SoundModifier_v2_4.Finished", "box_SoundModifier_v2_5.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1229366039", "1229366039", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_1.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|101983256", "101983256", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_3();
    l0 = self.box_SoundModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1590063907", "1590063907", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_3.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|2063158450", "2063158450", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_5();
    l0 = self.box_SoundModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1459133816", "1459133816", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_5.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_6();
    l0 = self.box_SoundModifier_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1707435009", "1707435009", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_6.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_7();
    l0 = self.box_SoundModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|457344482", "457344482", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_7.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_8();
    l0 = self.box_SoundModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|736076338", "736076338", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1332178063", "1332178063", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_13.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_12();
    l0 = self.box_SoundModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|552778922", "552778922", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_11();
    l0 = self.box_SoundModifier_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1257757748", "1257757748", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_11.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_10();
    l0 = self.box_SoundModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1550671470", "1550671470", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_10.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_9();
    l0 = self.box_SoundModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|428316887", "428316887", "FatherSpeech", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_9.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_12_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_SoundModifier_v2_12;
    l1 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1157166239", "1157166239", "FatherSpeech", "box_SoundModifier_v2_12.Finished", "box_SoundModifier_v2_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1557607299", "1557607299", "FatherSpeech", "box_Delay_v5_14.TimeElapsed", "box_Gate_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_8_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_9();
    l0 = self.box_SoundModifier_v2_8;
    l1 = self.box_SoundModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|807910854", "807910854", "FatherSpeech", "box_SoundModifier_v2_8.Finished", "box_SoundModifier_v2_9.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_7_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_8();
    l0 = self.box_SoundModifier_v2_7;
    l1 = self.box_SoundModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|672006336", "672006336", "FatherSpeech", "box_SoundModifier_v2_7.Finished", "box_SoundModifier_v2_8.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_5_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_6();
    l0 = self.box_SoundModifier_v2_5;
    l1 = self.box_SoundModifier_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1006793204", "1006793204", "FatherSpeech", "box_SoundModifier_v2_5.Finished", "box_SoundModifier_v2_6.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_9_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_10();
    l0 = self.box_SoundModifier_v2_9;
    l1 = self.box_SoundModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1962476380", "1962476380", "FatherSpeech", "box_SoundModifier_v2_9.Finished", "box_SoundModifier_v2_10.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_1_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_SoundModifier_v2_1;
    l1 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1486407588", "1486407588", "FatherSpeech", "box_SoundModifier_v2_1.Finished", "box_SoundModifier_v2_2.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_11();
    l0 = self.box_SoundModifier_v2_10;
    l1 = self.box_SoundModifier_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1110150553", "1110150553", "FatherSpeech", "box_SoundModifier_v2_10.Finished", "box_SoundModifier_v2_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1818191005", "1818191005", "FatherSpeech", "box_MultipleOR_15.Out", "box_SoundModifier_v2_1.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_3_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_3;
    l1 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1467822387", "1467822387", "FatherSpeech", "box_SoundModifier_v2_3.Finished", "box_SoundModifier_v2_4.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_13_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_SoundModifier_v2_13;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|1597881726", "1597881726", "FatherSpeech", "box_SoundModifier_v2_13.Finished", "box_Delay_v5_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_6_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_7();
    l0 = self.box_SoundModifier_v2_6;
    l1 = self.box_SoundModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|880382776", "880382776", "FatherSpeech", "box_SoundModifier_v2_6.Finished", "box_SoundModifier_v2_7.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:OnEnter_box_SoundModifier_v2_11()
    local params;
    DrawTextToScreen("Comment: We and we alone as been chosen", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: We and we alone as been chosen");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "2665053804",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_2()
    local params;
    DrawTextToScreen("Comment: We are the project at Eden's gate", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: We are the project at Eden's gate");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "1903615647",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_16()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_4()
    local params;
    DrawTextToScreen("Comment: But a few among us", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: But a few among us");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "2405891227",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_CultLocation.domino|@FatherSpeech|458838111");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 13,
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
                [5] = self.f_box_OutputOrder_v2_17_Out_5,
                [6] = self.f_box_OutputOrder_v2_17_Out_6,
                [7] = self.f_box_OutputOrder_v2_17_Out_7,
                [8] = self.f_box_OutputOrder_v2_17_Out_8,
                [9] = self.f_box_OutputOrder_v2_17_Out_9,
                [10] = self.f_box_OutputOrder_v2_17_Out_10,
                [11] = self.f_box_OutputOrder_v2_17_Out_11,
                [12] = self.f_box_OutputOrder_v2_17_Out_12,
            },
            count = 13,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_12()
    local params;
    DrawTextToScreen("Comment: We are a family", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: We are a family");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "1137455540",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_8()
    local params;
    DrawTextToScreen("Comment: But now it is we few", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: But now it is we few");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "2438318838",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_7()
    local params;
    DrawTextToScreen("Comment: We are wondered aimlessly", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: We are wondered aimlessly");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "1512298676",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_5()
    local params;
    DrawTextToScreen("Comment: Generosity was replaced with acquisition", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Generosity was replaced with acquisition");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "3216178402",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_9()
    local params;
    DrawTextToScreen("Comment: A mighty upheaval shall curse", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: A mighty upheaval shall curse");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "3063702295",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_1()
    local params;
    DrawTextToScreen("Comment: If you are hearing these words", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: If you are hearing these words");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "674278345",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_10()
    local params;
    DrawTextToScreen("Comment: We stand on the edge", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: We stand on the edge");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "1440390938",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_3()
    local params;
    DrawTextToScreen("Comment: Long ago before the idea of war", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Long ago before the idea of war");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "4008502691",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_13()
    local params;
    DrawTextToScreen("Comment: I am your father", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: I am your father");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "3763887406",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_6()
    local params;
    DrawTextToScreen("Comment: Thus began the cycle of binge", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Thus began the cycle of binge");
    params = {
        -- Pawns,
        [0] = "2103998638001768359",
        -- SoundId,
        [1] = "2827851766",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StopSpeech" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
