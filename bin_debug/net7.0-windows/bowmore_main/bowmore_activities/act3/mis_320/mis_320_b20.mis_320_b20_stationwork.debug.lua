LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b20.domino
-- User graph: MIS_320_B20_StationWork
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2718712296.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1516104386.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4007268925.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_StationWork.debug.lua")] = {
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
                name = "Success",
                delayed = false,
            },
            [2] = {
                name = "WorkStarted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua")] = {
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
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "b_CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "b_EntityIsProximityTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "e_EntityToInteractWith",
                type = "entity",
            },
            [4] = {
                name = "e_ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "InteractionHUD",
                type = "oasis",
            },
            [6] = {
                name = "o_ObjectiveText",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eInteractor",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_320_B20_StationWork";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork";
    self.Success = DummyFunction;
    self.Out = DummyFunction;
    self.WorkStarted = DummyFunction;
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|432035783");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_9_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_9_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|465892606");
    l0:SetConnections({
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|545118022");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Brick_Interact_With_Object_NoDisable_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_NoDisable_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_NoDisable_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|583884462");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_NoDisable_5_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_NoDisable_5_Success,
    });
    self.box_Gate_v3_15 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|617044619");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_15_Out,
    });
    self.box_LookAtTrigger_v2_7 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|874152733");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_7_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_7_EnterFOV,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1201342147");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1291154052");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1320713963");
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
    self.box_ShimmerModifier_v2_4 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1659580384");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_4_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_4_Enabled,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1715813807");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1777558894");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_NoDisable_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_NoDisable_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_NoDisable_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|2050690577");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_NoDisable_13_Success,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_NoDisable_5();
    l0 = self.box_Brick_Interact_With_Object_NoDisable_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|841263757", "841263757", "MIS_320_B20_StationWork", "In", "box_Brick_Interact_With_Object_NoDisable_5.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|66958491", "66958491", "MIS_320_B20_StationWork", "box_Simple_Node_20.Out", "box_Gate_v3_15.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_LookAtTrigger_v2_7();
    l0 = self.box_LookAtTrigger_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1973714381", "1973714381", "MIS_320_B20_StationWork", "box_Simple_Node_20.Out", "box_LookAtTrigger_v2_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|491615238", "491615238", "MIS_320_B20_StationWork", "box_Simple_Node_19.Out", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_NoDisable_13();
    l0 = self.box_Brick_Interact_With_Object_NoDisable_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1133438525", "1133438525", "MIS_320_B20_StationWork", "box_OutputOrder_v2_2.Out", "box_Brick_Interact_With_Object_NoDisable_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1509096459", "1509096459", "MIS_320_B20_StationWork", "box_OutputOrder_v2_2.Out", "Success", clone:GetLuaBox(), self);
    self:Success();
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1065683015", "1065683015", "MIS_320_B20_StationWork", "box_OutputOrder_v2_2.Out", "box_Simple_Node_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_9_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|586910521", "586910521", "MIS_320_B20_StationWork", "box_PlayDialog_v6_9.Finished", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_9_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|608944753", "608944753", "MIS_320_B20_StationWork", "box_PlayDialog_v6_9.FinishedInterrupted", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|298452666", "298452666", "MIS_320_B20_StationWork", "box_MultipleOR_11.Out", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Interact_With_Object_NoDisable_5_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_4();
    l0 = self.box_Brick_Interact_With_Object_NoDisable_5;
    l1 = self.box_ShimmerModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|736412779", "736412779", "MIS_320_B20_StationWork", "box_Brick_Interact_With_Object_NoDisable_5.Started", "box_ShimmerModifier_v2_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_NoDisable_5_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_4();
    l0 = self.box_Brick_Interact_With_Object_NoDisable_5;
    l1 = self.box_ShimmerModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|938685366", "938685366", "MIS_320_B20_StationWork", "box_Brick_Interact_With_Object_NoDisable_5.Success", "box_ShimmerModifier_v2_4.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Gate_v3_15;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1753244842", "1753244842", "MIS_320_B20_StationWork", "box_Gate_v3_15.Out", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_7_Enabled()
    local l0;
    l0 = self.box_LookAtTrigger_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1797002089", "1797002089", "MIS_320_B20_StationWork", "box_LookAtTrigger_v2_7.Enabled", "WorkStarted", l0:GetLuaBox(), self);
    self:WorkStarted();
end;

function export:f_box_LookAtTrigger_v2_7_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_LookAtTrigger_v2_7;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|460009648", "460009648", "MIS_320_B20_StationWork", "box_LookAtTrigger_v2_7.EnterFOV", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|969342072", "969342072", "MIS_320_B20_StationWork", "box_OutputOrder_v2_1.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|441686146", "441686146", "MIS_320_B20_StationWork", "box_OutputOrder_v2_1.Out", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_7();
    l0 = self.box_LookAtTrigger_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|190565244", "190565244", "MIS_320_B20_StationWork", "box_OutputOrder_v2_1.Out", "box_LookAtTrigger_v2_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|179011142", "179011142", "MIS_320_B20_StationWork", "box_OutputOrder_v2_1.Out", "box_Simple_Node_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|231703449", "231703449", "MIS_320_B20_StationWork", "box_Delay_v5_12.TimeElapsed", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|436397693", "436397693", "MIS_320_B20_StationWork", "box_Delay_v5_6.TimeElapsed", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_NoDisable_13();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_Brick_Interact_With_Object_NoDisable_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1536009539", "1536009539", "MIS_320_B20_StationWork", "box_MultipleOR_3.Out", "box_Brick_Interact_With_Object_NoDisable_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ShimmerModifier_v2_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_ShimmerModifier_v2_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|93450472", "93450472", "MIS_320_B20_StationWork", "box_ShimmerModifier_v2_4.Disabled", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_4_Enabled()
    local l0;
    l0 = self.box_ShimmerModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|714607915", "714607915", "MIS_320_B20_StationWork", "box_ShimmerModifier_v2_4.Enabled", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Delay_v5_10;
    l1 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|162414101", "162414101", "MIS_320_B20_StationWork", "box_Delay_v5_10.TimeElapsed", "box_Gate_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_NoDisable_13_Success()
    local l0, l1;
    l0 = self.box_Brick_Interact_With_Object_NoDisable_13;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1781907575", "1781907575", "MIS_320_B20_StationWork", "box_Brick_Interact_With_Object_NoDisable_13.Success", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|@n_cancelSpeaker");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|@n_taskmasterSpeaker");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|410417832");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = "2108905021392295757",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1516104386",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = "2108905021392295757",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2718712296",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_NoDisable_5()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2107287910354015636",
        -- e_ObjectiveMarker,
        [4] = "2106871968497142351",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_320_B20_b_OBJ_Assemble",
            id = "960690",
        },
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_15()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2108927742687860263",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_StationWork|1022927887");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 28,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_4()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2107287910354015636",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = "2107534869197228553",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4007268925",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_NoDisable_13()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2107287910354015636",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
    };
    return params;
end;

-- Empty out anchor definitions
function export:Success()
    
end;
function export:Out()
    
end;
function export:WorkStarted()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Success" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="WorkStarted" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
