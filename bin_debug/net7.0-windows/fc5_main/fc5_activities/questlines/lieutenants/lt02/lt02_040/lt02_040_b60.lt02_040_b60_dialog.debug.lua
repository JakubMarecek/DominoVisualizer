LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_040/lt02_040_b60.domino
-- User graph: LT02_040_B60_Dialog
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Line01" Type="Nomad|Sound" />
    <DataIn Name="eTarget" Type="Nomad|entity{}" />
    <DataIn Name="Line02" Type="Nomad|Sound" />
    <DataIn Name="Line03" Type="Nomad|Sound" />
    <DataIn Name="Line04" Type="Nomad|Sound" />
    <DataIn Name="Line05" Type="Nomad|Sound" />
    <DataIn Name="Line06" Type="Nomad|Sound" />
    <DataIn Name="Line07" Type="Nomad|Sound" />
    <DataIn Name="Line08" Type="Nomad|Sound" />
    <DataIn Name="Line09" Type="Nomad|Sound" />
    <DataIn Name="Line10" Type="Nomad|Sound" />
    <DataIn Name="iNumLines" Type="Core|int" />
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
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/SetSound_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1219233337.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B60.LT02_040_B60_Dialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PlayLine",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "LinePlayed",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eTarget",
                type = "entity",
            },
            [1] = {
                name = "iNumLines",
                type = "int",
            },
            [2] = {
                name = "Line01",
                type = "Sound",
            },
            [3] = {
                name = "Line02",
                type = "Sound",
            },
            [4] = {
                name = "Line03",
                type = "Sound",
            },
            [5] = {
                name = "Line04",
                type = "Sound",
            },
            [6] = {
                name = "Line05",
                type = "Sound",
            },
            [7] = {
                name = "Line06",
                type = "Sound",
            },
            [8] = {
                name = "Line07",
                type = "Sound",
            },
            [9] = {
                name = "Line08",
                type = "Sound",
            },
            [10] = {
                name = "Line09",
                type = "Sound",
            },
            [11] = {
                name = "Line10",
                type = "Sound",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/SetSound_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromSound",
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
                name = "SoundID",
                type = "Sound",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "Sound",
            },
        },
        dataOutCount = 1,
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
    self._name = "LT02_040_B60_Dialog";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog";
    self.LinePlayed = DummyFunction;
    self.iCurrentLine = 1;
    self.sCurrentSound = "1219233337";
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|748959409");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_2_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_2_FinishedInterrupted,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|921322850");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1243917231");
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
    self.box_Switch_3 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1645520553");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 10,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_3_None,
        -- Out,
        [1] = self.f_box_Switch_3_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_3_Output_0,
                [1] = self.f_box_Switch_3_Output_1,
                [2] = self.f_box_Switch_3_Output_2,
                [3] = self.f_box_Switch_3_Output_3,
                [4] = self.f_box_Switch_3_Output_4,
                [5] = self.f_box_Switch_3_Output_5,
                [6] = self.f_box_Switch_3_Output_6,
                [7] = self.f_box_Switch_3_Output_7,
                [8] = self.f_box_Switch_3_Output_8,
                [9] = self.f_box_Switch_3_Output_9,
            },
            count = 10,
        },
    });
end;

function export:PlayLine()
    local params, l0;
    params = self:OnEnter_box_Switch_3();
    l0 = self.box_Switch_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1147143764", "1147143764", "LT02_040_B60_Dialog", "PlayLine", "box_Switch_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetSound_v2_15_Out()
    local l0;
    self:OnExit_box_SetSound_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|276047947", "276047947", "LT02_040_B60_Dialog", "box_SetSound_v2_15.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_SetSound_v2_12_Out()
    local l0;
    self:OnExit_box_SetSound_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1605483641", "1605483641", "LT02_040_B60_Dialog", "box_SetSound_v2_12.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_PlayDialog_v6_2_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|2014445159", "2014445159", "LT02_040_B60_Dialog", "box_PlayDialog_v6_2.Finished", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_2_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1905824832", "1905824832", "LT02_040_B60_Dialog", "box_PlayDialog_v6_2.FinishedInterrupted", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetSound_v2_8_Out()
    local l0;
    self:OnExit_box_SetSound_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|325951741", "325951741", "LT02_040_B60_Dialog", "box_SetSound_v2_8.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_1();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|696520122", "696520122", "LT02_040_B60_Dialog", "box_MultipleOR_16.Out", "box_IsValueNil_v3_1.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_4_Out()
    local l0;
    self:OnExit_box_SetSound_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|198055049", "198055049", "LT02_040_B60_Dialog", "box_SetSound_v2_4.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_5_Out()
    local l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1829742465", "1829742465", "LT02_040_B60_Dialog", "box_MultipleOR_5.Out", "LinePlayed", l0:GetLuaBox(), self);
    self:LinePlayed();
end;

function export:f_box_SetSound_v2_13_Out()
    local l0;
    self:OnExit_box_SetSound_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1555847110", "1555847110", "LT02_040_B60_Dialog", "box_SetSound_v2_13.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_SetSound_v2_9_Out()
    local l0;
    self:OnExit_box_SetSound_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|2058245100", "2058245100", "LT02_040_B60_Dialog", "box_SetSound_v2_9.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Compare_Integers_17_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_3();
    l0 = self.box_Switch_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1395059156", "1395059156", "LT02_040_B60_Dialog", "box_Compare_Integers_17.A_ge_B", "box_Switch_3.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_SetSound_v2_7_Out()
    local l0;
    self:OnExit_box_SetSound_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1846716998", "1846716998", "LT02_040_B60_Dialog", "box_SetSound_v2_7.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_3_None()
    self:OnExit_box_Switch_3_None();
end;

function export:f_box_Switch_3_Out()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Out();
    params = self:OnEnter_box_Compare_Integers_17();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1194663789", "1194663789", "LT02_040_B60_Dialog", "box_Switch_3.Out", "box_Compare_Integers_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_0()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_4();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1605298350", "1605298350", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_4.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_1()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_7();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1583163388", "1583163388", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_7.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_2()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_8();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|509841847", "509841847", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_8.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_3()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_9();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1005939894", "1005939894", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_9.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_4()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_10();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1082881904", "1082881904", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_10.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_5()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_11();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|307329974", "307329974", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_11.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_6()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_12();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1327889800", "1327889800", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_12.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_7()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_13();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1760169450", "1760169450", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_13.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_8()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_14();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1128285423", "1128285423", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_14.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_9()
    local params, l0, l1;
    self:OnExit_box_Switch_3_Output();
    params = self:OnEnter_box_SetSound_v2_15();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|670549537", "670549537", "LT02_040_B60_Dialog", "box_Switch_3.Output", "box_SetSound_v2_15.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_11_Out()
    local l0;
    self:OnExit_box_SetSound_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1362542676", "1362542676", "LT02_040_B60_Dialog", "box_SetSound_v2_11.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_SetSound_v2_14_Out()
    local l0;
    self:OnExit_box_SetSound_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|2089466753", "2089466753", "LT02_040_B60_Dialog", "box_SetSound_v2_14.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_SetSound_v2_10_Out()
    local l0;
    self:OnExit_box_SetSound_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|631652850", "631652850", "LT02_040_B60_Dialog", "box_SetSound_v2_10.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_IsValueNil_v3_1_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|660007204", "660007204", "LT02_040_B60_Dialog", "box_IsValueNil_v3_1.No", "box_PlayDialog_v6_2.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:OnEnter_box_SetSound_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|377062720");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_15_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line10,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|384765599");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_12_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line07,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = self.eTarget,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = self.sCurrentSound,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|786241083");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_8_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line03,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|936159990");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_4_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line01,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1277427949");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_13_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line08,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1346183162");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_9_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line04,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1508026057");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_17_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iCurrentLine,
        -- B,
        [1] = self.iNumLines,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1634782149");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_7_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line02,
    };
    return params;
end;

function export:OnEnter_box_Switch_3()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1753550884");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_11_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line06,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1768614815");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_14_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line09,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|1831859113");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_10_Out,
    });
    params = {
        -- SoundID,
        [0] = self.Line05,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60_Dialog|2031988496");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_1_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget,
    };
    return params;
end;

function export:OnExit_box_SetSound_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_None()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Out()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_3_Output()
    local l0;
    l0 = self.box_Switch_3;
    self.iCurrentLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sCurrentSound = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:LinePlayed()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="PlayLine" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="LinePlayed" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eTarget" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="iNumLines" AnchorDynType="0" DataTypeID="int" />
		<DataIn Name="Line01" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line02" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line03" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line04" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line05" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line06" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line07" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line08" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line09" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Line10" AnchorDynType="0" DataTypeID="Sound" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
