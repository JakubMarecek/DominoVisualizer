LUACT�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_005/key02_005_b10.domino
-- User graph: _D3_POI_01_AlarmScript
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
        cboxRes:RegisterBox("Domino/System/AI/AlarmListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B10._D3_POI_01_AlarmScript.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/AlarmListener.lua")] = {
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
                name = "AlarmActivated",
                delayed = true,
            },
            [1] = {
                name = "AlarmDeactivated",
                delayed = true,
            },
            [2] = {
                name = "AlarmDestroyed",
                delayed = true,
            },
            [3] = {
                name = "AlarmDisabled",
                delayed = true,
            },
            [4] = {
                name = "Disabled",
                delayed = false,
            },
            [5] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "AlarmGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Alarm",
                type = "entity",
            },
            [1] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
    self._name = "_D3_POI_01_AlarmScript";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript";
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|69225034");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_6_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|232555840");
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
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|252950467");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_15_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_15_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_15_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_15_Success,
    });
    self.box_GroupSizeListener_v5_7 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|512352016");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_7_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_7_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_7_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_7_MemberRemoved,
    });
    self.box_AlarmListener_1 = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self.box_AlarmListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlarmListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1219754140");
    l0:SetConnections({
        -- AlarmActivated,
        [0] = self.f_box_AlarmListener_1_AlarmActivated,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1322653902");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1394268253");
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
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1787694966");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_SpawnAI_2 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1834281542");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_2_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_2_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_2_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_2_Success,
    });
    self.box_NavLinkModifier_10 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1936175259");
    l0:SetConnections({
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|2050574010");
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
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_AlarmListener_1();
    l0 = self.box_AlarmListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|615175592", "615175592", "_D3_POI_01_AlarmScript", "In", "box_AlarmListener_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_7();
    l0 = self.box_OnceOnly_v3_6;
    l1 = self.box_GroupSizeListener_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|175112416", "175112416", "_D3_POI_01_AlarmScript", "box_OnceOnly_v3_6.Out", "box_GroupSizeListener_v5_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_8();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|406859599", "406859599", "_D3_POI_01_AlarmScript", "box_MultipleOR_11.Out", "box_Compare_Integers_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_SpawnAI_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|316816976", "316816976", "_D3_POI_01_AlarmScript", "box_SpawnAI_15.Fail", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_15;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|2039054056", "2039054056", "_D3_POI_01_AlarmScript", "box_SpawnAI_15.Out", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_15_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_14();
    l0 = self.box_SpawnAI_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|604998916", "604998916", "_D3_POI_01_AlarmScript", "box_SpawnAI_15.Spawned", "box_Simple_Node_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_15;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1816279364", "1816279364", "_D3_POI_01_AlarmScript", "box_SpawnAI_15.Success", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_7();
    l0 = self.box_GroupSizeListener_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1040135069", "1040135069", "_D3_POI_01_AlarmScript", "box_OutputOrder_v2_9.Out", "box_GroupSizeListener_v5_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|2049646942", "2049646942", "_D3_POI_01_AlarmScript", "box_OutputOrder_v2_9.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_12();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1921904791", "1921904791", "_D3_POI_01_AlarmScript", "box_OutputOrder_v2_9.Out", "box_Compare_Integers_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_7_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_7;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1003083768", "1003083768", "_D3_POI_01_AlarmScript", "box_GroupSizeListener_v5_7.Enabled", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_7_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_7;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|2134284341", "2134284341", "_D3_POI_01_AlarmScript", "box_GroupSizeListener_v5_7.MemberRemoved", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_10();
    l0 = self.box_NavLinkModifier_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1491562986", "1491562986", "_D3_POI_01_AlarmScript", "box_Simple_Node_4.Out", "box_NavLinkModifier_10.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_AlarmListener_1_AlarmActivated()
    local l0, l1;
    l0 = self.box_AlarmListener_1;
    l1 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1241601949", "1241601949", "_D3_POI_01_AlarmScript", "box_AlarmListener_1.AlarmActivated", "box_OnceOnly_v3_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_Delay_v5_17;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|852417280", "852417280", "_D3_POI_01_AlarmScript", "box_Delay_v5_17.TimeElapsed", "box_SpawnAI_15.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_12_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1899105794", "1899105794", "_D3_POI_01_AlarmScript", "box_Compare_Integers_12.A_le_B", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_8_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1683426571", "1683426571", "_D3_POI_01_AlarmScript", "box_Compare_Integers_8.A_le_B", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_2();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_SpawnAI_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1646907815", "1646907815", "_D3_POI_01_AlarmScript", "box_Delay_v5_18.TimeElapsed", "box_SpawnAI_2.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_2_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_3();
    l0 = self.box_SpawnAI_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1137510066", "1137510066", "_D3_POI_01_AlarmScript", "box_SpawnAI_2.Fail", "box_Simple_Node_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_2_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1699202119", "1699202119", "_D3_POI_01_AlarmScript", "box_SpawnAI_2.Out", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_2_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_4();
    l0 = self.box_SpawnAI_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1411939947", "1411939947", "_D3_POI_01_AlarmScript", "box_SpawnAI_2.Spawned", "box_Simple_Node_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_2_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1194067201", "1194067201", "_D3_POI_01_AlarmScript", "box_SpawnAI_2.Success", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    DrawTextToScreen("Comment: Spawning Reinforcements", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: Spawning Reinforcements");
    params = {
        -- EntitySpawner,
        [0] = "2102020785790083679",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|269607141");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_7()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FCE42164",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_4()
    local params, l0;
    DrawTextToScreen("Comment: Reinforcements Spawned", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Reinforcements Spawned");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|852585936");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AlarmListener_1()
    local params;
    params = {
        -- AlarmGroup,
        [0] = "#2C6EA9EC",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1735691290");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_12_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_7;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1762145093");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_8_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_7;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    DrawTextToScreen("Comment: Fail on Reinforcement Spawn", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Fail on Reinforcement Spawn");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1778956785");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_3()
    local params, l0;
    DrawTextToScreen("Comment: Fail on Reinforcement Spawn", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Fail on Reinforcement Spawn");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1832154237");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_2()
    local params;
    DrawTextToScreen("Comment: Spawning Reinforcements", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: Spawning Reinforcements");
    params = {
        -- EntitySpawner,
        [0] = "2102019260099335496",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_14()
    local params, l0;
    DrawTextToScreen("Comment: Reinforcements Spawned", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Reinforcements Spawned");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@_D3_POI_01_AlarmScript|1854470693");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_10()
    local params;
    params = {
        -- Entity,
        [0] = "2102032639488706185",
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
