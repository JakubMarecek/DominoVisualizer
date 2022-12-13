LUAC�d  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_050/key01_050_b10.domino
-- User graph: Dialog_ANIMAL
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
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1662982979.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2009481199.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1569836904.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1699623781.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3284062211.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2008784578.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_B10.Dialog_ANIMAL.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Dialog_ANIMAL";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL";
    self.Out = DummyFunction;
    self.gFriendlyPlayer = nil;
    self.eKimRye = nil;
    self.eNickRye = nil;
    self.box_PlayDialog_v6_7 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|60440592");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_7_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_7_FinishedInterrupted,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|206457803");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|567155671");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|575679709");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_8_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_8_FinishedInterrupted,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|621094177");
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
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|747601900");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_2_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_2_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_3 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|1511313092");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_3_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_3_FinishedInterrupted,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|1639923298");
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
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|1686855712");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_1_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_1_FinishedInterrupted,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|1793738355");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|2128572922");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_9_Finished,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetEntity_v2_17();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|165644667", "165644667", "Dialog_ANIMAL", "In", "box_SetEntity_v2_17.FromEntity", self, l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_7_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_7;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|38147949", "38147949", "Dialog_ANIMAL", "box_PlayDialog_v6_7.Finished", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_7_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_7;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|982982798", "982982798", "Dialog_ANIMAL", "box_PlayDialog_v6_7.FinishedInterrupted", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|258403082", "258403082", "Dialog_ANIMAL", "box_MultipleOR_13.Out", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_6_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|2031013053", "2031013053", "Dialog_ANIMAL", "box_SetEntity_v2_6.Out", "box_PlayDialog_v6_1.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_17_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_6();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|171815099", "171815099", "Dialog_ANIMAL", "box_SetEntity_v2_17.Out", "box_SetEntity_v2_6.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|37686599", "37686599", "Dialog_ANIMAL", "box_MultipleOR_14.Out", "box_PlayDialog_v6_7.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_8_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_8;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|215783780", "215783780", "Dialog_ANIMAL", "box_PlayDialog_v6_8.Finished", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_8_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_8;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|751779871", "751779871", "Dialog_ANIMAL", "box_PlayDialog_v6_8.FinishedInterrupted", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|1741598647", "1741598647", "Dialog_ANIMAL", "box_MultipleOR_15.Out", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_2_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|1215712250", "1215712250", "Dialog_ANIMAL", "box_PlayDialog_v6_2.Finished", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_2_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|1737454495", "1737454495", "Dialog_ANIMAL", "box_PlayDialog_v6_2.FinishedInterrupted", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_3_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_3;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|654122008", "654122008", "Dialog_ANIMAL", "box_PlayDialog_v6_3.Finished", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_3_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_3;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|879083471", "879083471", "Dialog_ANIMAL", "box_PlayDialog_v6_3.FinishedInterrupted", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|860542848", "860542848", "Dialog_ANIMAL", "box_MultipleOR_16.Out", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_1_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|416782636", "416782636", "Dialog_ANIMAL", "box_PlayDialog_v6_1.Finished", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_1_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|2099435659", "2099435659", "Dialog_ANIMAL", "box_PlayDialog_v6_1.FinishedInterrupted", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_3();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_PlayDialog_v6_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|722251119", "722251119", "Dialog_ANIMAL", "box_MultipleOR_10.Out", "box_PlayDialog_v6_3.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_9_Finished()
    local l0;
    l0 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|195646333", "195646333", "Dialog_ANIMAL", "box_PlayDialog_v6_9.Finished", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:OnEnter_box_PlayDialog_v6_7()
    local params;
    DrawTextToScreen("Comment: Who cares about the goddamn pigs?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Who cares about the goddamn pigs?");
    params = {
        -- Group,
        [0] = self.eKimRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1569836904",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|332570958");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_6_Out,
    });
    params = {
        -- Entity,
        [0] = "2104519269566947444",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B10.domino|@Dialog_ANIMAL|460525449");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_17_Out,
    });
    params = {
        -- Entity,
        [0] = "2104519269562753138",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    DrawTextToScreen("Comment: Pigs! Watch the pigs.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Pigs! Watch the pigs.");
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1662982979",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    DrawTextToScreen("Comment: Hey, don't be cruel to 'em just 'cause you're in labor -- OW... Ow my hand...!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hey, don't be cruel to 'em just 'cause you're in labor -- OW... Ow my hand...!");
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2009481199",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_3()
    local params;
    DrawTextToScreen("Comment: What? What's what?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: What? What's what?");
    params = {
        -- Group,
        [0] = self.eKimRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2008784578",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    DrawTextToScreen("Comment: The fuck is that?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: The fuck is that?");
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3284062211",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    DrawTextToScreen("Comment: I don't give a flying fuck about some goddamn pigs! Run them over if you have to!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: I don't give a flying fuck about some goddamn pigs! Run them over if you have to!");
    params = {
        -- Group,
        [0] = self.eKimRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1699623781",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eKimRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eNickRye = l0:GetDataOutValue(0);
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
