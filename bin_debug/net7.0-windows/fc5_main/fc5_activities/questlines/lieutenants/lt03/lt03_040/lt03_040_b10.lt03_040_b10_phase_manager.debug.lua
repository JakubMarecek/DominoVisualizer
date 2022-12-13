LUAC8 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_040/lt03_040_b10.domino
-- User graph: LT03_040_B10_Phase_Manager
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
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.LT03_040_B10 = nil;
    Globals.LT03_040_B10 = {
        eRealFaith = nil,
        fCurrentHealth = 100,
        eRealFaithDialogPoint = nil,
        RealFaith_2 = false,
        RealFaith_1 = false,
        RealFaith_3 = false,
        RealFaith_4 = false,
        RealFaith_5 = false,
        RealFaith_6 = false,
        RealFaith_7 = false,
        ePlayerAttacking = nil,
        iFaithProgress = 100,
        iFaithNumber = 3,
        Faith_Invisible = {
        },
        Faith_Visible = {
        },
        fAngelWaveIntervale = 15,
        bFaithHintTimer = 0.1,
        fBuildUp_Timer = 21,
        fMortarFrequency = 17,
        iNbrMortarPerAttack = 2,
        iFaithTeleportNbr = 2,
        bFaithTeleport = false,
        Faith_Circle = {
        },
        Faith_Random = {
        },
        fProjectileSpeed = 15,
        fTeleportTimer = 13.5,
        bActivateMarker = false,
        RealFaith_8 = false,
        RealFaith_9 = false,
        RealFaith_10 = false,
        eFaithTeleport_FX = "2104423650397529717",
        eLocalPlayer = nil,
        fThresholdHealth = 85,
        iAngelNbr = 0,
        RealFaith_Start = true,
        fTeleportDuration = 2,
        ePlayer1 = nil,
        ePlayer2 = nil,
        PlayersToTarget = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Phase_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out_Buildup",
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_040_B10_Phase_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager";
    self.Out_Buildup = DummyFunction;
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|268831707");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_IndexList_v2_25 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|325700735");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_25_Output_0,
                [1] = self.f_box_IndexList_v2_25_Output_1,
                [2] = self.f_box_IndexList_v2_25_Output_2,
                [3] = self.f_box_IndexList_v2_25_Output_3,
            },
            count = 4,
        },
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1856990284");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|863627492", "863627492", "LT03_040_B10_Phase_Manager", "In", "box_Delay_v5_26.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetInteger_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1776501328", "1776501328", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_49.Out", "box_SetFloat_v2_1.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_7_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_18();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1878958700", "1878958700", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_7.Out", "box_SetFloat_v2_18.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_31_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_21();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1060561449", "1060561449", "LT03_040_B10_Phase_Manager", "box_Compare_Boolean_31.A_is_False", "box_IntegerArithmetics_v2_21.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_22_Out()
    local l0;
    self:OnExit_box_SetFloat_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|746694039", "746694039", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_22.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetFloat_v2_47_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_47_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_55();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1307874663", "1307874663", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_47.Out", "box_SetFloat_v2_55.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_18_Out()
    local l0;
    self:OnExit_box_SetFloat_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1591019405", "1591019405", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_18.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_31();
    l0 = self.box_Delay_v5_26;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|34641395", "34641395", "LT03_040_B10_Phase_Manager", "box_Delay_v5_26.TimeElapsed", "box_Compare_Boolean_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_27_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1130712475", "1130712475", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_27.Out", "box_SetInteger_v2_10.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_25_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_48();
    l0 = self.box_IndexList_v2_25;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1354343563", "1354343563", "LT03_040_B10_Phase_Manager", "box_IndexList_v2_25.Output", "box_SetInteger_v2_48.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_25_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_14();
    l0 = self.box_IndexList_v2_25;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|480324935", "480324935", "LT03_040_B10_Phase_Manager", "box_IndexList_v2_25.Output", "box_SetInteger_v2_14.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_25_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_27();
    l0 = self.box_IndexList_v2_25;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|660709880", "660709880", "LT03_040_B10_Phase_Manager", "box_IndexList_v2_25.Output", "box_SetInteger_v2_27.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_25_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_2();
    l0 = self.box_IndexList_v2_25;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|773179589", "773179589", "LT03_040_B10_Phase_Manager", "box_IndexList_v2_25.Output", "box_SetInteger_v2_2.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_21_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_25();
    l0 = self.box_IndexList_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1704608912", "1704608912", "LT03_040_B10_Phase_Manager", "box_IntegerArithmetics_v2_21.Out", "box_IndexList_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetFloat_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_3();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1839629769", "1839629769", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_5.Out", "box_SetFloat_v2_3.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_36_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_52();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|2012853489", "2012853489", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_36.Out", "box_SetFloat_v2_52.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_20_Out()
    local l0;
    self:OnExit_box_SetFloat_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|586826914", "586826914", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_20.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetInteger_v2_48_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_48_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_44();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1904071255", "1904071255", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_48.Out", "box_SetInteger_v2_44.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_32_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_20();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|261079372", "261079372", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_32.Out", "box_SetFloat_v2_20.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_23_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_33();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|2025425398", "2025425398", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_23.Out", "box_SetFloat_v2_33.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_29_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_35();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1769477493", "1769477493", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_29.Out", "box_SetFloat_v2_35.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_45_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_46();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1286548514", "1286548514", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_45.Out", "box_SetFloat_v2_46.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_17_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_7();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|381012193", "381012193", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_17.Out", "box_SetFloat_v2_7.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_13();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1032074719", "1032074719", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_10.Out", "box_SetFloat_v2_13.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_54_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_17();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1022206978", "1022206978", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_54.Out", "box_SetInteger_v2_17.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_15_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_29();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|23614789", "23614789", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_15.Out", "box_SetFloat_v2_29.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_9_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_19();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1580276979", "1580276979", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_9.Out", "box_SetFloat_v2_19.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_30();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1257761970", "1257761970", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_2.Out", "box_SetInteger_v2_30.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_30_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_5();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1932132554", "1932132554", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_30.Out", "box_SetFloat_v2_5.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_43_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_45();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1607695747", "1607695747", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_43.Out", "box_SetFloat_v2_45.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_49();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|991608202", "991608202", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_55.Out", "box_SetInteger_v2_49.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_13_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1239921122", "1239921122", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_13.Out", "box_SetFloat_v2_9.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_52_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_6();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1621711949", "1621711949", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_52.Out", "box_SetInteger_v2_6.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_1_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_16();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|135707809", "135707809", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_1.Out", "box_SetFloat_v2_16.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_44_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_43();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1606401976", "1606401976", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_44.Out", "box_SetFloat_v2_43.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_6_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_32();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1723353290", "1723353290", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_6.Out", "box_SetFloat_v2_32.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|934818296", "934818296", "LT03_040_B10_Phase_Manager", "box_SetActivityObjectiveProgress_v2_8.Out", "Out_Buildup", clone:GetLuaBox(), self);
    self:Out_Buildup();
end;

function export:f_box_SetFloat_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_53();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|427521330", "427521330", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_37.Out", "box_SetFloat_v2_53.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_12_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1196314362", "1196314362", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_12.Out", "box_SetFloat_v2_4.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_24_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1819519213", "1819519213", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_24.Out", "box_SetFloat_v2_37.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_16_Out()
    local l0;
    self:OnExit_box_SetFloat_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|883182658", "883182658", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_16.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_12();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1137955100", "1137955100", "LT03_040_B10_Phase_Manager", "box_SetInteger_v2_14.Out", "box_SetInteger_v2_12.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_35_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_54();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1300951843", "1300951843", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_35.Out", "box_SetFloat_v2_54.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_4_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1000098614", "1000098614", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_4.Out", "box_SetFloat_v2_15.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_8();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1681838381", "1681838381", "LT03_040_B10_Phase_Manager", "box_MultipleOR_11.Out", "box_SetActivityObjectiveProgress_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_19_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_36();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|641277731", "641277731", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_19.Out", "box_SetFloat_v2_36.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_33_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_22();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1531235720", "1531235720", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_33.Out", "box_SetFloat_v2_22.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_3_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_24();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1950998746", "1950998746", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_3.Out", "box_SetFloat_v2_24.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_53_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1263417238", "1263417238", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_53.Out", "box_SetInteger_v2_23.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_46_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_47();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|272249959", "272249959", "LT03_040_B10_Phase_Manager", "box_SetFloat_v2_46.Out", "box_SetFloat_v2_47.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetInteger_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1962655");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_49_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|112964953");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_7_Out,
    });
    params = {
        -- Float,
        [0] = 90,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|116981482");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_31_A_is_False,
    });
    params = {
        -- A,
        [0] = Globals.LT03_040_B10.bFaithTeleport,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|144995214");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_22_Out,
    });
    params = {
        -- Float,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|194807888");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_47_Out,
    });
    params = {
        -- Float,
        [0] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|257298030");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_18_Out,
    });
    params = {
        -- Float,
        [0] = 1.25,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|271776470");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_27_Out,
    });
    params = {
        -- Integer,
        [1] = 50,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_25()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|365973447");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_21_Out,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|390700912");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_5_Out,
    });
    params = {
        -- Float,
        [0] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|496501446");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_36_Out,
    });
    params = {
        -- Float,
        [0] = 17,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|541740751");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_20_Out,
    });
    params = {
        -- Float,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|771018056");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_48_Out,
    });
    params = {
        -- Integer,
        [1] = 100,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|795668983");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_32_Out,
    });
    params = {
        -- Float,
        [0] = 93,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|985578705");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_23_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|988210893");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_29_Out,
    });
    params = {
        -- Float,
        [0] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1029668861");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_45_Out,
    });
    params = {
        -- Float,
        [0] = 18,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1064046006");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_17_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1091665304");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_10_Out,
    });
    params = {
        -- Integer,
        [1] = 9,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1198017274");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_54_Out,
    });
    params = {
        -- Float,
        [0] = 13.5,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1289123718");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_15_Out,
    });
    params = {
        -- Float,
        [0] = 13.5,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1353422619");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_9_Out,
    });
    params = {
        -- Float,
        [0] = 19,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1357494498");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_2_Out,
    });
    params = {
        -- Integer,
        [1] = 25,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1372462009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_30_Out,
    });
    params = {
        -- Integer,
        [1] = 9,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1407788771");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_43_Out,
    });
    params = {
        -- Float,
        [0] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1442874275");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_55_Out,
    });
    params = {
        -- Float,
        [0] = 13.5,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1445534150");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_13_Out,
    });
    params = {
        -- Float,
        [0] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1449210833");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_52_Out,
    });
    params = {
        -- Float,
        [0] = 8.5,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1455684835");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_1_Out,
    });
    params = {
        -- Float,
        [0] = 90,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1513636077");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_44_Out,
    });
    params = {
        -- Integer,
        [1] = 9,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1519384202");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_6_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1551796817");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_8_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
        -- Progress,
        [1] = Globals.LT03_040_B10.iFaithProgress,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1626225914");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_37_Out,
    });
    params = {
        -- Float,
        [0] = 17,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1652859153");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_12_Out,
    });
    params = {
        -- Integer,
        [1] = 9,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1658764456");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_24_Out,
    });
    params = {
        -- Float,
        [0] = 15,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1669759630");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_16_Out,
    });
    params = {
        -- Float,
        [0] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1706163335");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_14_Out,
    });
    params = {
        -- Integer,
        [1] = 75,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1834388125");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_35_Out,
    });
    params = {
        -- Float,
        [0] = 15,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1842195416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_4_Out,
    });
    params = {
        -- Float,
        [0] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|1857038938");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_19_Out,
    });
    params = {
        -- Float,
        [0] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|2019477557");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_33_Out,
    });
    params = {
        -- Float,
        [0] = 100,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|2030702957");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_3_Out,
    });
    params = {
        -- Float,
        [0] = 16,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|2127243315");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_53_Out,
    });
    params = {
        -- Float,
        [0] = 4,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Phase_Manager|2132000263");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_46_Out,
    });
    params = {
        -- Float,
        [0] = 10,
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithTeleportNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fThresholdHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fTeleportDuration = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fProjectileSpeed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fTeleportDuration = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithProgress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    PersistentGlobals.LT03_040_B10.iPhase = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.bFaithHintTimer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fProjectileSpeed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fTeleportDuration = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithProgress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fThresholdHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithTeleportNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fAngelWaveIntervale = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fBuildUp_Timer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithTeleportNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fTeleportTimer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fBuildUp_Timer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fBuildUp_Timer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithProgress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.bFaithHintTimer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fTeleportTimer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.bFaithHintTimer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fTeleportTimer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fThresholdHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithTeleportNbr = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fProjectileSpeed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fAngelWaveIntervale = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fTeleportDuration = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.LT03_040_B10.iFaithProgress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fProjectileSpeed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.bFaithHintTimer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fAngelWaveIntervale = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fThresholdHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fBuildUp_Timer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fTeleportTimer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    Globals.LT03_040_B10.fAngelWaveIntervale = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out_Buildup()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out_Buildup" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
