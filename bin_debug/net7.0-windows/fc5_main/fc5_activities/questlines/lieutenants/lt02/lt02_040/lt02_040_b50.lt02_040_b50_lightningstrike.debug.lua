LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_040/lt02_040_b50.domino
-- User graph: LT02_040_B50_LightningStrike
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eTarget" Type="Nomad|entity{}" />
    <DataIn Name="eLight" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[947102992.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Spawn",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eLight",
                type = "entity",
            },
            [1] = {
                name = "eTarget",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "dynamicLightId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/RandomInteger_v2.lua")] = {
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
                type = "int",
            },
            [1] = {
                name = "Min",
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
    self._name = "LT02_040_B50_LightningStrike";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike";
    self.Done = DummyFunction;
    self.iMinStrike = 1;
    self.iMaxStrike = 3;
    self.iNumStrikes = 0;
    self.iCurrentStrike = 0;
    self.fMinDelay = 0.1;
    self.fMaxDelay = 0.4;
    self.fDelay = 0;
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1080527104");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1837325720");
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
    self.box_SoundModifier_v2_14 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1971561711");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_14_Started,
    });
end;

function export:Spawn()
    local params, l0;
    params = self:OnEnter_box_SetInteger_v2_5();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1131467398", "1131467398", "LT02_040_B50_LightningStrike", "Spawn", "box_SetInteger_v2_5.FromInteger", self, l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_3_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|2007846548", "2007846548", "LT02_040_B50_LightningStrike", "box_RandomFloat_v2_3.Out", "box_Delay_v5_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|953342864", "953342864", "LT02_040_B50_LightningStrike", "box_Simple_Node_7.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_2_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_6();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|485020840", "485020840", "LT02_040_B50_LightningStrike", "box_Compare_Integers_2.A_ge_B", "box_DynamicLightModifier_6.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_2_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_3();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|588252305", "588252305", "LT02_040_B50_LightningStrike", "box_Compare_Integers_2.A_lt_B", "box_RandomFloat_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|945460941", "945460941", "LT02_040_B50_LightningStrike", "box_Simple_Node_9.Out", "box_Simple_Node_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomInteger_v2_1_Out()
    local params, l0;
    self:OnExit_box_RandomInteger_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|89917435", "89917435", "LT02_040_B50_LightningStrike", "box_RandomInteger_v2_1.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_8_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|605363420", "605363420", "LT02_040_B50_LightningStrike", "box_IntegerArithmetics_v2_8.Out", "box_Simple_Node_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_13();
    l0 = self.box_Delay_v5_4;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|376695945", "376695945", "LT02_040_B50_LightningStrike", "box_Delay_v5_4.TimeElapsed", "box_ParticleSystem_v3_13.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomInteger_v2_1();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1096012733", "1096012733", "LT02_040_B50_LightningStrike", "box_SetInteger_v2_5.Out", "box_RandomInteger_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_13_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_14();
    l0 = self.box_SoundModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1305623889", "1305623889", "LT02_040_B50_LightningStrike", "box_ParticleSystem_v3_13.Started", "box_SoundModifier_v2_14.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_13_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_13();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|308063637", "308063637", "LT02_040_B50_LightningStrike", "box_ParticleSystem_v3_13.Stopped", "box_ParticleSystem_v3_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|370095589", "370095589", "LT02_040_B50_LightningStrike", "box_OutputOrder_v2_12.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|644525470", "644525470", "LT02_040_B50_LightningStrike", "box_OutputOrder_v2_12.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1264722353", "1264722353", "LT02_040_B50_LightningStrike", "box_OutputOrder_v2_12.Out", "box_Print_v2_11.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_6();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|481055091", "481055091", "LT02_040_B50_LightningStrike", "box_Simple_Node_17.Out", "box_DynamicLightModifier_6.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_2();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1520116747", "1520116747", "LT02_040_B50_LightningStrike", "box_MultipleOR_10.Out", "box_Compare_Integers_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_8();
    l0 = self.box_SoundModifier_v2_14;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1686598875", "1686598875", "LT02_040_B50_LightningStrike", "box_SoundModifier_v2_14.Started", "box_IntegerArithmetics_v2_8.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_6_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|152014252", "152014252", "LT02_040_B50_LightningStrike", "box_DynamicLightModifier_6.Disabled", "Done", clone:GetLuaBox(), self);
    self:Done();
end;

function export:OnEnter_box_RandomFloat_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|155591429");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_3_Out,
    });
    params = {
        -- Max,
        [0] = self.fMaxDelay,
        -- Min,
        [1] = self.fMinDelay,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|337768008");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|662222431");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_2_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_2_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iCurrentStrike,
        -- B,
        [1] = self.iNumStrikes,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|669181817");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomInteger_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomInteger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|687471778");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomInteger_v2_1_Out,
    });
    params = {
        -- Max,
        [0] = self.iMaxStrike,
        -- Min,
        [1] = self.iMinStrike,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|696754559");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_8_Out,
    });
    params = {
        -- A,
        [0] = self.iCurrentStrike,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fDelay,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1248097085");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_5_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1320340424");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_13_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_13_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.eTarget,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1425047097");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1668103745");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|1911146715");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iNumStrikes,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "# Strikes: ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_14()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "947102992",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_LightningStrike|2017186095");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_6_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.eLight,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.fDelay = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomInteger_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    self.iNumStrikes = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iCurrentStrike = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iCurrentStrike = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Done()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Spawn" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Done" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eLight" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eTarget" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
